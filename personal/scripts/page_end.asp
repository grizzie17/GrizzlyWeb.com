		</td>
	</tr>
</table>
</div>
<%
IF Response.Buffer THEN Response.Flush
%>
<p align="center"><span style="font-size:small">Website Questions or Comments? <span class="pobox">We b mas te rs</span></span><br>
		<span style="font-size:xx-small">Last Modified <%=DATEADD("h", g_nServerTimeZoneOffset, g_dLocalPageDateModified)%>&nbsp;&nbsp; 
		&nbsp;&nbsp;<%=g_sCopyright%></span></p>
