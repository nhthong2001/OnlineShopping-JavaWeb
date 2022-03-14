package com.nht.onlineshopping.controllers;

import com.nht.onlineshopping.beans.Account;
import com.nht.onlineshopping.models.AccountModel;
import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CheckedServlet", value = "/check/*")
public class CheckedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();

        switch (path) {
            case "/isAvailable":
                isAvailable(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private void isAvailable(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        Account user = AccountModel.findByUsername(username);

        boolean isAvailable = (user == null);

        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        out.print(isAvailable);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
