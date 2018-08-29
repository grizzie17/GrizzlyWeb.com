<%

DIM	sQuery
sQuery = Request.QueryString
IF "" <> sQuery THEN sQuery = "?" & sQuery

Response.Redirect "../motorcycle.asp" & sQuery


%>
