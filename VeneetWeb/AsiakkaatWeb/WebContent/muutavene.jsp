<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Vene"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Veneen tietojen muutos</title>
</head>
<%
Vene vene=null;
if(request.getAttribute("vene")!=null){
	vene = (Vene)request.getAttribute("vene");
}else{
	response.sendRedirect("haeveneet.jsp");
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
		<form action="MuutaVene" method="post" name="muutaLomake" id="muutaLomake">
			<table>
				<tr>
					<th align="right" style="width:33%" class="pysty">Nimi:</th>
					<td><input type="text" name="nimi" id="nimi" value="<%=vene.getNimi()%>"></td>
					<th align="left" style="width:33%" class="pysty"></th>
				</tr>
				<tr>
					<th align="right" class="pysty">Merkki ja malli:</th>
					<td><input type="text" name="merkkimalli" id="merkkimalli" value="<%=vene.getMerkkimalli()%>"></td>
				</tr>
				<tr>
					<th align="right" class="pysty">Pituus:</th>
					<td><input type="text" name="pituus" id="pituus" value="<%=vene.getPituus()%>"></td>
					<th align="left" class="pysty">metriä</th>
				</tr>
				<tr>
					<th align="right" class="pysty">Leveys:</th>
					<td><input type="text" name="leveys" id="leveys" value="<%=vene.getLeveys()%>"></td>
					<th align="left" class="pysty">metriä</th>
				</tr>
				<tr>
					<th align="right" class="pysty">Hinta:</th>
					<td><input type="text" name="hinta" id="hinta" value="<%=vene.getHinta()%>"></td>
					<th align="left" class="pysty">euroa</th>
				</tr>
				<tr>
					<td colspan="1"><input type="submit" value="Vahvista muutos">
				</tr>
			</table>
			<%-- Tallettaa id:n muutostapahtumaa varten. --%>
			<input type="hidden" name="vene_id" value="<%=request.getParameter("vene_id")%>">
		</form>
		<script>
			$(document).ready(function(){
				$("#nimi").focus();
			    });
			    
			    $("#muutaLomake").validate({						
			    	rules: {
						nimi:  {
							required: true,
							minlength: 2,
							maxlength: 50
						},	
						merkkimalli:  {
							required: true,
							minlength: 2,
							maxlength: 50
						},
						pituus:  {
							required: true,
							number: true,
							min: 1
						},	
						leveys:  {
							required: true,
							number: true,
							min: 0.3
						},
						hinta:  {
							required: true,
							digits: true,
							min: 0
						}
					},
					messages: {
						nimi: {
							required: "Pakollinen",
							minlength: "Pituus ei riitä",
							maxlength: "Liian pitkä"
							
						},
						merkkimalli: {
							required: "Pakollinen",
							minlength: "Pituus ei riitä",
							maxlength: "Liian pitkä"
						},
						pituus: {
							required: "Pakollinen",
							number: "Anna desimaaliluku",
							min: "Minimi pituus 1 metri"
						},
						leveys: {
							required: "Pakollinen",
							number: "Anna desimaaliluku",
							min: "Minimi leveys 0.3 metriä"
						},
						hinta: {
							required: "Pakollinen",
							digits: "Anna kokonaisluku",
							min: "Hinta ei voi olla negatiivinen"
						}
					},			
					submitHandler: function (form) {
						document.forms["muutaLomake"].submit();
					}		
				});
			});
		
		</script>
	</body>
</html>