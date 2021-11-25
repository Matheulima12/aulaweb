<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2021
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Editar Pessoa</title>
</head>
<body>
<jsp:useBean id="emailBean" class="com.aulaweb.aulaweb.email" scope="request">
  <jsp:setProperty name="emailb" property="email" value="${param.e_mail}" />
</jsp:useBean>

<fmt:formatDate value="${usuario[emailb].email}" var="teste"  />

<form action="cadastrosusuario.jsp" method="post">
  <label>e-mail</label>
  <input type="text" name="e_mail" value="${usuario[email].email}" disabled="true"><br/>
  <label>First Name</label>
  <input type="text" name="firstName" value="${usuario[email].nome}"><br/>

  <input type="hidden" name="e_mail" value="${usuario[email].email}">
  <input type="hidden" name="acao" value="editar">
  <input type="submit" value="Alterar">
</form>
</body>

</html>