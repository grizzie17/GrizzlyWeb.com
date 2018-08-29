<%
'---------------------------------------------------------------------
'            Copyright 1986 .. 2008 Bear Consulting Group
'                          All Rights Reserved
'
'    This software-file/document, in whole or in part, including	
'    the structures and the procedures described herein, may not	
'    be provided or otherwise made available without prior written
'    authorization.  In case of authorized or unauthorized
'    publication or duplication, copyright is claimed.
'---------------------------------------------------------------------

OPTION EXPLICIT

%>
<!--#include file="scripts\config.asp"-->
<!--#include file="scripts\mailserver.asp"-->
<!--#include file="scripts\mailsend.asp"-->
<%



DIM bDEBUG
DIM bEMAIL
DIM bReferalsOnly
DIM bLOCAL
bDEBUG = FALSE
bEMAIL = TRUE
bLOCAL = FALSE
bReferalsOnly = TRUE


CONST kIgnoredGlobPhrase = -3
CONST kIgnoredPhrases = -2
CONST kIgnoredTLD = -1
CONST kGood = 0
CONST kMultiSubmit = 1
CONST kEmailRejectedUser = 2
CONST kEmailRejectedDomain = 3
CONST kEmailBadAddress = 4
CONST kEmailUnreachable = 5
CONST kSiteDomain = 6
CONST kAdult = 7
CONST kGambling = 8
CONST kBadComments = 9

CONST kFieldDate = 0
CONST kFieldStatus = 1
CONST kFieldRefer = 2
CONST kFieldURL = 3
CONST kFieldEMail = 4
CONST kFieldComments = 5


DIM	oFSO

DIM sIgnoreTLDs
sIgnoreTLDs = ".ar.as.at.au.be.bi.br.ch.cl.cn.cx.cz.de.dk.es.fr.gr.gt.hk.hr.hu.il.in.it.jp.li.mx.my." _
		&	".nl.no.nu.nz.ph.pl.pt.ru.se.sg.st.tr.tw.uk.ve.za."

DIM aSpamEmailDomain
aSpamEmailDomain = ARRAY( _
		"@aaaooolll", _
		"tyenet.com", _
		"@art-wise.com", _
		"@pokeyoureyeout.com", _
		"@iindiawatch.com", _
		"@msbsoft.com", _
		"@mostsignificantbits.com", _
		"@xoom.com", _
		"@internetadvancement.com", _
		"@spam" _
		)

DIM aSpamEmailUser
aSpamEmailUser = ARRAY( _
		"nmgsales@smartbot.net", _
		"trash444@juno.com", _
		"beanie@chat.tyenet.com", _
		"beanie@tyenet.com", _
		"superspammer@", _
		"djcheeks@usa.net", _
		"submit@comsite.de", _
		"linkmaster@sicilian.net", _
		"spam@" _
		)

DIM aSpamSiteDomain
aSpamSiteDomain = ARRAY( _
		"1-2-3-connect.de", _
		"1-2-3-speed.de", _
		"dataconnection.com", _
		"freepage.de", _
		"terra.es", _
		"wanadoo.es", _
		"ferien.li", _
		"cheapesthotelsworldwide.net", _
		"4greatbuys.com", _
		"cortech.com", _
		".fila.org", _
		"findattorneycentral.com", _
		"geo-team.com", _
		"hotyellow98.com", _
		"jmgroup.net", _
		"marsgroup.net", _
		"ozwired.com", _
		"shopforbook.com", _
		"vista1.com", _
		"xoom.com", _
		".itctv.com" _
		)

DIM aBadEmailUser
aBadEmailUser = ARRAY( _
		"1234@", _
		"bigsubmits@", _
		"delete_2000@", _
		"deletethis@", _
		"dontsendmeany@", _
		"fake@", _
		"fakeuser@", _
		"nospam", _
		"junk@", _
		"junkstuff@", _
		"no@", _
		"noname@", _
		"none@", _
		"noone@", _
		"noreplies@", _
		"noreply@", _
		"notavailable@", _
		"null@", _
		"searchenginetest@", _
		"spam@", _
		"spambox", _
		"superspammer@", _
		"@junk.com", _
		"@nospam", _
		"@null", _
		"@spam.com", _
		"----------", _
		"@101regsiter.com", _
		"@adultspace", _
		"@crsubmit.com", _
		"@datconnection.com", _
		"@fred.com", _
		"@hotyellow98.com", _
		"@makemorenow.com", _
		"@mostsignificantbits.com", _
		"@msbsoft.com", _
		"@msgto.com", _
		"@o-tay.com", _
		"@opportunityone.com", _
		"@pokeyoureyeout.com", _
		"@sacoecuecao.com", _
		"@sex-ultrahrdcore-porn.com", _
		"@triad.rr.com", _
		"@virgin.net", _
		"@xoom.com", _
		"@xoom.mail.com", _
		"etoydeb@", _
		"iwannabefamous@", _
		"lawyerss@", _
		"submitwolf@", _
		"jjmodels.com", _
		"tyenet.com", _
		"sdfsdf", _
		"kkkk", _
		"--spreads@hotmail.com", _
		"@@@@@" _
		)

