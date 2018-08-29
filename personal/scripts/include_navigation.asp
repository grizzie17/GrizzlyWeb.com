<!--#include file="tab_tools.asp"-->
<%







CLASS CTabFormatRed

	PROPERTY GET colorBackground()
		colorBackground = "#FFFFFF"
	END PROPERTY
	
	PROPERTY GET colorTab()
		colorTab = "#669966"
	END PROPERTY
	
	PROPERTY GET classTabGroup()
		classTabGroup = "TopNavigation"
	END PROPERTY
	
	PROPERTY GET classTabGroupInverted()
		classTabGroupInverted = "TopNavigationInverted"
	END PROPERTY
	
	PROPERTY GET classTab()
		classTab = "navigationtab"
	END PROPERTY
	
	PROPERTY GET classSelected()
		classSelected = "SelectedTab"
	END PROPERTY
	
	PROPERTY GET colorTabSelected()
		colorTabSelected = "#006600"
	END PROPERTY
	
	PROPERTY GET alignTabHoriz()
		alignTabHoriz = "center"
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







SUB outputTabs
%>
<table border="0" cellspacing="0" width="100%" cellpadding="0">
  <tr>
    <td valign="bottom">

<%

	DIM	oTabGen
	DIM	oTabData
	DIM	oTabFormat
	
	SET oTabGen = NEW CTabGenerate
	SET oTabData = NEW CTabDataFiles
	SET oTabFormat = NEW CTabFormatRed
	
	oTabData.Data = g_navtab_aFileList
	
	SET oTabGen.TabData = oTabData
	SET oTabGen.TabFormat = oTabFormat
	oTabGen.MaxCols = 100
	oTabGen.Current = g_navtab_nIndex
	oTabGen.makeTabs
	
	
	SET oTabFormat = Nothing
	SET oTabData = Nothing
	SET oTabGen = Nothing


%>
    </td>
  </tr>
</table>
<%
END SUB


SUB outputJavaScript
%>

<script language="JavaScript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}

function goPage( s )
{
	replaceWindowURL( window, s );
}

function getTimeString( oTime )
{
	var hours = oTime.getHours();
	var minutes = oTime.getMinutes();
	var meridian;
	
	// determine the meridian
	if ( 11 < hours )
	{
		// 12 o'clock will go to zero
		//  but it will be fixed below
		hours = hours - 12;
		meridian = "PM";
	}
	else
	{
		meridian = "AM";
	}
	
	// fix the parts for display
	if ( 0 == hours )
		hours = 12;
	if ( minutes < 10 )
		minutes = "0" + minutes;

	var timeString = hours + ":" + minutes + " " + meridian;
	
	return timeString;
}

function getDateString( dNow )
{
	var aMonths = new Array( "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" );
	var dd = dNow.getDate();
	var mm = dNow.getMonth();
	var yy = dNow.getFullYear();
	return aMonths[mm] + " " + dd + ", " + yy;
}



function getTodayString()
{
	var dNow = new Date();
	var sDOW = new Array( "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" );
	var nDOW = dNow.getDay();
	var sTime = getTimeString( dNow );
	var sDate = getDateString( dNow );
	return '<font face="sans-serif" size="1">&nbsp;' + sDOW[nDOW] + ', ' + sDate + ' ' + sTime + '</font>';
}

//-->
</script>
<script language="JavaScript1.1">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}
//-->
</script>
<script language="JavaScript1.2">
<!--

function showTime()
{
	// this is here to safeguard us from the wrong browsers
	if ( !document.all  &&  !document.layers )
		return;

	var clock = getTodayString();
	
	// here is the secret to changing a "span" or "div" dynamically.
	if ( document.layers )
	{
		var	oInnerDoc = document.layers["dynclock"].document;
		oInnerDoc.write( clock );
		oInnerDoc.close();
	}
	else if ( document.all )
	{
		dynclock.innerHTML = clock;
	}
	
	setTimeout( "showTime()", 15*1000 );
}

//if ( document.all )
//	setTimeout( "showTime()", 15*1000 );

//-->
</script>

<%
END SUB



SUB outputTimeBlock
%>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td bgcolor="#006600" class="header">&nbsp;Personal</td>
	</tr>
</table>
<table border="0" cellspacing="0" width="100%">
  <tr>
    <td bgcolor="#FFCC00" nowrap><font size="1">&nbsp;<span id="dynclock"><script language="JavaScript"><!--
    document.write( getTodayString() );
    //--></script></span></font></td>
  </tr>
</table>
<table border="0" cellspacing="0" width="100%" cellpadding="0">
  <tr>
    <td width="100%" bgcolor="#000000" height="2" style="height: 2px"></td>
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
'outputTimeBlock
'outputPad
IF Response.Buffer THEN Response.Flush

%>