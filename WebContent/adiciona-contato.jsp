<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="calendario" %>
<head>
<title>Adiciona</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
<c:import url="cabecalho.jsp" />
	<center><h1>Adiciona Contatos</h1></center>
	<hr />
	<center>
	
	<form action="adicionaContato">
	<table><tr>
		<td>Nome: </td><td><input type="text" name="nome" /></td> 
		</tr>
		<tr>
		<td>E-mail:</td><td> <input	type="text" name="email" /></td> 
		</tr>
		<tr>		
		<td>Endereço:</td><td> <input type="text" name="endereco" /></td>
		</tr>
		<tr>
		<td>Data Nascimento:</td><td> <calendario:campoData id="dataNascimento" /></td>
		</tr><td></td>
		<tr><td>
		<center><input type="submit" value="Gravar" /></center>
		</td></tr>
	</table>
	</form>
	
	</center>
	<c:import url="rodape.jsp" />
</body>
</html>