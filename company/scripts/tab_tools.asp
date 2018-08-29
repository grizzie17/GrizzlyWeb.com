<%


CLASS CTabFormatDummy

	PROPERTY GET colorBackground()
		colorBackground = "#999999"
	END PROPERTY
	
	PROPERTY GET colorTab()
		colorTab = "#CCCCCC"
	END PROPERTY
	
	PROPERTY GET classTab()
		classTab = "xxxxxx"
	END PROPERTY
	
	PROPERTY GET classSelected()
		classSelected = "yyyyyy"
	END PROPERTY
	
	PROPERTY GET colorTabSelected()
		colorTabSelected = "#FFFFFF"
	END PROPERTY
	
	PROPERTY GET alignTabHoriz()
		alignTabHoriz = "center"
	END PROPERTY
	
	PROPERTY GET imageTL()
		imageTL = "../images/pie_tl_gray.gif"
	END PROPERTY
	
	PROPERTY GET imageTR()
		imageTR = "../images/pie_tr_gray.gif"
	END PROPERTY
	
	PROPERTY GET imageBL()
		imageBL = "../images/pie_bl_gray.gif"
	END PROPERTY

	PROPERTY GET imageBR()
		imageBR = "../images/pie_br_gray.gif"
	END PROPERTY
	
END CLASS


CLASS CTabDataDummy

	PRIVATE m_aData
	PRIVATE m_i
	PRIVATE m_sURL

	PRIVATE SUB Class_Initialize
		m_sURL = ""
		m_i = 0
		m_aData = ARRAY( _
			"One", _
			"Two", _
			"Three", _
			"Four", _
			"Five", _
			"Six", _
			"Seven", _
			"Eight", _
			"Nine", _
			"Ten" _
			)
	END SUB

	
	PROPERTY GET RecordCount()
		RecordCount = UBOUND(m_aData) + 1
	END PROPERTY
	
	PROPERTY GET EOF()
		IF m_i <= UBOUND(m_aData) THEN
			EOF = FALSE
		ELSE
			EOF = TRUE
		END IF
	END PROPERTY
	
	SUB MoveFirst()
		m_i = 0
	END SUB
	
	SUB MoveNext()
		m_i = m_i + 1
	END SUB
	
	FUNCTION IsCurrent( x )
		IF LCASE(x) = LCASE(m_aData(m_i)) THEN
			IsCurrent = TRUE
		ELSE
			IsCurrent = FALSE
		END IF
	END FUNCTION
	
	PROPERTY GET HREF()
		HREF = m_sURL & m_aData(m_i)
	END PROPERTY
	
	PROPERTY GET TabLabel()
		TabLabel = m_aData(m_i)
	END PROPERTY
	
	'----------------
	
	PROPERTY LET URL( s )
		m_sURL = s
	END PROPERTY
	
END CLASS




