<script language="JavaScript">
<!--

function domain_select()
{
	var sUrl;
	var oForm = document.Login;
	if ( 0 < oForm.txtUserName.value.length )
	{
		var sTemp = oForm.txtUserName.value.toLowerCase();
		var i = sTemp.indexOf("@");
		
		if ( 0 < i )
		{
			var sDomain = getDomain();
			oForm.txtUserName.value = sTemp.substring(0,i) + "@" + sDomain;
		}
		
	}
	return false;
}

function getDomain()
{
	return "<%=LCASE(g_sDomain)%>";
	//var sUrl;
	//var oForm = document.Login;
	//var obj = oForm.domain;
	//var n = obj.selectedIndex;
	//var s = obj.options[n].value;
	//return s.toLowerCase();
}

function checkRequiredLogin( theForm )
{
	var bMissing = false;

	if ( 0 == theForm.txtUserName.value.length )
		bMissing = true;
	if ( 0 == theForm.txtPassword.value.length )
		bMissing = true;
	if ( bMissing )
	{
		alert( "Both User-ID and Password are required.\n"
				+ "Please complete them and Submit again.");
		return false;
	}
	else
	{
		var sTemp = theForm.txtUserName.value.toLowerCase();
		var sDomain = getDomain();
		
		if ( sTemp.indexOf("@") < 0 )
			sTemp = sTemp + "@" + sDomain;
		theForm.txtUserName.value = sTemp;
		theForm.action = "http://mail." + sDomain + "/Login.aspx"
		return true;
	}
}

function checkUserid( oUser )
{
	var sTemp = oUser.value.toLowerCase();
	if ( 0 < sTemp.length )
	{
		if ( sTemp.indexOf("@") < 0 )
			oUser.value = sTemp + "@" + getDomain();
	}
	return true;
}
//-->
</script>
<form name="Login" method="post" action="http://mail.yourdomain.com/Login.aspx" id="Login" onsubmit="return checkRequiredLogin(this)">
	<table>
		<input type="hidden" name="__EVENTTARGET" value="LoginImageButton" />
		<input type="hidden" name="__EVENTARGUMENT" value />
		<input type="hidden" name="__VIEWSTATE" value="dDwtMTcxNTM0NDMyMTt0PHA8bDxfX19SZXN1bHRGYWlsdXJlO19fX1Jlc3VsdFN1Y2Nlc3M7X19fUGFnZVRpdGxlOz47bDxcZTtcZTtTbWFydGVyTWFpbCBMb2dpbiAtIFNtYXJ0ZXJNYWlsOz4+O2w8aTwxPjs+O2w8dDw7bDxpPDE2PjtpPDE4PjtpPDIwPjtpPDI2Pjs+O2w8dDx0PDt0PGk8MjA+O0A8VXNlIEJyb3dzZXIgTGFuZ3VhZ2U7Q2hpbmVzZSAoUGVvcGxlJ3MgUmVwdWJsaWMgb2YgQ2hpbmEpIC0g5Lit5paHKOeugOS9kykgKOS4reWNjuS6uuawkeWFseWSjOWbvSk7Q2hpbmVzZSAoVGFpd2FuKSAtIOS4reaWhyjnuYHpq5QpICjlj7DngaMpO0RhbmlzaCAoRGVubWFyaykgLSBkYW5zayAoRGFubWFyayk7RHV0Y2ggLSBOZWRlcmxhbmRzO0VuZ2xpc2g7RmlubmlzaCAtIHN1b21pO0ZyZW5jaCAtIGZyYW7Dp2FpcztHZXJtYW4gLSBEZXV0c2NoO0h1bmdhcmlhbiAtIE1hZ3lhcjtJdGFsaWFuIC0gaXRhbGlhbm87SmFwYW5lc2UgLSDml6XmnKzoqp47S29yZWFuIChLb3JlYSkgLSDtlZzqta3slrQgKOuMgO2VnOuvvOq1rSk7UG9saXNoIC0gcG9sc2tpO1BvcnR1Z3Vlc2UgLSBQb3J0dWd1w6pzO1BvcnR1Z3Vlc2UgKEJyYXppbCkgLSBQb3J0dWd1w6pzIChCcmFzaWwpO3B0LWJyLWFsdGVybmF0ZTtSdXNzaWFuIC0g0YDRg9GB0YHQutC40Lk7U3BhbmlzaCAtIGVzcGHDsW9sO1N3ZWRpc2ggLSBzdmVuc2thOz47QDxcZTt6aC1DTjt6aC1UVztkYS1ESztubDtlbjtmaTtmcjtkZTtodTtpdDtqYTtrby1rcjtwbDtwdDtwdC1icjtwdC1ici1hbHRlcm5hdGU7cnU7ZXM7c3Y7Pj47bDxpPDA+Oz4+Ozs+O3Q8cDxwPGw8VGV4dDs+O2w8UmVtZW1iZXIgbWU7Pj47Pjs7Pjt0PHA8cDxsPEltYWdlVXJsO1dpZHRoO0hlaWdodDtfIVNCOz47bDwvc3BhY2VyLmdpZjsxPDBweD47MTwwcHg+O2k8Mzg0Pjs+Pjs+Ozs+O3Q8cDxwPGw8TmF2aWdhdGVVUkw7PjtsPGh0dHA6Ly93d3cuc21hcnRlcnRvb2xzLmNvbS9IZWxwL1NtYXJ0ZXJNYWlsL3YzL0RlZmF1bHQuYXNweD9wPVVTUiZ2PTMuMy4yMzY5JnBhZ2U9TG9naW5Vc2VyOz4+Oz47Oz47Pj47Pj47bDxjaGtBdXRvTG9naW47YnRuRW50ZXJDbGljazs+Ptg1gVoAyqupcY3isvZxYH7i9ibz" />
		<tr>
			<td><b>User ID</b><br>
			<input name="txtUserName" type="text" size="20" id="txtUserName" autocomplete="off" onchange="checkUserid(this)" />
			</td>
		</tr>
		<tr>
			<td><b>Password</b><br>
			<input name="txtPassword" type="password" size="20" id="txtPassword" autocomplete="off" value="" />
			</td>
		</tr>
		<tr>
			<td align="right">
			<input type="hidden" name="LanguageList" value />
			<input type="hidden" name="chkAutoLogin" value />
			<input type="submit" name="btnEnterClick" id="btnEnterClick" alt=" " border="0" value="Login" />
			</td>
		</tr>
	</table>
</form>