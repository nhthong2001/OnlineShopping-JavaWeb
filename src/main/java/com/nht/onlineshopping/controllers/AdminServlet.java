package com.nht.onlineshopping.controllers;

import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.beans.CategoryNext;
import com.nht.onlineshopping.models.CategoryModel;
import com.nht.onlineshopping.models.CategoryNextModel;
import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet", value = "/admin/*")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        switch (path) {
            case "/index":
                List<Category> list = CategoryModel.findAll();
                List<CategoryNext> listNext = CategoryNextModel.findAll();

                request.setAttribute("categories", list);
                request.setAttribute("categoriesNext", listNext);

                ServletUtils.forward("/views/vwCategory/index.jsp", request, response);
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