CLASS CTabGenerate

	PRIVATE m_oData
	PRIVATE m_oFormat
	PRIVATE m_xCurrent
	PRIVATE m_nMaxCols
	
	PRIVATE SUB Class_Initialize
		SET m_oData = Nothing
		SET m_oFormat = Nothing
		m_xCurrent = ""
		m_nMaxCols = 8
	END SUB
	
	PRIVATE SUB Class_Terminate
		SET m_oData = Nothing
		SET m_oFormat = Nothing
	END SUB
	
	PROPERTY SET TabData( o )
		SET m_oData = o
	END PROPERTY
	
	PROPERTY SET TabFormat( o )
		SET m_oFormat = o
	END PROPERTY
	
	PROPERTY LET Current( x )
		m_xCurrent = x
	END PROPERTY
	
	PROPERTY LET MaxCols( n )
		m_nMaxCols = n
	END PROPERTY
	
	PUBLIC SUB makeTabs()
		IF m_nMaxCols < m_oData.RecordCount THEN
			outputTabsVert
		ELSE
			outputTabsHoriz
		END IF
	END SUB
	
	PUBLIC SUB makeTabsInverted()
		IF m_nMaxCols < m_oData.RecordCount THEN
			'outputTabsVert
		ELSE
			outputTabsInvertedHoriz
		END IF
	END SUB
	


	PRIVATE SUB outputTabsHoriz()
	
		DIM	sTBGColor
		DIM	sTabColor
		DIM	sSelectColor
		
		sTBGColor = m_oFormat.colorBackground
		sTabColor = m_oFormat.colorTab
		sSelectColor = m_oFormat.colorTabSelected
		
		DIM	sTabClass
		DIM	sSelectClass
		
		sTabClass = m_oFormat.classTab
		sSelectClass = m_oFormat.classSelected
		
		DIM	sImageTL
		DIM	sImageTR
		
		sImageTL = m_oFormat.imageTL
		sImageTR = m_oFormat.imageTR
	%>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td bgcolor="<%=sTBGColor%>" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
	</table>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td align="<%=m_oFormat.alignTabHoriz%>" bgcolor="<%=sTBGColor%>">
	<%
	
		IF 0 < m_oData.RecordCount THEN
	
			DIM	sBGColor
			DIM	bThisID
			DIM	sClass
			
			m_oData.MoveFirst
			
			Response.Write "<table border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCRLF
			Response.Write "<tr>" & vbCRLF
			Response.Write "<td width=""3""></td>" & vbCRLF
			DO UNTIL m_oData.EOF
				IF m_oData.IsCurrent( m_xCurrent ) THEN
					bThisID = TRUE
					sBGColor = sSelectColor
					sClass = sSelectClass
				ELSE
					bThisID = FALSE
					sBGColor = sTabColor
					sClass = sTabClass
				END IF
				Response.Write "<td valign=""top"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageTL & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				
				Response.Write "<th align=""center"" bgcolor=""" & sBGColor & """"
				IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
				Response.Write ">"
				IF bThisID THEN
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
				ELSE
					Response.Write "<a href=""" & m_oData.HREF & """"
					IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
					Response.Write ">"
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
					Response.Write "</a>"
				END IF
				Response.Write "</th>" & vbCRLF
				
				Response.Write "<td valign=""top"" align=""right"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageTR & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				
				Response.Write "<td width=""3""></td>" & vbCRLF
	
				m_oData.MoveNext
			LOOP
			
			Response.Write "</tr>" & vbCRLF
			Response.Write "</table>" & vbCRLF
		END IF
	%>
	    </td>
	  </tr>
	</table>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td bgcolor="<%=sSelectColor%>" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
	</table>
	<%
	END SUB
	
	PRIVATE SUB outputTabsInvertedHoriz()
	
		DIM	sTBGColor
		DIM	sTabColor
		DIM	sSelectColor
		
		sTBGColor = m_oFormat.colorBackground
		sTabColor = m_oFormat.colorTab
		sSelectColor = m_oFormat.colorTabSelected
		
		DIM	sTabClass
		DIM	sSelectClass
		
		sTabClass = m_oFormat.classTab
		sSelectClass = m_oFormat.classSelected
		
		DIM	sImageBL
		DIM	sImageBR
		
		sImageBL = m_oFormat.imageBL
		sImageBR = m_oFormat.imageBR
	%>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td bgcolor="<%=sSelectColor%>" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
	</table>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td align="<%=m_oFormat.alignTabHoriz%>" bgcolor="<%=sTBGColor%>">
	<%
	
		IF 0 < m_oData.RecordCount THEN
	
			DIM	sBGColor
			DIM	bThisID
			DIM	sClass
			
			m_oData.MoveFirst
			
			Response.Write "<table border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCRLF
			Response.Write "<tr>" & vbCRLF
			Response.Write "<td width=""3""></td>" & vbCRLF
			DO UNTIL m_oData.EOF
				IF m_oData.IsCurrent( m_xCurrent ) THEN
					bThisID = TRUE
					sBGColor = sSelectColor
					sClass = sSelectClass
				ELSE
					bThisID = FALSE
					sBGColor = sTabColor
					sClass = sTabClass
				END IF
				Response.Write "<td valign=""bottom"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageBL & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				
				Response.Write "<th align=""center"" bgcolor=""" & sBGColor & """"
				IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
				Response.Write ">"
				IF bThisID THEN
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
				ELSE
					Response.Write "<a href=""" & m_oData.HREF & """"
					IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
					Response.Write ">"
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
					Response.Write "</a>"
				END IF
				Response.Write "</th>" & vbCRLF
				
				Response.Write "<td valign=""bottom"" align=""right"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageBR & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				
				Response.Write "<td width=""3""></td>" & vbCRLF
	
				m_oData.MoveNext
			LOOP
			
			Response.Write "</tr>" & vbCRLF
			Response.Write "</table>" & vbCRLF
		END IF
	%>
	    </td>
	  </tr>
	</table>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td bgcolor="<%=sTBGColor%>" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
	</table>
	<%
	END SUB
	
	
	SUB outputTabsVert()
		DIM	sTBGColor
		DIM	sTabColor
		DIM	sSelectColor
		
		sTBGColor = m_oFormat.colorBackground
		sTabColor = m_oFormat.colorTab
		sSelectColor = m_oFormat.colorTabSelected
		
		DIM	sTabClass
		DIM	sSelectClass
		
		sTabClass = m_oFormat.classTab
		sSelectClass = m_oFormat.classSelected
		
		DIM	sImageTL
		DIM	sImageTR
		DIM	sImageBL
		
		sImageTL = m_oFormat.imageTL
		sImageTR = m_oFormat.imageTR
		sImageBL = m_oFormat.imageBL
		
	%>
	<table border="0" cellspacing="0" cellpadding="0" align="left">
	  <tr>
	    <td bgcolor="<%=sTBGColor%>" width="6"><spacer type="block" height="1" width="1"></td>
	    <td bgcolor="<%=sTBGColor%>" align="right">
	<%
	
		IF 0 < m_oData.RecordCount THEN
		
			m_oData.MoveFirst
			
			DIM	sBGColor
			DIM	bThisID
			DIM	sClass
			
			Response.Write "<table border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCRLF
			Response.Write "<tr>" & vbCRLF
			Response.Write "<td height=""3"" colspan=""3""></td>" & vbCRLF
			Response.Write "</tr>" & vbCRLF
			DO UNTIL m_oData.EOF
				Response.Write "<tr>" & vbCRLF
				IF m_oData.IsCurrent( m_xCurrent ) THEN
					bThisID = TRUE
					sBGColor = sSelectColor
					sClass = sSelectClass
				ELSE
					bThisID = FALSE
					sBGColor = sTabColor
					sClass = sTabClass
				END IF
				Response.Write "<td valign=""top"" align=""left"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageTL & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				
				Response.Write "<th bgcolor=""" & sBGColor & """ align=""right"" rowspan=""2"""
				IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
				Response.Write ">"
				IF bThisID THEN
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
				ELSE
					Response.Write "<a href=""" & m_oData.HREF & """"
					IF "" <> sClass THEN Response.Write " class=""" & sClass & """"
					Response.Write ">"
					Response.Write Server.HTMLEncode(m_oData.TabLabel)
					Response.Write "</a>"
				END IF
				Response.Write "</th>" & vbCRLF
				Response.Write "<td bgcolor=""" & sBGColor & """ rowspan=""2"">"
				Response.Write "&nbsp;"
				Response.Write "</td>" & vbCRLF
				Response.Write "</tr>" & vbCRLF
				
				Response.Write "<tr>" & vbCRLF
				Response.Write "<td valign=""bottom"" align=""left"" bgcolor=""" & sBGColor & """>"
				Response.Write "<img src=""" & sImageBL & """ width=""8"" height=""8"">"
				Response.Write "</td>" & vbCRLF
				Response.Write "</tr>" & vbCRLF
				
				Response.Write "<tr>" & vbCRLF
				Response.Write "<td height=""3"" colspan=""3""></td>" & vbCRLF
				Response.Write "</tr>" & vbCRLF
	
				m_oData.MoveNext
			LOOP
			
			'Response.Write "</tr>" & vbCRLF
			Response.Write "</table>" & vbCRLF
		END IF
	
	
	%>
	    </td>
	    <td width="6" bgcolor="<%=sSelectColor%>"><spacer type="block" height="1" width="1"></td>
	  </tr>
	</table>
	<%
	END SUB
	

END CLASS


%>