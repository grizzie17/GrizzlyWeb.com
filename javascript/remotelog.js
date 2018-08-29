
function handleRemoteLog()
{
	var sHost;
	if ( window.location.hostname )
		sHost = window.location.hostname
	else
		sHost = window.location.href;
	var sTemp = sHost.toLowerCase();

	if (  sTemp.indexOf("grizzlyweb.") < 0  
			&&  sTemp.indexOf("localhost") < 0 )
	{
		var sTempLoc = window.location.href;
		sTemp = sTempLoc.toLowerCase();
		var nPos = sTemp.indexOf("grizzly");
		if ( 0 < nPos )
		{
			var nEnd = sTemp.indexOf("/", nPos+1);
			if ( nEnd < 0 )
				sTempLoc = sTemp.substring(nPos, sTemp.length) + "/";
			else
				sTempLoc = sTemp.substring(nPos, nEnd+1);
		}
		document.writeln('<br clear="all">');
		document.writeln('<div align="right">');
		document.write('<img src="http://grizzlyweb.com/cgi-bin/remotelog.asp');
		document.writeln('?base=' + sTempLoc + '&refer=' + document.referrer + '" nosave>');
		document.writeln('</div>');
	}
}

handleRemoteLog();

