/*
'---------------------------------------------------------------------
'
'            Copyright 1986 .. 2009 Bear Consulting Group
'                          All Rights Reserved
'
'    This software-file/document, in whole or in part, including	
'    the structures and the procedures described herein, may not	
'    be provided or otherwise made available without prior written
'    authorization.  In case of authorized or unauthorized
'    publication or duplication, copyright is claimed.
'
'---------------------------------------------------------------------
*/


function ajax()
{
	this.m_oHTTP = null;
	this.m_sDivID = "";
	this.m_bLoaded = false;
	
	this.getHTTP = function()
	{
		var oHTTP = null;
		
		if (window.XMLHttpRequest) // if Mozilla, Safari etc
		{
			oHTTP = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) // if IE
		{
			try
			{
				oHTTP = new ActiveXObject("Msxml2.XMLHTTP");
			}
			catch (e)
			{
				try
				{
					oHTTP = new ActiveXObject("Microsoft.XMLHTTP");
				}
				catch (e)
				{
					oHTTP = null;
				}
			}
		}
		else
		{
			oHTTP = null;
		}
		return oHTTP;
	};
	
	this.loadPage = function( sURL )
	{
	};
}
