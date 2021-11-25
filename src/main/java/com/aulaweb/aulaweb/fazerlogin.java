package com.aulaweb.aulaweb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "fazerlogin", value = "/fazerlogin")
public class fazerlogin extends HttpServlet {
    private List<String>lof= new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session;
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        if(email.equals("matheus@gmail.com") && senha.equals("123456")){
            this.lof.add("Logado com sucesso: ".concat(email.concat(" - ").concat(senha)));
            session = request.getSession();
            session.setMaxInactiveInterval(10);
        }else {
            this.lof.add("Email ou senha invalido: ".concat(email.concat(" - ").concat(senha)));
        }
        request.setAttribute("lof", lof);
        RequestDispatcher dispacther = request.getRequestDispatcher("login.jsp");
        dispacther.forward(request, response);
    }
}


