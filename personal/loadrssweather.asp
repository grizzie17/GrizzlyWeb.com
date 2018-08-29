<%@ Language=VBScript %>
<%
OPTION EXPLICIT

DIM	g_oFSO
SET	g_oFSO = Server.CreateObject("Scripting.FileSystemObject")
%>
<!--#include file="scripts/findfiles.asp"-->
<!--#include file="scripts/rss.asp"-->
<!--#include file="scripts/include_cache.asp"-->
<!--#include file="scripts/rssweather.asp"-->
<%



DIM	q_sZIP

q_sZIP = Request("z")



rssweatheraws q_sZIP





SET g_oFSO = Nothing




%>