
<html>

<head>
<title>eXcite, AOL, Magellan</title>
<meta name="robots" content="none">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<base target="main">
<script language="JavaScript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}
//-->
</script>
<script language="JavaScript1.2">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}
//-->
</script>
<script language="JavaScript">
<!--
function doLoad()
{
	setTimeout( "reLoad()", 8*1000 );
	if ( document.search )
		document.search.submit();
}

function reLoad()
{
	replaceWindowURL( window, "../submiturl_submit.asp" );
}
//-->
</script>
<style type="text/css">
<!--
body         { background-color: #990000; color: #FFFFFF }
p            { background-color: #990000; color: #FFFFFF }
-->
</style>
</head>

<body bgcolor="#CCCCCC" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
onload="doLoad()">

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to
eXcite</b></font></p>

<%
	DIM	sTitle
	DIM	sURL
	DIM	sLanguage
	DIM	sCountry
	DIM	sCategory
	DIM	sKeywords
	DIM	sDescription
	DIM	sFirstName, sLastName
	DIM	sEmail
	DIM	sSiteType
	DIM	sCompany
	DIM	sPhone, sFax
	DIM	sZipCode
	
	sTitle = Request.Form("title")
	sURL = Request.Form("url")
	sLanguage = Request.Form("language")
	sCountry = Request.Form("country")
	sCategory = Request.Form("category")
	sKeywords = Request.Form("keywords")
	sDescription = Request.Form("description")
	sFirstName = Request.Form("firstname")
	sLastName = Request.Form("lastname")
	sEmail = Request.Form("email")
	sSiteType = Request.Form("sitetype")
	sCompany = Request.Form("company")
	sPhone = Request.Form("phone")
	sFax = Request.Form("fax")
	sZipCode = Request.Form("zipcode")
%>


<table width=600 cellpadding=0 cellspacing=0>
<tr>
<td width=190 valign=top>
<form method="post" action="http://www.excite.com/cgi/add_url_new.cgi" name="search">
<input type=hidden name="Service" value="excite">
<table border=0 cellspacing=0 cellpadding=4 width=410>
<tr><td><font face=geneva,arial size=-1>
This form allows you to add a Web site to Excite's database of 50 million URLs. If you have any questions about adding your site, please read <a href="/Info/listing.html">Getting Listed on Excite</a>. When you are finished filling out the form below, click the &quot;Send&quot; button. If you don't want to submit anything right now, you can return to <a href=/>Excite's front page</a>.
<p>Once your site has been submitted, it will appear in the index after two weeks. Registering your site is absolutely free of charge.</font></td></tr>
<tr> <td width=410 align=center valign=top nowrap>
<table border=0 cellspacing=0 cellpadding=4 width=410>
<tr>
<td colspan=6 bgcolor=#ffcc00><font face=arial,helvetica color="000000"><b>Add a site to our index
</b></font></td></tr>
<tr> <td width=170><font face=geneva,arial size=-1><nobr><b> Your URL:</b></nobr></font></td>
<td width=330><input type="text" name="url" value="<%=sURL%>" size=30></td>
</tr>
<tr> <td><font face=geneva,arial size=-1><nobr><b>Your Email:</b></nobr></font></td>
<td><input name="email" type="text" size=30 value="<%=sEmail%>"></td>
</tr>
<tr> <td><font face=geneva,arial size=-1><b>Primary language:</b></font></td>
<td> <input type="text" name="language" value="<%=sLanguage%>"><!--<select name="language">
<option>English
<option>Chinese
<option>Dutch
<option>French <option>German
<option>Italian <option>Japanese <option>Norwegian
<option>Portuguese <option>Spanish <option>Swedish <option>Other
</select>-->
</td>
</tr>
<tr><td><font face=geneva,arial size=-1><b>Geographical location:</b></font></td>
<td> <input type=text name="country" value="<%=sCountry%>">
<!--<select name="country">
<option value="AF">Afghanistan
<option value="AL">Albania
<option value="DZ">Algeria
<option value="AS">American Samoa
<option value="AD">Andorra
<option value="AO">Angola
<option value="AI">Anguilla
<option value="AQ">Antarctica
<option value="AG">Antigua and Barbuda
<option value="AR">Argentina
<option value="AM">Armenia
<option value="AW">Aruba
<option value="AU">Australia
<option value="AT">Austria
<option value="AZ">Azerbaijan
<option value="BS">Bahamas
<option value="BH">Bahrain
<option value="BD">Bangladesh
<option value="BB">Barbados
<option value="BY">Belarus
<option value="BE">Belgium
<option value="BZ">Belize
<option value="BJ">Benin
<option value="BM">Bermuda
<option value="BT">Bhutan
<option value="BO">Bolivia
<option value="BA">Bosnia and Herzegowina
<option value="BW">Botswana
<option value="BV">Bouvet Island
<option value="BR">Brazil
<option value="IO">British Indian Ocean Territory
<option value="BN">Brunei Darussalam
<option value="BG">Bulgaria
<option value="BF">Burkina Faso
<option value="BI">Burundi
<option value="KH">Cambodia
<option value="CM">Cameroon
<option value="CA">Canada
<option value="CV">Cape Verde
<option value="KY">Cayman Islands
<option value="CF">Central African Republic
<option value="TD">Chad
<option value="CL">Chile
<option value="CN">China
<option value="CX">Christmas Island
<option value="CC">Cocos (Keeling) Islands
<option value="CO">Colombia
<option value="KM">Comoros
<option value="CG">Congo
<option value="CK">Cook Islands
<option value="CR">Costa Rica
<option value="CI">Cote D'Ivoire
<option value="HR">Croatia (local name: Hrvatska)
<option value="CU">Cuba
<option value="CY">Cyprus
<option value="CZ">Czech Republic
<option value="DK">Denmark
<option value="DJ">Djibouti
<option value="DM">Dominica
<option value="DO">Dominican Republic
<option value="TP">East Timor
<option value="EC">Ecuador
<option value="EG">Egypt
<option value="SV">El Salvador
<option value="GQ">Equatorial Guinea
<option value="ER">Eritrea
<option value="EE">Estonia
<option value="ET">Ethiopia
<option value="FK">Falkland Islands (Malvinas)
<option value="FO">Faroe Islands
<option value="FJ">Fiji
<option value="FI">Finland
<option value="FR">France
<option value="FX">France, Metropolitan
<option value="GF">French Guiana
<option value="PF">French Polynesia
<option value="TF">French Southern Territories
<option value="GA">Gabon
<option value="GM">Gambia
<option value="GE">Georgia
<option value="DE">Germany
<option value="GH">Ghana
<option value="GI">Gibraltar
<option value="GR">Greece
<option value="GL">Greenland
<option value="GD">Grenada
<option value="GP">Guadeloupe
<option value="GU">Guam
<option value="GT">Guatemala
<option value="GN">Guinea
<option value="GW">Guinea-Bissau
<option value="GY">Guyana
<option value="HT">Haiti
<option value="HM">Heard and Mc Donald Islands
<option value="HN">Honduras
<option value="HK">Hong Kong
<option value="HU">Hungary
<option value="IS">Iceland
<option value="IN">India
<option value="ID">Indonesia
<option value="IR">Iran (Islamic Republic of)
<option value="IQ">Iraq
<option value="IE">Ireland
<option value="IL">Israel
<option value="IT">Italy
<option value="JM">Jamaica
<option value="JP">Japan
<option value="JO">Jordan
<option value="KZ">Kazakhstan
<option value="KE">Kenya
<option value="KI">Kiribati
<option value="KP">Korea (North)
<option value="KR">Korea (South)
<option value="KW">Kuwait
<option value="KG">Kyrgyzstan
<option value="LA">Lao People's Democratic Republic
<option value="LV">Latvia
<option value="LB">Lebanon
<option value="LS">Lesotho
<option value="LR">Liberia
<option value="LY">Libyan Arab Jamahiriya
<option value="LI">Liechtenstein
<option value="LT">Lithuania
<option value="LU">Luxembourg
<option value="MO">Macau
<option value="MK">Macedonia
<option value="MG">Madagascar
<option value="MW">Malawi
<option value="MY">Malaysia
<option value="MV">Maldives
<option value="ML">Mali
<option value="MT">Malta
<option value="MH">Marshall Islands
<option value="MQ">Martinique
<option value="MR">Mauritania
<option value="MU">Mauritius
<option value="YT">Mayotte
<option value="MX">Mexico
<option value="FM">Micronesia
<option value="MD">Moldova
<option value="MC">Monaco
<option value="MN">Mongolia
<option value="MS">Montserrat
<option value="MA">Morocco
<option value="MZ">Mozambique
<option value="MM">Myanmar
<option value="NA">Namibia
<option value="NR">Nauru
<option value="NP">Nepal
<option value="NL">Netherlands
<option value="AN">Netherlands Antilles
<option value="NC">New Caledonia
<option value="NZ">New Zealand
<option value="NI">Nicaragua
<option value="NE">Niger
<option value="NG">Nigeria
<option value="NU">Niue
<option value="NF">Norfolk Island
<option value="MP">Northern Mariana Islands
<option value="NO">Norway
<option value="OM">Oman
<option value="PK">Pakistan
<option value="PW">Palau
<option value="PA">Panama
<option value="PG">Papua New Guinea
<option value="PY">Paraguay
<option value="PE">Peru
<option value="PH">Philippines
<option value="PN">Pitcairn
<option value="PL">Poland
<option value="PT">Portugal
<option value="PR">Puerto Rico
<option value="QA">Qatar
<option value="RE">Reunion
<option value="RO">Romania
<option value="RU">Russian Federation
<option value="RW">Rwanda
<option value="KN">Saint Kitts and Nevis
<option value="LC">Saint Lucia
<option value="VC">Saint Vincent and the Grenadines
<option value="WS">Samoa
<option value="SM">San Marino
<option value="ST">Sao Tome and Principe
<option value="SA">Saudi Arabia
<option value="SN">Senegal
<option value="SC">Seychelles
<option value="SL">Sierra Leone
<option value="SG">Singapore
<option value="SK">Slovakia (Slovak Republic)
<option value="SI">Slovenia
<option value="SB">Solomon Islands
<option value="SO">Somalia
<option value="ZA">South Africa
<option value="ES">Spain
<option value="LK">Sri Lanka
<option value="SH">St. Helena
<option value="PM">St. Pierre and Miquelon
<option value="SD">Sudan
<option value="SR">Suriname
<option value="SJ">Svalbard and Jan Mayen Islands
<option value="SZ">Swaziland
<option value="SE">Sweden
<option value="CH">Switzerland
<option value="SY">Syrian Arab Republic
<option value="TW">Taiwan
<option value="TJ">Tajikistan
<option value="TZ">Tanzania, United Republic of
<option value="TH">Thailand
<option value="TG">Togo
<option value="TK">Tokelau
<option value="TO">Tonga
<option value="TT">Trinidad and Tobago
<option value="TN">Tunisia
<option value="TR">Turkey
<option value="TM">Turkmenistan
<option value="TC">Turks and Caicos Islands
<option value="TV">Tuvalu
<option value="UM">U. S. Minor Outlying Islands
<option value="UG">Uganda
<option value="UA">Ukraine
<option value="AE">United Arab Emirates
<option value="UK">United Kingdom
<option value="US" selected>United States
<option value="UY">Uruguay
<option value="UZ">Uzbekistan
<option value="VU">Vanuatu
<option value="VA">Vatican City State (Holy See)
<option value="VE">Venezuela
<option value="VN">Viet Nam
<option value="VG">Virgin Islands (British)
<option value="VI">Virgin Islands (U.S.)
<option value="WF">Wallis And Futuna Islands
<option value="EH">Western Sahara
<option value="YE">Yemen
<option value="YU">Yugoslavia
<option value="ZR">Zaire
<option value="ZM">Zambia
<option value="ZW">Zimbabwe
<option value="00">other
</select>-->
</td>
</tr>
<tr> <td colspan=2><font face=geneva,arial size=-1><b>For our records, please indicate the category which most accurately describes the subject of your Web site:</b></font></td>
</tr>
<tr><td>&nbsp;</td>
<td> <input type="text" name="channel" value="<%=sCategory%>"><!--<select name="channel">
<option>Autos <option>Careers <option>Classifieds/Auctions <option>Computers/Internet <option>Education <option>Entertainment <option>Games
<option>Health <option>Home/Real Estate <option>Lifestyle <option>Local <option>Money/Investing <option>News <option>People/Chat <option>Shopping <option>Small Business <option>Sports <option>Travel <option>Other
</select>-->
</td>
</tr>
</table>
<tr align=center bgcolor=ffffff>
<td colspan=2><input type="hidden" name="look" value="excite"> <input type="submit" value="Send"> <input type="reset" value="Clear">
</td></tr>
</table>
</form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>





