
<table border="2" cellspacing="1" cellpadding="2">
<%
	DIM	sName
	
	FOR EACH sName IN Request.ServerVariables
%>
  <tr>
    <th align="left"><%=sName%></th>
    <td><%=Request.ServerVariables(sName)%></td>
  </tr>
<%
	NEXT 'sName
%>
</table>

