<!--#include file="index_tools.asp"-->
<!--#include file="tab_tools.asp"-->
<%







CLASS CTabFormatRed

	PROPERTY GET colorBackground()
		colorBackground = "#FFFFFF"
	END PROPERTY
	
	PROPERTY GET colorTab()
		colorTab = "#CC9933"
	END PROPERTY
	
	PROPERTY GET classTab()
		classTab = "navigationtab"
	END PROPERTY
	
	PROPERTY GET classSelected()
		classSelected = "navigationtabselected"
	END PROPERTY
	
	PROPERTY GET colorTabSelected()
		colorTabSelected = "#996600"
	END PROPERTY
	
	PROPERTY GET alignTabHoriz()
		alignTabHoriz = "right"
	END PROPERTY
	
	PROPERTY GET imageTL()
		imageTL = "images/pie_tl.gif"
	END PROPERTY
	
	PROPERTY GET imageTR()
		imageTR = "images/pie_tr.gif"
	END PROPERTY
	
	PROPERTY GET imageBL()
		imageBL = "images/pie_bl.gif"
	END PROPERTY

END CLASS







FUNCTION genLabel( bLink, sFile, sLabel )
	IF bLink THEN
		genLabel = "<a href=""" & sFile & """ class=""navigationtab"">" & Server.HTMLEncode(sLabel) & "</a>"
	ELSE
		genLabel = sLabel
	END IF
END FUNCTION

SUB outputTabs
%>
<table border="0" cellspacing="0" width="100%" cellpadding="0">
  <tr>
    <td align="right" valign="bottom">

<%

	DIM	oTabGen
	DIM	oTabData
	DIM	oTabFormat
	
	SET oTabGen = NEW CTabGenerate
	SET oTabData = NEW CTabDataFiles
	SET oTabFormat = NEW CTabFormatRed
	
	oTabData.Data = aFileList
	
	SET oTabGen.TabData = oTabData
	SET oTabGen.TabFormat = oTabFormat
	oTabGen.MaxCols = 13
	oTabGen.Current = g_nIndex
	oTabGen.makeTabs
	
	
	SET oTabFormat = Nothing
	SET oTabData = Nothing
	SET oTabGen = Nothing


IF FALSE THEN

%>
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="3"></td>
          <%
DIM i
DIM sBGColor

FOR i = 0 TO nFileCount-1
	IF i = g_nIndex THEN
		sBGColor = "#990000"
	ELSE
		sBGColor = "#CC6666"
	END IF
	aFileSplit = SPLIT( aFileList(i), vbTAB, -1, vbTextCompare )
          %>
          <td bgcolor="<%=sBGColor%>" valign="top"><img border="0"
            src="images/pie_tl.gif" width="8" height="8"></td>
          <th bgcolor="<%=sBGColor%>" style="color: #FFFFFF"><%=genLabel(i <> g_nIndex, aFileSplit(kFI_Name), aFileSplit(kFI_Title))%></th>
          <td bgcolor="<%=sBGColor%>" valign="top" align="right"><img border="0"
            src="images/pie_tr.gif" width="8" height="8"></td>
          <td width="3"></td>
          <%
NEXT 'i
          %>
        </tr>
      </table>
<%
END IF
%>
    </td>
  </tr>
</table>
<%
END SUB



SUB outputTimeBlock
%>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td bgcolor="#996633" class="header" valign="middle">
			<a href="./"><img border="0" src="images/bearpawc3.gif" alt="Bear Consulting Group" align="absmiddle" style="margin-left: 5px; filter:progid:DXImageTransform.Microsoft.Shadow(color=#663300,direction=135,strength=5);"></a>
&nbsp;Bear Consulting Group</td>
	</tr>
</table>
<table border="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#FFCC00"><font size="1">&nbsp; 122 Rachel Drive &nbsp;-&nbsp; Huntsville, AL 35806</font></td>
    <td bgcolor="#FFCC00" align="right"><font size="1">256-722-9128 &nbsp;</font></td>
  </tr>
</table>
<table border="0" cellspacing="0" width="100%" cellpadding="0">
  <tr>
    <td width="100%" bgcolor="#000000" height="2"><spacer type="block" height="1" width="1"></td>
  </tr>
</table>
<%
END SUB






SUB outputPad2
%>
<table border="0" cellspacing="0" width="100%" cellpadding="0">
  <tr>
    <td width="100%" height="6"><spacer type="block" height="1" width="1"></td>
  </tr>
</table>
<%
END SUB




outputTabs
outputTimeBlock
'outputPad
IF Response.Buffer THEN Response.Flush

%>