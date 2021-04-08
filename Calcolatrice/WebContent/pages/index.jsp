<%@page import="it.calcolatrice.servlet.ProvaDiv"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
</head>
<body>
	<h1>Benvenuto</h1>
	<form action="/Calcolatrice/ProvaSum" method="POST">
		<div>
			<label>Inserisci il primo numero: </label> <input type="text"
				name="fn" />
		</div>
		<div>
			<label>Inserisci il secondo numero: </label> <input type="text"
				name="sn" />
		</div>
		<div>
			<input type="submit" value="+" /> <input type="submit" value="-"
				onclick="form.action='/Calcolatrice/ProvaDif';"/> <input type="submit" value="*" onclick="form.action='/Calcolatrice/ProvaMult';" /> <input
				type="submit" value="/" onclick="form.action='/Calcolatrice/ProvaDiv';" />
		</div>

		<p>${result}</p>

		
	</form>
</body>
</html>