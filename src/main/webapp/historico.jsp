<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2021
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Id</th>
      <th scope="col">Nome</th>
      <th scope="col">Data de Nascimento</th>
      <th scope="col">Email</th>
      <th scope="col">Senha</th>
      <th>Editar</th>
      <th>Excluir</th>
    <tbody>
<c:forEach items="${usuario.values()}" var="p" varStatus="i">
  <tr>
  <td>${i.count}</td>
  <td>${p.email}</td>
  <td>${p.nome}</td>
  <td><fmt:formatDate value="${p.nascimento}" pattern="dd-MM-yyyy"/></td>
  <td><a href="Excluir.jsp?e_mail=${p.email.endereco}">excluir</a></td>
  <button type="button" class="btn btn-danger" href="editar.jsp?e_mail=${p.email.email}">Editar</button>
  <button type="button" class="btn btn-danger">Danger</button>
  </tr>
</c:forEach>
  </table>
  </body>
</html>
