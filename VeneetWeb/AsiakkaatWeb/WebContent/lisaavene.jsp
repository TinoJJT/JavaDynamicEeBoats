<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
	<link rel="stylesheet" type="text/css" href="main.css">
	<title>Veneen lisääminen</title>
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
	<form action="LisaaVene" method="post" name="lisaaLomake" id="lisaaLomake">
		<table>
			<tr>
				<th align="right" style="width:33%" class="pysty">Nimi:</th>
				<td><input type="text" name="nimi" id="nimi"></td>
				<th align="left" style="width:33%" class="pysty"></th>
			</tr>
			<tr>
				<th align="right" class="pysty">Merkkimalli:</th>
				<td><input type="text" name="merkkimalli" id="merkkimalli"></td>
			</tr>
			<tr>
				<th align="right" class="pysty">Pituus:</th>
				<td><input type="text" name="pituus" id="pituus"></td>
				<th align="left" class="pysty">metriä</th>
			</tr>
			<tr>
				<th align="right" class="pysty">Leveys:</th>
				<td><input type="text" name="leveys" id="leveys"></td>
				<th align="left" class="pysty">metriä</th>
			</tr>
			<tr>
				<th align="right" class="pysty">Hinta:</th>
				<td><input type="text" name="hinta" id="hinta"></td>
				<th align="left" class="pysty">euroa</th>
			</tr>
			<tr>
				<td colspan="2" class="nappiSarake"><input type="submit" value="Lisää">
			</tr>
		</table>
	</form>
		<%
		if(request.getParameter("ilmo")!=null){
			if(request.getParameter("ilmo").equals("1")){
				out.print("Veneen lisääminen onnistui");	
			}else if(request.getParameter("ilmo").equals("0")){
				out.print("Veneen lisääminen ei onnistunut");	
			}
		}
		%>
		<script>
			$(document).ready(function(){
				$("#nimi").focus();
				
			    $("#lisaaLomake").validate({						
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
						document.forms["lisaaLomake"].submit();
					}		
				});
			});
		
		</script>
	</body>
</html>