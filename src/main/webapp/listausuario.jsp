<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2021
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Lista usuario</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
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
    <tbody>
        <jsp:useBean id="listusuario" scope="request" type="java.util.List"/>
        <c:forEach items="${listusuario}" var="list">
    <tr>
      <th scope="row">1</th>
      <td>${p.nome}</td>
      <td>${p.email}</td>
      <td><fmt:formatDate value="${p.dtnas}"  pattern="dd/MM/yyyy" /></td>

    </tr>

    </tr>
        </c:forEach>
    </tbody>
  </body>

</html>
