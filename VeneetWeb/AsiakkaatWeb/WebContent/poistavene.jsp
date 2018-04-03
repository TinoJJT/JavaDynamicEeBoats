<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Vene"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="main.css">
		<title>Veneen Poisto</title>
	</head>
	<%
	Vene vene=null;
	if(request.getAttribute("vene")!=null){
		vene = (Vene)request.getAttribute("vene");
	}else{
		response.sendRedirect("index.jsp");
	}
	%>
	<body>
		<h1><a href="index.jsp">Veneet</a></h1>
			<div class="nav">
				<ul>
					<li><a href="ListaaVeneet">Kaikki Veneet</a></li>
					<li><a href="haeveneet.jsp">Hae veneitä</a></li>
					<li><a href="lisaavene.jsp">Lisää vene</a></li>
				</ul>
			</div>
		<div class="content">
			<h2>Oletko Varma että haluat poistaa veneen?</h2>
			<p><b>Nimi: </b><%=vene.getNimi()%></p><br>
			<p><b>Merkki ja malli: </b><%=vene.getMerkkimalli()%></p><br>
			<p><b>Pituus: </b><%=vene.getPituus()%></p><br>
			<p><b>Leveys: </b><%=vene.getLeveys()%></p><br>
			<p><b>Hinta: </b><%=vene.getHinta()%></p><br>
			
			<a href="PoistaVene?poista_id=<%=vene.getVene_id()%>"><button><b>Varmista Poisto</b></button></a>
		</div>
	</body>
</html>