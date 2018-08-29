<!--#include file="sortutil.asp"-->
<%



FUNCTION getBasePart( sPath )

	DIM	sPart
	DIM	i
	
	sPart = sPath
	i = INSTRREV(sPart,"\")
	IF 0 < i THEN
		sPart = MID(sPart,i+1)
	END IF
	
	i = INSTRREV(sPart,"." )
	IF 0 < i THEN
		sPart = LEFT(sPart,i-1)
	END IF
	
	getBasePart = sPart

END FUNCTION





FUNCTION newsletter_buildLink( sProtocol, sURL, sTarget, sText )
	IF "mailto:" = sProtocol THEN
		IF gHtmlOption_encodeEmailAddresses THEN
			DIM	sTE
			sTE = sURL
			sTE = REPLACE( sTE, "@", "*" )
			sTE = REPLACE( sTE, ".", ":" )
			
			DIM i
			FOR i = 3 TO LEN(sTE) STEP 5
				sTE = LEFT( sTE, i ) & " " & MID( sTE, i+1 )
			NEXT 'i
			
			IF "" = sText  OR  sURL = sText THEN
				newsletter_buildLink = "<span class=""pobox"">" & sTE & "</span>"
			ELSE
				newsletter_buildLink = "<span class=""pobox"">" & Server.HTMLEncode(sText) & "[" & sTE & "]</span>"
			END IF
		ELSE
			newsletter_buildLink = "<a href=""mailto:" & sURL & """>" & Server.HTMLEncode(sText) & "</a>"
		END IF
	ELSE
		newsletter_buildLink = htmlFormat_f_makeLink( sProtocol, sURL, sTarget, sText )
	END IF
END FUNCTION


g_htmlFormat_makeLinkFunc = "newsletter_buildLink"




DIM	g_sNewletterFolder
DIM	g_sRootFolder


FUNCTION pagePicture( sLabel )

	IF g_sNewletterFolder <> "" THEN
		pagePicture = virtualFromPhysicalPath(g_sNewletterFolder & "\images\" & sLabel)
		pagePicture = "picture.asp?file=" & Server.URLEncode(pagePicture)
	'	pagePicture = MID(pagePicture, LEN(g_sRootFolder)+1)
	'	pagePicture = REPLACE(pagePicture, "\", "/")
	END IF

END FUNCTION

g_htmlFormat_pictureFunc = "pagePicture"

gHtmlOption_pullquoteWidth = 175
gHtmlOption_sidebarWidth = 200



SUB getAllNewsletters( aLetters() )

	DIM	sFolder
	sFolder = findAppDataFolder( "newsletters" )
	g_sNewletterFolder = sFolder
	g_sRootFolder = Server.MapPath( "/" )
	
	IF "" <> sFolder THEN
		DIM	oFolder
		DIM	oFile
		DIM	sFile
		DIM	i
		
		SET oFolder = g_oFSO.GetFolder( sFolder )
		
		i = 0
		REDIM aLetters(5)
		FOR EACH oFile IN oFolder.Files
			sFile = LCASE(oFile.Name)
			IF 0 < INSTR(1, sFile, ".txt", vbTextCompare ) THEN
				IF UBOUND(aLetters) <= i THEN
					REDIM PRESERVE aLetters(i+5)
				END IF
				aLetters(i) = LCASE(oFile.Path)
				i = i + 1
			END IF
		NEXT 'oFile
		
		IF 0 < i THEN
			REDIM PRESERVE aLetters(i-1)
			sortDescend aLetters, 0, i-1
		END IF
		
		SET oFolder = Nothing
	END IF

END SUB




%>
