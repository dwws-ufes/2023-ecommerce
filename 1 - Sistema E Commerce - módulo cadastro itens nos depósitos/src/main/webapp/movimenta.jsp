<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.JavaBeans"%>
    <%@ page import="java.util.ArrayList"%>
    <%
    ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("pessoa");
    %>
    
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Sistema de Cadastro de itens</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Sistema de Cadastro de itens</h1>
<a href="novo.html" class="Botao1">Novo registro</a>
<table id="tabela">
	<thead>
		<tr>
			<th>NR</th>
			<th>Item</th>
			<th>Dep1</th>
			<th>Dep2</th>
			<th>Dep3</th>
			<th>Dep4</th>
			<th>Dep5</th>
			<th>Opções</th>
		</tr>
		</thead>
		<tbody>
			<%for (int i = 0; i < lista.size(); i++) { %>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getPrio1()%></td>
					<td><%=lista.get(i).getPrio2()%></td>
					<td><%=lista.get(i).getPrio3()%></td>
					<td><%=lista.get(i).getPrio4()%></td>
					<td><%=lista.get(i).getPrio5()%></td>
					<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="Botao1">Editar</a>
						<a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class="Botao2">Excluir</a>
					
					</td>
				</tr>
			<%} %>			
		</tbody>
	</table>
	<script src = "scripts/confirmador.js"></script>
</body>
</html>