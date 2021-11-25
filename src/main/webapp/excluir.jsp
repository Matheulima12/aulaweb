<%@page import="javax.el.ListELResolver"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Excluir Pessoa</title>
</head>
<body>

<jsp:useBean id="emailBean" class="com.aulaweb.aulaweb.email" scope="request">
  <jsp:setProperty name="emailB" property="email" value="${param.e_mail}" />
</jsp:useBean>

<fmt:formatDate value="${usuario[emailB].dtnas}"  />

<form action="Person.jsp" method="post">
  <label>e-mail</label>
  <input type="text" name="e_mail" value="${usuario[emailB].email}" disabled="true"><br/>
  <label>First Name</label>
  <input type="text" name="firstName" value="${usuario[emailB].nome}" disabled="true"><br/>
  <label>Birthday</label>

  <input type="hidden" name="e_mail" value="${usuario[emailB].email}">
  <input type="hidden" name="acao" value="excluir">
  <input type="submit" value="Excluir">
</form>
</body>
