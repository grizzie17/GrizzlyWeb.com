<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.nbci.com/"
sURL = "http://home.nbci.com/search/directory/results/1,61,-0,00.html?tag=st.sn.fd.srch.bar&keyword=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
