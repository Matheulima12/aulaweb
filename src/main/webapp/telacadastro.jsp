<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 25/11/2021
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>JSP - Hello World</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/login.css">
</head>

<body id="fundo">


<div class="card" id="telalogin">

  <div class="card-body">
    <form action="/cadastrosusuario.jsp">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Nome</label>
        <input type="email" name="email" class="form-control" id="exampleInputnome"
               aria-describedby="emailHelp" placeholder="Insira seu nome">

      </div>

      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
               aria-describedby="emailHelp" placeholder="Insira seu email">

      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Senha</label>
        <input type="password" name="senha" class="form-control" id="exampleInputPassword1"
               placeholder="Insira sua senha">
      </div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Data de nascimentp</label>
    <input type="password" name="dtnas" class="form-control" id="exampleInputdate"
           placeholder="Insira sua data de nascimento">
  </div>

      <div class="d-grid gap-2">
        <button class="btn btn-danger" type="submit">Entrar</button>

      </div>

    </form>


  </div>
</div>
</body>
</html>