DIM aBadEmailAddress
aBadEmailAddress = ARRAY( _
		"cant@say.com", _
		"dont@bug.me", _
		"pac@man.com", _
		"no@mail.com", _
		"no@way.com", _
		"----------", _
		"a_girl_voyeur@yahoo.com", _
		"abbey@abbeycarpet.com", _
		"ace@ace.net", _
		"addhund@hotmail.com", _
		"adltatrium@aol.com", _
		"artwiseint@worldnet.att.net", _
		"azzemail@yahoo.com", _
		"banners@fastservice.com", _
		"birofprey@usa.net", _
		"bluecyber_books@lycosmail.com", _
		"bobman@aol.com", _
		"bone@programmer.com", _
		"bone@programmer.net", _
		"castunow@aol.com", _
		"cmdyar@hotmail.com", _
		"confirmation20@hotmail.com", _
		"cooltvproducts@hotmail.com", _
		"cork@zimms.com", _
		"cprsubmit@hotmail.com", _
		"dan1871@yahoo.com", _
		"dan_farrow@yahoo.com", _
		"danmchugh@email.com", _
		"diamondmortgage@hotmail.com", _
		"diet@hotmail.com", _
		"dima@kmi.com.ua", _
		"eight-to-infinity@rocketmail.com", _
		"engines1723@yahoo.com", _
		"free@intermont.de", _
		"freeservice@gmx.net", _
		"ggordond@aol.com", _
		"h2000h2000@hotmail.com", _
		"hawkdesign@aol.com", _
		"hund@europe.com", _
		"info@hotmal.com", _
		"irwin@rommel.freeserve.co.uk", _
		"isphollywood@excite.com", _
		"j.roehl@dkvberlin.de", _
		"jamsheddcs@yahoo.com", _
		"Jim121499@hotmail.com", _
		"jj@jj.net", _
		"kastwell2@netzero.com", _
		"linkmaster@sicilian.net", _
		"loanlady@usa.net", _
		"metabolifeorders@hotmail.com", _
		"magoo@excite.com", _
		"nmgsales@smartbot.net", _
		"onlineadvert@yahoo.com", _
		"owencusa@aol.com", _
		"owenusa@aol.com", _
		"paul@magrs.fsnet.co.uk", _
		"promotions@ionus.com", _
		"rainbowexpressions@excite.com", _
		"replicawatches4u@hotmail.com", _
		"search@crist.com", _
		"somuch0@hotmail.com", _
		"sportsfax@hotmail.com", _
		"ssfree4u@themail.com", _
		"submit@comsite.de", _
		"submit@cyber3dnet.com", _
		"test@asean-mail.com", _
		"thecybermail@yahoo.com", _
		"trash444@juno.com", _
		"usvisaassoc1@hotmail.com", _
		"vista1com@yahoo.com", _
		"vista2com@yahoo.com", _
		"web@galapagosdiscover.com", _
		"web@ppfa.org", _
		"web1317@yahoo.com", _
		"web2701@yahoo.com", _
		"web3003@yahoo.com", _
		"webmaster@cortech.com", _
		"webwelder@lycosmail.com", _
		"wolf@fourbnetworks.com", _
		"wolfsubmit@hotmail.com", _
		"womensuits@hotmail.com", _
		"xxxxx@xxxx.com", _
		"xxxx@xxxx.com", _
		"xxx@xxxx.com", _
		"xxx@xxx.com", _
		"@@@@@" _
		)


DIM a_a_adult
a_a_adult = ARRAY( _
		"adult cartoon", _
		"adultcheck", _
		"adult entertain", _
		"adult gallery", _
		"adult only", _
		"adult porn", _
		"adult search", _
		"adultsite", _
		"adult site", _
		"adultspace", _
		"adultstore", _
		"adult store", _
		"adult supersite", _
		"adult toon", _
		"adult video", _
		"adult web", _
		"adults only", _
		"hardcore adult" _
		)
DIM a_a_porn
a_a_porn = ARRAY( _
		" porn ", _
		"freeporn", _
		"free porn", _
		"live porn", _
		"hardcoreporn", _
		"hardcore porn", _
		"porno", _
		"pornsite", _
		"pornstar" _
		)
DIM a_a_sex
a_a_sex = ARRAY( _
		"amateur sex", _
		"anal sex", _
		"analsex", _
		"asian sex", _
		"free sex", _
		"graphic sex", _
		"hardcoresex", _
		"hardcore sex", _
		"hot sex", _
		"livesex", _
		"live sex", _
		"love sex", _
		"oral sex", _
		"phone sex", _
		"sex acts", _
		"sex ads", _
		"sex collect", _
		"sexcomix", _
		"sex comix", _
		"sexfetish", _
		"sex for money", _
		"sexgirl", _
		"sexlinks", _
		"sex links", _
		"sexpic", _
		"sex pic", _
		"sexpix", _
		"sex sex", _
		"sexshop", _
		"sex shop", _
		"sexshow", _
		"sex show", _
		"sexsite", _
		"sex site", _
		"sextoy", _
		"sex toy", _
		"sexvid", _
		"sex vid", _
		"sexy linger", _
		"sexy link", _
		"sexynude", _
		"sexy nude", _
		"sexy photo", _
		"sexy pic", _
		"sexy women", _
		"teen sex", _
		"teens having sex", _
		" sexo " _
		)
DIM a_a_nude
a_a_nude = ARRAY( _
		"celebrity nude", _
		"nude asian", _
		"nude celeb", _
		"nude girl", _
		"nude image", _
		"nude picture", _
		"nude schoolgirl", _
		"nude star", _
		"nudeteen", _
		"nude teen", _
		"nudewomen", _
		"nude women" _
		)
DIM a_a_naked
a_a_naked = ARRAY( _
		"naked amateur", _
		"naked girl", _
		"nakedwomen", _
		"naked women" _
		)
DIM a_a_erotic
a_a_erotic = ARRAY( _
		"erotica", _
		"erotic books", _
		"erotic lingerie", _
		"erotic pic", _
		"erotic stor" _
		)

DIM aAdultSiteDomain
aAdultSiteDomain = ARRAY( _
		"agecheck", _
		"age check", _
		"amateur slut", _
		"big tits", _
		"blowjob", _
		"carrielynn.org", _
		"cumshot", _
		"defloration", _
		"exotic lingerie", _
		"fetish pic", _
		"fuck", _
		"golden shower", _
		"hardclit", _
		"hornyfriends", _
		"hornytoadz", _
		"hotgirls", _
		"iseekgirls", _
		"maryellen@majorhost.com", _
		"masturbat", _
		"penis enlarge", _
		"pussies", _
		"pussy", _
		"shemale", _
		"sleazy teens", _
		"stripshow", _
		"strip show", _
		"x rated", _
		"xxx" _
		)

DIM a_a_gay
a_a_gay = ARRAY( _
		"gay com", _
		"gay male", _
		"gay men", _
		"gay pic", _
		"gay sex", _
		"gay site", _
		"gay web", _
		"hardcore gay", _
		"la gay" _
		)
DIM a_a_bet
a_a_bet = ARRAY( _
		"bet on sport", _
		"bet sport", _
		"betting line", _
		"betting odd", _
		"bet win", _
		"online betting", _
		"place a bet", _
		"sport bet", _
		"sports bet", _
		"win bet", _
		"you bet" _
		)
DIM aGamblingSiteDomain
aGamblingSiteDomain = ARRAY( _
		"baccarat", _
		"blackjack", _
		"black jack", _
		"casino", _
		"direct from las vegas", _
		"erotismo", _
		"gambling", _
		"online wager", _
		"roulette", _
		"slotmachine", _
		"slot machine", _
		"sports handicap", _
		"videopoker", _
		"video poker", _
		"bondage", _
		"condoms", _
		"bisexual", _
		"fetish", _
		"lesbian", _
		"nudist", _
		"utopia web", _
		"marijuana", _
		"potsmoker", _
		"roach clips", _
		"yahooka", _
		"ya hooka" _
		)


