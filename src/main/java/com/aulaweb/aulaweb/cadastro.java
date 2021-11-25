package com.aulaweb.aulaweb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.validation.constraints.Email;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "cadastro", value = "/cadastro")
public class cadastro extends HttpServlet {
    private Map<Email, usuario> map = new HashMap<>();

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("usuario",map);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuario usuario = (usuario)request.getAttribute("usuario");
        Email email = usuario.getEmail();

        if(map.containsKey(email) && request.getParameter("acao") != null) {

            if(request.getParameter("acao").equals("editar")) {
                map.replace(email, usuario);
            }

            if(request.getParameter("acao").equals("excluir")) {
                map.remove(email);
            }
        }else {
            map.put(email, usuario);
        }

        request.getRequestDispatcher("historico.jsp").forward(request, response);
    }
}



