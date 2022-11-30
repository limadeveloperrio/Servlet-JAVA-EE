<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*, br.com.bruno.dao.*, br.com.bruno.modelo.*"%>

<html>
<body>
	<center>
		<br>
		<h1>Lista de contatos</h1>
		</h1>
		<hr>
		<br>
		<table>
			<tr>
				<th>Nome</th><td>---</td>
				<th>E-mail</th><td>---</td>
				<th>Endereço</th><td>---</td>
				<th>Dt Nasc</th>
			</tr>
			<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
			for (Contato contato : contatos) {
				String dataNascFormatada = formatter.format(contato.getDataNascimento().getTime());
			%>
			<tr>
				<td><%=contato.getNome()%></td><td></td>
				<td><%=contato.getEmail()%></td><td></td>
				<td><%=contato.getEndereco()%></td><td></td>
				<td><%= dataNascFormatada %></td>
			</tr>
			<%
			}
			%>
		</table>
		<br>
		<hr>
	</center>
</body>
</html>