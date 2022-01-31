package com.nhthong.onlineshopping.controllers;

import com.nhthong.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();

        switch (path) {
            case "/index":
                ServletUtils.forward("/views/vwHome/index.jsp", request, response);
                break;
            case "/about":
                ServletUtils.forward("/views/vwHome/about.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/vwHome/index.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