DIM aIgnoredComments
aIgnoredComments = ARRAY( _
		"@hotmail com", _
		"doesn't support frames", _
		"seem to support frames", _
		"browse the largest internet directory", _
		"home for sale", _
		"homes for sale", _
		"home listing", _
		"homes listing", _
		"home loan", _
		"home equity loan", _
		"sell a home", _
		"selling homes", _
		"purchase a home", _
		"houses for sale", _
		"house for sale", _
		"house sale", _
		"selling your house", _
		"land for sale", _
		"room for rent", _
		"apartment rental", _
		"realestate", _
		"real estate", _
		"realtor", _
		"realty", _
		"loan rate", _
		"mortgage loan", _
		"bed and breakfast", _
		"hotel", _
		"alternative lifestyle", _
		"dating", _
		"matchmaker", _
		"private detective", _
		"private investigator", _
		"spy on people", _
		"internet marketing", _
		"attorney", _
		"find attorney", _
		"homeopathic", _
		"metabolife", _
		"viagra", _
		"diet plan", _
		"weightloss", _
		"weight loss", _
		"lose weight", _
		"wellness", _
		"colloidal mineral", _
		"dentist", _
		"dental", _
		"calling card", _
		"phonecard", _
		"phone card", _
		"credit report", _
		"affiliate", _
		"network marketing", _
		"make you rich", _
		"work at home", _
		"work from home", _
		"workingathome", _
		"working at home", _
		"earn big cash", _
		"make cash now", _
		"make money at home", _
		"make money online", _
		"make big money", _
		"home based business", _
		"home based internet business", _
		"your own boss", _
		"paid to surf", _
		"cash generator", _
		"fast cash", _
		"dollars every month", _
		"free free", _
		"job seekers", _
		"debt consolidat", _
		"bill consolidat", _
		"fix your credit", _
		"credit counsel", _
		"astrology", _
		"ritual magic", _
		"pagan", _
		"wiccan", _
		"aromatherapy", _
		"perfume", _
		"polaris dealer", _
		"shopping portal", _
		"vstore", _
		" au ", _
		" de ", _
		" der ", _
		" des ", _
		" di ", _
		" du ", _
		" e ", _
		" e' ", _
		" en ", _
		" et ", _
		" das ", _
		" ja ", _
		" je ", _
		" la ", _
		" lo ", _
		" mit ", _
		" moet ", _
		" que ", _
		" qui ", _
		" sei ", _
		" sie ", _
		" sobre ", _
		" su ", _
		" suchen ", _
		" tu ", _
		" und ", _
		" une ", _
		" ve ", _
		" wir ", _
		" y " _
		)


DIM	oDNS
SET oDNS = Nothing


FUNCTION inStrList( sKey, arr, nCount )
	DIM	i,j

	inStrList = 0
	FOR i = 0 TO nCount
		j = InStr(1,sKey,arr(i),vbTextCompare)
		IF 0 < j THEN
			inStrList = j
			EXIT FOR
		END IF
	NEXT 'i
END FUNCTION

FUNCTION inKeyList( sKey, arr, sComment )
	inKeyList = FALSE
	IF INSTR(1,sComment,sKey,vbTextCompare) THEN
		IF INSTRLIST(sComment,arr,UBOUND(arr)) THEN
			inKeyList = TRUE
		END IF
	END IF
END FUNCTION


FUNCTION getSubmitDir

	DIM	sTemp
	DIM	sName
	DIM	oFolder

	getSubmitDir = ""
	sName = ""
	SET oFolder = oFSO.GetFolder(Server.MapPath("."))
	DO UNTIL oFolder.IsRootFolder
		SET oFolder = oFolder.ParentFolder
		sTemp = oFSO.BuildPath( oFolder.Path, "cgi-bin" )
		IF oFSO.FolderExists( sTemp ) THEN
			sTemp = oFSO.BuildPath( oFolder.Path, "cgi-bin\submitlinks" )
			IF NOT oFSO.FolderExists( sTemp ) THEN
				ON ERROR RESUME NEXT
				oFSO.CreateFolder( sTemp )
				IF NOT ERR THEN
					IF oFSO.FolderExists( sTemp ) THEN
						getSubmitDir = sTemp
						EXIT DO
					END IF
				END IF
			ELSE
				getSubmitDir = sTemp
				EXIT DO
			END IF
		END IF
	LOOP

	SET oFolder = Nothing

END FUNCTION


