<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2021
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Cadastro do usuario</title>
  </head>
  <body>
  <jsp:useBean id="email" class="com.aulaweb.aulaweb.email" scope="request">
    <jsp:setProperty name="email" property="email" value="${param.e_mail}" />
  </jsp:useBean>

  <jsp:useBean id="pessoa" class="com.aulaweb.aulaweb.usuario" scope="request">
    <jsp:setProperty name="usuario" property="nome" value="${param.firstName}" />
    <jsp:setProperty name="usuario" property="email" value="${email}" />
    <jsp:setProperty name="usuario" property="dtnas" value="${dtnas}" />
  </jsp:useBean>

  <jsp:forward page="/cadastro"/>
  </body>
</html>
