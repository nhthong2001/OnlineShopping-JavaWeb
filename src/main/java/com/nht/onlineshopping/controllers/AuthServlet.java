package com.nht.onlineshopping.controllers;

import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AuthServlet", value = "/auth/*")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/login";
        }
        switch (path) {
            case "/login":
                ServletUtils.forward("/views/vwAuth/login.jsp", request, response);
                break;
            case "/signup":
                ServletUtils.forward("/views/vwAuth/signup.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