FUNCTION fixURLhttp( sURL )

	DIM	sLinkURL
	
	sLinkURL = sURL
	sLinkURL = REPLACE( sLinkURL, "\", "/", 1, -1, vbTextCompare )
	IF "htp" = LEFT( sLinkURL, 3 ) THEN
		sLinkURL = "http" & MID( sLinkURL, 4 )
	END IF
	IF "https" = LEFT( sLinkURL, 5 ) THEN
		IF "https;" = LEFT( sLinkURL, 6 ) THEN
			sLinkURL = "https:" & MID( sLinkURL, 7 )
		ELSEIF "https:" <> LEFT( sLinkURL, 6 ) THEN
			sLinkURL = "https:" & MID( sLinkURL, 6 )
		END IF
		IF "https:/" = LEFT( sLinkURL, 7 ) THEN
			IF "https://" <> LEFT( sLinkURL, 8 ) THEN
				sLinkURL = "https://" & MID( sLinkURL, 8 )
			END IF
		ELSE
			sLinkURL = "https://" & MID( sLinkURL, 7 )
		END IF
	ELSEIF "http" = LEFT( sLinkURL, 4 ) THEN
		IF "http;" = LEFT( sLinkURL, 5 ) THEN
			sLinkURL = "http:" & MID( sLinkURL, 6 )
		ELSEIF "http:" <> LEFT( sLinkURL, 5 ) THEN
			sLinkURL = "http:" & MID( sLinkURL, 5 )
		END IF
		IF "http:/" = LEFT( sLinkURL, 6 ) THEN
			IF "http://" <> LEFT( sLinkURL, 7 ) THEN
				sLinkURL = "http://" & MID( sLinkURL, 7 )
			END IF
		ELSE
			sLinkURL = "http://" & MID( sLinkURL, 6 )
		END IF
	ELSE
		sLinkURL = "http://" & sLinkURL
	END IF
	fixURLhttp = sLinkURL
END FUNCTION


FUNCTION getURLFolder( sURL, BYREF bRoot )

	DIM	i,j
	DIM	sTemp
	
	bRoot = FALSE
	i = INSTR(1,sURL,"?",vbTextCompare)
	IF 0 < i THEN sURL = LEFT(sURL,i-1)
	
	i = INSTR(1,sURL,"//",vbTextCompare)
	IF 0 < i THEN
		i = i + 2
		j = INSTR(i,sURL,"/",vbTextCompare)
		IF i < j THEN
			i = j
			j = INSTR(i+1,sURL,"/",vbTextCompare)
			IF i < j THEN
				getURLFolder = LEFT(sURL,j)
			ELSE
				sTemp = MID(sURL,i+1)
				IF INSTR(1,sTemp,".",vbTextCompare) THEN
					bRoot = TRUE
					getURLFolder = LEFT(sURL,i)
				ELSE
					getURLFolder = sURL & "/"
				END IF
			END IF
		ELSE
			bRoot = TRUE
			getURLFolder = sURL & "/"
		END IF
	ELSE
		getURLFolder = fixURLhttp( sURL )
	END IF
	getURLFolder = REPLACE( getURLFolder, "//www.", "//", 1, -1, vbTextCompare )
	
END FUNCTION


FUNCTION doesDomainExist( sDomain )
	doesDomainExist = TRUE
	IF NOT oDNS IS Nothing THEN
		DIM	sAddr
		ON ERROR Resume Next
		sAddr = oDNS.GetAddressByHostName(sDomain)
		IF 0 = oDNS.ErrorCode THEN
			IF 0 = LEN(sAddr) THEN doesDomainExist = FALSE
		ELSE
			doesDomainExist = FALSE
		END IF
		ON ERROR GOTO 0
	END IF
END FUNCTION


' aa@aa.aa
FUNCTION isValidEmailAddr( sFrom )

	DIM	i,j,n
	DIM	sFromLC
	DIM	sDomain
	
	isValidEmailAddr = FALSE
	n = LEN(sFrom)
	IF 7 < n THEN
		IF 0 = INSTR(1,sFrom," ",vbTextCompare) THEN
			i = INSTR(1,sFrom,"@",vbTextCompare)
			IF 2 < i THEN
				j = INSTRREV(sFrom,".",-1,vbTextCompare)
				IF i+2 < j THEN
					IF j+2 = n  OR  j+3 = n THEN isValidEmailAddr = TRUE
					sDomain = MID(sFrom,i+1)
					isValidEmailAddr = doesDomainExist( sDomain )
				END IF
			END IF
		END IF
	END IF
	
END FUNCTION


FUNCTION getEMailBase( sFrom )

	getEMailBase = ""
	IF isValidEmailAddr( sFrom ) THEN
		DIM i
	
		i = INSTRREV( sFrom, ".", -1, vbTextCompare )
		IF 0 < i THEN
			getEMailBase = MID( sFrom, i+1 )
		END IF
	END IF
END FUNCTION


FUNCTION getDomainBase( sURL )

	DIM	i
	DIM	sTemp
	
	getDomainBase = ""
	i = INSTR(1,sURL,"//",vbTextCompare)
	IF 0 < i THEN
		i = i + 2
		i = INSTR(i,sURL,"/",vbTextCompare)
		IF 0 < i THEN
			sTemp = LEFT(sURL, i-1)
		ELSE
			sTemp = sURL
		END IF
		i = INSTRREV( sTemp, ".", -1, vbTextCompare )
		IF 0 < i THEN getDomainBase = MID( sTemp, i+1 )
	END IF
END FUNCTION



FUNCTION useBaseURL( sURL, sEmail )

	DIM	sURLBase
	DIM	sEmailBase
	useBaseURL = TRUE
	
	sURLBase = "." & LCASE(getDomainBase(sURL)) & "."
	
	IF INSTR(1,sIgnoreTLDs,sURLBase,vbTextCompare) THEN
		useBaseURL = FALSE
	ELSE
		sEmailBase = "." & LCASE(getEMailBase(sEmail)) & "."
		IF INSTR(1,sIgnoreTLDs,sEmailBase,vbTextCompare) THEN useBaseURL = FALSE
	END IF
	
END FUNCTION



FUNCTION normalizedWords( sFrom, sLinkURL, sComments )

	DIM	sText
	
	sText = LCASE(TRIM(sLinkURL & " " & sComments & " " & sFrom))
	sText = REPLACE( sText, "\", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "/", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "-", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "_", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, ",", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, ".", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "  ", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "  ", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "  ", " ", 1, -1, vbTextCompare )
	sText = REPLACE( sText, "  ", " ", 1, -1, vbTextCompare )
	normalizedWords = sText
END FUNCTION


FUNCTION isAdultList( sComment )
	isAdultList = FALSE
	IF inKeyList( "adult", a_a_adult, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inKeyList( "nude", a_a_nude, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inKeyList( "naked", a_a_naked, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inKeyList( "erotic", a_a_erotic, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inKeyList( "porn", a_a_porn, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inKeyList( "sex", a_a_sex, sComment ) THEN
		isAdultList = TRUE
	ELSEIF inStrList( sComment, aAdultSiteDomain, UBOUND(aAdultSiteDomain) ) THEN
		isAdultList = TRUE
	END IF
END FUNCTION

FUNCTION isGambleList( sComment )
	isGambleList = FALSE
	IF inKeyList( "bet", a_a_bet, sComment ) THEN
		isGambleList = TRUE
	ELSEIF inKeyList( "gay", a_a_gay, sComment ) THEN
		isGambleList = TRUE
	ELSEIF inStrList( sComment, aGamblingSiteDomain, UBOUND(aGamblingSiteDomain) ) THEN
		isGambleList = TRUE
	END IF
END FUNCTION

FUNCTION checkAdultPhrases( sNormComments )

	IF isAdultList( sNormComments ) THEN
		checkAdultPhrases = kAdult
	ELSEIF isGambleList( sNormComments ) THEN
		checkAdultPhrases = kGambling
	ELSE
		checkAdultPhrases = kGood
	END IF
END FUNCTION


FUNCTION isBadEmailAddress( sAddr )

	DIM	aFilterResult
	
	isBadEmailAddress = FALSE
	aFilterResult = FILTER(aBadEmailAddress, sAddr, TRUE, vbTextCompare )
	IF -1 < UBOUND(aFilterResult) THEN
		isBadEmailAddress = TRUE
	ELSEIF inStrList( sAddr, aBadEmailUser, UBOUND(aBadEmailUser) ) THEN
		isBadEmailAddress = TRUE
	END IF

END FUNCTION


PUBLIC aSpamSplit
FUNCTION checkSpam( sSubmitFile, sFrom, sLinkURL, sRefer, sComments, sNormComments )

	DIM	oFile
	DIM	sLine
	DIM	sFromLC
	DIM	sUrlLC
	DIM	sReferLC
	DIM	sLogUrlLC
	DIM	n
	
	checkSpam = kGood		' no spam
	IF NOT isValidEmailAddr( sFrom ) THEN
		checkSpam = kEmailBadAddress
	ELSE
		sFromLC = LCASE(sFrom)
		n = checkAdultPhrases( sNormComments )
		IF kGood <> n THEN
			checkSpam = n
		ELSEIF LEN(sComments) < 10 THEN
			checkSpam = kBadComments
		ELSEIF inStrList( sFromLC, aSpamEmailUser, UBOUND(aSpamEmailUser) ) THEN
			checkSpam = kEmailRejectedUser
		ELSEIF inStrList( sFromLC, aSpamEmailDomain, UBOUND(aSpamEmailDomain) ) THEN
			checkSpam = kEmailRejectedDomain
		ELSEIF inStrList( LCASE(sLinkURL), aSpamSiteDomain, UBOUND(aSpamSiteDomain) ) THEN
			checkSpam = kSiteDomain
		ELSEIF isBadEmailAddress( sFromLC ) THEN
			checkSpam = kEmailUnreachable
		END IF
	END IF

	IF kGood = checkSpam THEN
		IF oFSO.FileExists( sSubmitFile ) THEN
			DIM	bRootLink
			DIM	bRoot
			sUrlLC = LCASE(getURLFolder(sLinkURL, bRootLink))
			'Response.Write " == " & sUrlLC  & "(" & bRootLink & ")<br>" & vbCRLF
			sReferLC = LCASE(sRefer)
			IF "" = sReferLC THEN sReferLC = "-"
			SET oFile = oFSO.OpenTextFile( sSubmitFile )
			DO UNTIL oFile.AtEndOfStream
				sLine = oFile.ReadLine
				IF 0 < LEN(sLine)  AND  "#" <> LEFT(sLine,1) THEN
					aSpamSplit = SPLIT( sLine, vbTAB, -1, vbTextCompare )
					IF kFieldComments = UBOUND(aSpamSplit) THEN
						sLogUrlLC = LCASE(getURLFolder(aSpamSplit(kFieldURL), bRoot))
						'Response.Write "---- " & sLogUrlLC & "(" & bRoot & ")<br>" & vbCRLF
						IF LCASE(aSpamSplit(kFieldRefer)) = sReferLC THEN
							IF sLogUrlLC = sUrlLC THEN
								'IF LCASE(aSpamSplit(kFieldEMail)) = sFromLC THEN
									checkSpam = kMultiSubmit		' multiple submissions
									EXIT DO
								'END IF
							ELSEIF bRootLink  OR  bRoot THEN
								IF bRootLink THEN
									IF sUrlLC = LEFT( sLogUrlLC, LEN(sUrlLC) ) THEN
										checkSpam = kMultiSubmit
										EXIT DO
									END IF
								ELSE
									IF sLogUrlLC = LEFT( sUrlLC, LEN(sLogUrlLC) ) THEN
										checkSpam = kMultiSubmit
										EXIT DO
									END IF
								END IF
							END IF
						END IF
					END IF
				END IF
			LOOP
			oFile.Close

			SET oFile = Nothing
		END IF
	END IF
END FUNCTION


FUNCTION isValidFrom( sFrom )

	DIM	i,j
	DIM	sFromLC
	
	isValidFrom = FALSE
	IF isValidEmailAddr( sFrom ) THEN isValidFrom = TRUE

	IF isValidFrom THEN	
		sFromLC = LCASE(sFrom)
		IF isBadEmailAddress( sFromLC ) THEN
			isValidFrom = FALSE
		END IF
	END IF

END FUNCTION


FUNCTION antiSpamAddr( sAddr )

	DIM	sTemp
	
	sTemp = sAddr
	
	sTemp = REPLACE(sTemp,"aaaooolll","aol",1,-1,vbTextCompare)
	sTemp = REPLACE(sTemp,"@aole.","@aol.",1,-1,vbTextCompare)
	sTemp = REPLACE(sTemp,"_s_p_a_m","",1,-1,vbTextCompare)
	sTemp = REPLACE(sTemp,"noemail","",1,-1,vbTextCompare)
	sTemp = REPLACE(sTemp,"NOEMAIL","",1,-1,vbTextCompare)
	sTemp = REPLACE(sTemp,"REMOVECAPS","",1,-1,vbTextCompare)
	
	antiSpamAddr = sTemp
	antiSpamAddr = ""
	
END FUNCTION




SUB sendMail( sTo, sSubject, sText, bBCC )

	IF isValidFrom( sTo ) THEN
	
		DIM sBCC
		DIM nStatus
	
		IF bLOCAL THEN EXIT SUB
		
		IF bBCC THEN sBCC = "submissions@grizzlyweb.com"
		nStatus = mailsend( "submissions@grizzlyweb.com", "", antiSpamAddr(sTo), "", sBCC, sSubject, sText )

	ELSE
		IF bLOCAL THEN Response.Write "<p>Bad Email Address</p>" & vbCRLF
	END IF
	
END SUB


SUB mailThankYou( sTo, sLinkURL, sRefer, sComments )

	DIM sText
	DIM sTemp
	DIM sSubject
	
	sTemp = REPLACE( sComments, "\", vbCRLF, 1, -1, vbTextCompare )
	
	IF "-" = sRefer THEN
		sSubject = "- "
	ELSE
		sSubject = ""
	END IF
	sSubject = sSubject & "Thank you for your submission - Grizzly Web Links"

	sText = "(This message was auto-generated in response to a single " _
 			& "site link submission)" & vbCRLF _
			& vbCRLF _
			& "Thank you for submitting your site to the Grizzly Web Links." & vbCRLF _
			& "Your link will be evaluated within the next few weeks." & vbCRLF _
			& vbCRLF _
			& sLinkURL & vbCRLF _
			& sTo & vbCRLF _
			& "-" & vbCRLF _
			& sTemp & vbCRLF _
			& "-" & vbCRLF _
			& sRefer & vbCRLF _
			& vbCRLF _
			& vbCRLF _
			& "-- Thank you" & vbCRLF _
			& "Submissions@GrizzlyWeb.com" & vbCRLF

	'sendMail sTo, sSubject, sText, bEMAIL
	
END SUB

SUB mailIgnoredSubmission( sTo, sLinkURL, sRefer, sComments )

	IF NOT bDEBUG THEN EXIT SUB
	IF NOT bEMAIL THEN EXIT SUB

	DIM sText
	DIM sTemp
		
	sTemp = REPLACE( sComments, "\", vbCRLF, 1, -1, vbTextCompare )

	sText = "Submission Ignored" & vbCRLF _
			& vbCRLF _
			& sLinkURL & vbCRLF _
			& sTo & vbCRLF _
			& "-" & vbCRLF _
			& sTemp & vbCRLF _
			& "-" & vbCRLF _
			& sRefer & vbCRLF
	'sendMail "submissions@GrizzlyWeb.com", "Submission Ignored - Grizzly Web Links", sText, FALSE
	
END SUB


FUNCTION textSpam( sTo, sLinkURL, sRefer, sComments, nSpam )

	DIM	sTemp
	DIM	sText
	DIM	sProb

	sProb = sLinkURL
	sText = ""

	IF kMultiSubmit = nSpam THEN
		' multiple submissions
		sText = sText _
			& "Please do not submit a link more than once a month." & vbCRLF _
			& "Please do not submit multiple individual web-site pages." & vbCRLF
		sProb = sLinkURL
	ELSEIF kEmailBadAddress = nSpam  OR  kEmailUnreachable = nSpam THEN
		' bad email or history of unreachable address
		sText = sText _
			& "The specified email address does not appear to be valid" & vbCRLF _
			& "or appears to be unreachable." & vbCRLF
		sProb = sTo
	ELSEIF kAdult = nSpam THEN
		' adult content
		sText = sText _
			& "Please do not submit adult content sites." & vbCRLF
	ELSEIF kGambling = nSpam THEN
		' adult content
		sText = sText _
			& "Please do not submit licentious content sites." & vbCRLF
	ELSEIF kBadComments = nSpam THEN
		sText = sText _
			& "The supplied comments are incomplete or bad." & vbCRLF
	ELSE
		sText = sText _
			& "Because of historic spamming problems we unfortunately " _
			& "no longer accept submissions from certain "
		IF kEmailRejectedDomain = nSpam THEN
			sText = sText & "email-domains." & vbCRLF
			sProb = sTo
		ELSEIF kEmailRejectedUser = nSpam THEN
			sText = sText & "users." & vbCRLF
			sProb = sTo
		ELSEIF kSiteDomain = nSpam THEN
			sText = sText & "domain sites." & vbCRLF
			sProb = sLinkURL
		END IF
	END IF
	sTemp = REPLACE( sComments, "\", vbCRLF, 1, -1, vbTextCompare )
	
	textSpam = "We are sorry but your submission has been rejected." & vbCRLF _
			& vbCRLF _
			& sText _
			& vbCRLF _
			& vbCRLF _
			& sLinkURL & vbCRLF _
			& sTo & vbCRLF _
			& "-" & vbCRLF _
			& sTemp & vbCRLF _
			& "-" & vbCRLF _
			& sRefer & vbCRLF _
			& vbCRLF _
			& vbCRLF _
			& "Please carefully read our submission policies. "  & vbCRLF _
			& "http://GrizzlyWeb.com/Links/submit/submitlink.asp" & vbCRLF _
			& "If you feel this is in error you may email us at the address below." & vbCRLF _
			& vbCRLF _
			& "Submissions@GrizzlyWeb.com" & vbCRLF
END FUNCTION


SUB mailSpamNotice( sTo, sLinkURL, sRefer, sComments, nSpam )

	DIM	sText
	DIM	sSubject
	DIM	bBCC
	
	sSubject = "Sorry, your submission was rejected - Grizzly Web Links"
	sText = "(This message was auto-generated in response to a single " _
 			& "site link submission)" & vbCRLF _
			& vbCRLF _
			& textSpam( sTo, sLinkURL, sRefer, sComments, nSpam )
 
	IF kEmailBadAddress = nSpam  OR  kEmailUnreachable = nSpam THEN
		IF bDEBUG THEN
			sendMail "Submissions@GrizzlyWeb.com", "Submission Aborted - Grizzly Web Links", sText, FALSE
		END IF
	ELSE
		IF kAdult = nSpam THEN
			sSubject = "_" & sSubject
			bBCC = TRUE
		END IF
		IF bDEBUG THEN
			bBCC = TRUE
		ELSE
			bBCC = FALSE
		END IF
		IF NOT bEMAIL THEN bBCC = FALSE
		IF isValidFrom( sTo ) THEN
			'sendMail sTo, sSubject, sText, bBCC
		ELSEIF bBCC THEN
			sSubject = "(Unreachable) " & sSubject
			'sendMail "Submissions@GrizzlyWeb.com", sSubject, sText, FALSE
		END IF
	END IF

END SUB


SUB writeSubmitFile( sFile, sDate, nStatus, sRefer, sFrom, sLinkURL, sComments )

	DIM	oSubmitFile
	
	SET oSubmitFile = Nothing
	IF oFSO.FileExists( sFile ) THEN
		ON ERROR RESUME NEXT
		SET oSubmitFile = oFSO.OpenTextFile( sFile, 8, TRUE, 0 )
	ELSE
		ON ERROR RESUME NEXT
		SET oSubmitFile = oFSO.CreateTextFile( sFile )
		IF 0 = Err THEN
			oSubmitFile.WriteLine "#Fields: date status refer url email comment"
		END IF
	END IF
	IF 0 = Err  AND  oSubmitFile THEN
		IF sRefer = "" THEN sRefer = "-"
		oSubmitFile.WriteLine sDate & vbTAB & CSTR(nStatus) & vbTAB & sRefer & vbTAB & sLinkURL & vbTAB & sFrom & vbTAB & sComments
		oSubmitFile.Close
		
		SET oSubmitFile = Nothing
	ELSE
		Response.Write "<p>An error occurred while opening the submission file.</p>" & vbCRLF
		sendMail "submissions@GrizzlyWeb.com", "Submission Failed - Grizzly Web Links", sFile, FALSE
	END IF
	ON ERROR GOTO 0
END SUB





FUNCTION makeGUID()
	makeGUID = ""
	DIM	oTypeLib
	
	SET oTypeLib = Server.CreateObject("Scriptlet.Typelib")
	IF NOT Nothing IS oTypeLib THEN
		DIM	sGUID
		
		sGUID = TRIM(oTypeLib.Guid)
		SET oTypeLib = Nothing
		sGUID = REPLACE(sGUID,"{","")
		sGUID = REPLACE(sGUID,"}","")
		makeGUID = TRIM(sGUID)
	END IF
END FUNCTION



FUNCTION getGuidChars(s)

	getGuidChars = "000000000000000000"

	DIM	oReg
	DIM	oMatchList

	SET oReg = NEW RegExp
	oReg.Pattern = "^(\d+|[A-Za-z]+|-){8,}"
	oReg.IgnoreCase = TRUE
	oReg.Global = TRUE
	SET oMatchList = oReg.Execute( s )
	IF 0 < oMatchList.Count THEN
		getGuidChars = LEFT(s, oMatchList(0).length)
	END IF
	

END FUNCTION





DIM	sLEhost
DIM	sRefer
DIM	sFrom
DIM	sLinkURL
DIM	sComments
DIM	bSend
DIM	sAction

DIM	sGUID
DIM	sFormGUID
DIM	g_sSessionKey
g_sSessionKey = "GWL_SubmitLinkGUID"


sLEHost = LCase(Request.ServerVariables("HTTP_HOST"))
IF INSTR(1,sLEHost,"localhost",vbTextCompare) THEN
	sAction = "submitlink.asp"
ELSE
	sAction = "http://grizzlyweb.com/links/submitlink.asp"
END IF
      
IF 0 = Request.Form("submit").Count THEN
	bSend = FALSE
	sFrom = ""
	sLinkURL = "http://"
	sComments = ""
	sRefer = LCASE(Request.ServerVariables("HTTP_REFERER"))
	sGUID = makeGUID()
	Session(g_sSessionKey) = sGUID
ELSE
	bSend = TRUE
	sFrom = Request.Form("from")
	sLinkURL = Request.Form("linkURL")
	sComments = Request.Form("comments")
	sRefer = Request.Form("referrer")
	sFormGUID = Request.Form("commentGUID")
	sGUID = getGuidChars(Session(g_sSessionKey))
	IF sGUID <> sFormGUID THEN
		bSend = FALSE
	END IF
END IF



Response.Expires = 0

IF 0 = LEN(sRefer) _
		OR	"/links/" = LCASE(RIGHT(sRefer,7)) _
		OR  0 < INSTR(1,sRefer,"/links/index.asp",vbTextCompare) _
		OR  0 < INSTR(1,sRefer,"/links/submitlink.asp",vbTextCompare) _
		OR	INSTR(1,sRefer,"/links/",vbTextCompare) < 1 _
		THEN
	Response.Redirect "submitlinkinfo.htm"
END IF

%>
<html>

<head>
<title>Submit Link - Grizzly Web Links</title>
<meta name="robots" content="noindex">
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css">
<style type="text/css">
<!--
.navbackground { background-color: #663300; color: #FFFFFF }
-->
</style>
<script type="text/javascript" language="JavaScript">
<!--

function checkEmailFrom( sFrom )
{
	var	bResult = false;
	
	var n = sFrom.length;
	if ( 7 < n )
	{
		if ( sFrom.indexOf(" ") < 0 )
		{
			var i = sFrom.indexOf("@");
			if ( 0 < i  &&  i < n-3 )
			{
				var j = sFrom.indexOf(".",i);
				if ( i+1 < j  &&  j < n-2 )
					bResult = true;
			}
		}
	}
	return bResult;
}

function checkRequired( theForm )
{
	var	bMissing = false;
	var bBadEmail = false;
	var bBadURL = false;
	
	if ( 0 == theForm.from.value.length )
	{
		bMissing = true;
	}
	else
	{
		if ( ! checkEmailFrom(theForm.from.value) )
			bBadEmail = true;
	}
	if ( 0 == theForm.linkURL.value.length )
	{
		bMissing = true;
	}
	else if ( "http://" == theForm.linkURL.value )
	{
		bMissing = true;
	}
	else
	{
		if ( theForm.linkURL.value.indexOf("://") < 1 )
			bBadURL = true;
		else if ( 0 < theForm.linkURL.value.indexOf(" ") )
			bBadURL = true;
		else if ( theForm.linkURL.value.indexOf(".") < 7 )
			bBadURL = true;
	}
	if ( 0 == theForm.comments.value.length )
		bMissing = true;
	
	if ( bMissing )
	{
		alert("All fields are required on this form.\n"
				+ "Please complete them and select Submit again.");
		return false;
	}
	else if ( bBadEmail )
	{
		alert("The email address appears to be misformed.\n"
				+ "Please correct and submit again.");
		return false;
	}
	else if ( bBadURL )
	{
		alert("The Site URL appears to be misformed.\n"
				+"Please correct and submit again.");
		return false;
	}
	else
	{
		return true;
	}
}

//-->
</script>
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="bottom" class="titleblock">
      <h1>&nbsp;Submit Link</h1>
    </td>
    <td align="right">
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="bottom">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#663300"><img border="0" src="../images/pie_brx.gif" WIDTH="16" HEIGHT="16"></td>
              </tr>
            </table>
          </td>
          <td bgcolor="#663300"><img border="0" src="../images/bearpaw-header.jpg" WIDTH="245" HEIGHT="64"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath"><span class="navigationpath"><a href="./" class="navigationpath">Grizzly Web
      Links (Home)</a> &gt;&gt; Submit Link</span></th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="1"><img border="0" src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>
<%



%>
<table border="0" width="150" cellspacing="0" cellpadding="4" align="left">
  <tr>
    <td>
          Use this form to submit links (URLs) to the Grizzly
            Web Links. Please note that the Grizzly Web Links is not a search
            engine.&nbsp; We take pride in being highly selective in our
            directory entries. We do not accept all sites, so please don't take
            it personally should your site not be accepted.
    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <%
IF sFrom = ""  OR  sLinkURL = ""  OR  sComments = ""  OR  NOT bSend THEN
		%>
      <form method="post" action="<%=sAction%>" onsubmit="return checkRequired(this)" name="SubmitLinkForm">
		<%
	IF bSend THEN
				IF sFormGUID <> sGUID THEN
				%>
        <p align="center"><b>Session is wrong or unexpected, please fill the form out locally</b></p>
		
				<%
				ELSE
			%>
        <p align="center"><b>One or more required fields are missing</b></p>
			<%
				END IF
	ELSE
			%>
        <table border="0" cellspacing="4" width="100%" cellpadding="0">
          <tr>
            <td width="100%">Please take a moment to review our <a href="#Policies">Submission Policies</a>.</td>
          </tr>
        </table>
        <%
	END IF
        %>
        <hr>
        <table border="0" cellpadding="2" width="100%">
          <tr>
            <th align="right">Your e-mail</th>
            <td><small>johndoe@someplace.com</small><br>
              <input type="text" name="from" size="40" value="<%=sFrom%>"></td>
          </tr>
          <tr>
            <th align="right">Site URL</th>
            <td><small>http://www.johnsplace.com/</small><br>
              <input type="text" name="linkURL" size="40" value="<%=sLinkURL%>"></td>
          </tr>
          <tr>
            <th valign="top" align="right">Description<br>
              or comments</th>
            <td><textarea name="comments" rows="10" cols="39"><%=sComments%></textarea></td>
          </tr>
          <tr>
            <td align="center" colspan="2"><input type="submit" value="Submit" name="submit"> <input type="reset" value="Clear"></td>
          </tr>
        </table>
        <%
	IF 0 < LEN(sRefer) THEN
		%>
        <input type="hidden" name="referrer" value="<%=sRefer%>">
		<%
	END IF
        %>
		<%IF 0 < LEN(sGUID) THEN%>
		<input type="hidden" name="commentguid" value="<%=sGUID%>">
		<%END IF%>
        <hr>
        <table border="0" width="100%" cellspacing="4" cellpadding="0">
          <tr>
            <td width="100%">
              <%
SUB Policies
              %>
              <!--webbot bot="Include" U-Include="submit/submitpolicies.htm" TAG="BODY" startspan
              -->
              <h3 align="center"><a name="Policies"></a>Submission Policies</h3>
              We care a great deal about the quality of the Grizzly Web Links
              directory. Please be aware that abusive submissions will result in
              the removal of all sites connected with the abuser.&nbsp;
              <ul>
                <li>You must specify a valid email address.&nbsp; Any submission
                  that does not have a valid and reachable email address will
                  not be considered for addition to the directory.&nbsp; The specified email address is used for site
                  maintenance and will not be provided to any external
                  resources.
                <li>A valid and understandable description is necessary.&nbsp; 
                Our site evaluation process starts with reading your 
                description.&nbsp; If the description is unintelligible the site 
                will not be evaluated.&nbsp; If the description does not match 
                your real site, the submission will be rejected.<li><b>Please only submit an URL to the Grizzly Web Links once.</b>
                  If a site has not been listed within four weeks, you may
                  submit it again.
                <li>Do not submit multiple individual pages.&nbsp; Multiple page
                  submissions will be considered as submission abuse and result
                  in the removal of all sites associated with the abuser.
                <li>Submit sites to the most relevant category/page. Sites
                  intentionally submitted to inappropriate or unrelated
                  categories will not be added.
                <li>Disguising your submission and submitting the same URL more
                  than once is not permitted.<br>
                  <b>Example: http://grizzlyweb.com and http://www.grizzlyweb.com/</b>
                <li>Please do not submit mirror sites. Mirror sites are sites
                  that contain identical content, but have different URLs
                  altogether.&nbsp;
                <li>Please avoid submitting sites with addresses that redirect
                  to another address.
                <li>Sites with illegal, adult, or licentious content are forbidden in the
                  Grizzly Web Links. Examples of illegal material include, but
                  are not limited to, child pornography and sites infringing on
                  copyright.&nbsp; Examples of adult material include, sex
                  pictures, sex chat rooms, or gambling and casinos.
                <li>Wait until your site is complete before submitting your URL.
                  Sites which are incomplete, contain &quot;Under
                  Construction&quot; notices, or contain broken graphics or
                  links aren't good candidates for the directory.
                <li>Sites consisting largely of affiliate links should not be
                  submitted.</li>
                <li>At this point non-english sites are not accepted, but we
                  should be allowing them in the future.</li>
                <li>Unfortunately we will refuse sites from certain domains, due
                  to historic massive spamming from those domains.</li>
              </ul>
<!--webbot bot="Include" i-checksum="54792" endspan --><%
END SUB
Policies
              %>
            </td>
          </tr>
          <tr>
            <td width="100%"></td>
          </tr>
        </table>
      </form>
      <%
ELSE ' submit
	ON ERROR Resume Next
	SET oDNS = CreateObject("Caprock.DNSResolver")
	IF oDNS IS Nothing THEN
		SET oDNS = Nothing
	END IF
	ON ERROR Resume Next
	SET oFSO = CreateObject("Scripting.FileSystemObject")
	IF oFSO IS Nothing THEN
      %>
      <p>An error occurred while recording your submission. This is no fault of
      yours. Please try again later.</p>
      <%
	ELSE
		ON ERROR GOTO 0
		
		DIM	sSubmitDir
		DIM	sSubmitFile
		DIM	dToday
		DIM	sDate
		DIM	n
		DIM	dd, mm, yy
		DIM	nSpam
		DIM	sNormComments
			
		dToday = NOW
		yy = CSTR(YEAR(dToday))
		n = MONTH(dToday)
		IF n < 10 THEN
			mm = "0" & CSTR(n)
		ELSE
			mm = CSTR(n)
		END IF
		n = DAY(dToday)
		IF n < 10 THEN
			dd = "0" & CSTR(n)
		ELSE
			dd = CSTR(n)
		END IF
		sDate = yy & "-" & mm & "-" & dd
		
		IF "http://" <> LEFT( sLinkURL, 7)  AND  "https://" <> LEFT( sLinkURL, 8 ) THEN
			sLinkURL = fixURLhttp( sLinkURL )
		END IF

		IF 0 = LEN(sRefer) THEN sRefer = "-"
		sComments = REPLACE( sComments, vbNewLine, "\", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, vbCRLF, "\", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, vbCR, "\", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, vbLF, "\", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, vbTAB, " ", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, "&nbsp;", " ", 1, -1, vbTextCompare )
		sComments = REPLACE( sComments, "  ", " ", 1, -1, vbTextCompare )

		IF "mailto:" = LCASE(LEFT(sFrom,7)) THEN
			sFrom = TRIM(MID( sFrom, 8 ))
		END IF

		sNormComments = normalizedWords( sFrom, sLinkURL, sComments )

		sSubmitDir = getSubmitDir
		sSubmitFile = oFSO.BuildPath( sSubmitDir, yy & "-" & mm & ".txt" )
		nSpam = checkSpam( sSubmitFile, sFrom, sLinkURL, sRefer, sComments, sNormComments )
		IF kGood <> nSpam THEN
			DIM	sText
			sSubmitFile = oFSO.BuildPath( sSubmitDir, yy & "-" & mm & "-spam.txt" )
			
			sText = textSpam( sFrom, sLinkURL, sRefer, sComments, nSpam )
			Response.Write "<p><b>"
			Response.Write REPLACE( Server.HTMLEncode(sText), vbCRLF, "<br>", 1, -1, vbTextCompare )
			Response.Write "</b></p><hr>" & vbCRLF
			Policies
			IF NOT bReferalsOnly THEN
				mailSpamNotice sFrom, sLinkURL, sRefer, sComments, nSpam
			END IF
		ELSE
		%>
      <p align="center"><b>Thank you for your submission.</b><br>
      Your link will be evaluated within the next few weeks.</p>
	  <%
			DIM	bSendSubmission
				
			bSendSubmission = FALSE
			IF useBaseURL( sLinkURL, sFrom ) THEN
				IF 20 < LEN(sComments)  AND  INSTR( 1, TRIM(sComments), " ", vbTextCompare ) < 1 THEN
					nSpam = kIgnoredGlobPhrase
				ELSEIF 0 = inStrList( sNormComments, aIgnoredComments, UBOUND(aIgnoredComments) ) THEN
					bSendSubmission = TRUE
				ELSE
					nSpam = kIgnoredPhrases
				END IF
			ELSE
				nSpam = kIgnoredTLD
			END IF
			IF bSendSubmission THEN
				IF bReferalsOnly  AND  "-" = sRefer THEN bSendSubmission = FALSE
			END IF
			IF bSendSubmission THEN
				mailThankYou sFrom, sLinkURL, sRefer, sComments
			ELSE
				mailIgnoredSubmission sFrom, sLinkURL, sRefer, sComments
			END IF
		END IF
		writeSubmitFile sSubmitFile, sDate, nSpam, sRefer, sFrom, sLinkURL, sComments

	END IF
END IF ' submit
      %></td>
  </tr>
</table>

</body>

</html>
<%
SET oFSO = Nothing
%>