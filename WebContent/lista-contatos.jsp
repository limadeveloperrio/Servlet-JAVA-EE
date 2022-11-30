<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body>
	<c:import url="cabecalho.jsp" />
	<br>
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.bruno.dao.ContatoDao" />
	<center>
		<table>
			<!-- percorre contatos montando as linhas da tabela -->
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>DT Nasc</th>
			</tr>
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${contato.nome}</td>
					<td><c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>E-mail não informado</c:otherwise>
						</c:choose></td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern="dd/MM/yyyy" /></td>
				</tr>
			</c:forEach>
		</table>
	</center>
	<c:import url="rodape.jsp" />
</body>
</html>