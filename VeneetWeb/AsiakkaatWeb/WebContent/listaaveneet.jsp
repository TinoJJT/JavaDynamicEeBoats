<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Vene"%>  
<%@ page import="java.util.ArrayList"%>
<%! @SuppressWarnings("unchecked") %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="main.css">
		<title>Kaikki veneet</title>
	</head>
	<body>
		<h1><a href="index.jsp">Veneet</a></h1>
			<div class="nav">
				<ul>
					<li><a href="ListaaVeneet">Kaikki Veneet</a></li>
					<li><a href="haeveneet.jsp">Hae veneitä</a></li>
					<li><a href="lisaavene.jsp">Lisää vene</a></li>
				</ul>
			</div>
		<br></br>
		<table>
		<tr>
			<th class="vaaka">Nimi</th>
			<th class="vaaka">Merkki ja malli</th>
			<th class="vaaka">Pituus</th>
			<th class="vaaka">Leveys</th>
			<th class="vaaka">Hinta</th>
			<th></th>
		</tr>
		<%
		if(request.getAttribute("veneet")!=null){	
			ArrayList<Vene> veneet = (ArrayList<Vene>)request.getAttribute("veneet");
			for(int i=0;i<veneet.size();i++){
				out.print("<tr>");
				out.print("<td>" + veneet.get(i).getNimi() + "</td>");
				out.print("<td>" + veneet.get(i).getMerkkimalli() + "</td>");
				out.print("<td>" + veneet.get(i).getPituus() + "m</td>");
				out.print("<td>" + veneet.get(i).getLeveys() + "m</td>");
				out.print("<td>" + veneet.get(i).getHinta() + "e</td>");
				out.print("<td><a class='poista' href='EtsiPoistaVene?vene_id="+veneet.get(i).getVene_id()+"'><abbr title='Poista'>Poista</abbr></a>");
				out.print("<a class='muuta' href='EtsiMuutaVene?vene_id="+veneet.get(i).getVene_id()+"'><abbr title='Muuta'>Muuta</abbr></a></td>\n");
				out.print("</tr>");
			}	
		}
		%>
		</table>
	</body>
</html>