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

@WebServlet(name = "AdminCategoryServlet", value = "/admin/category/*")
public class AdminCategoryServlet extends HttpServlet {
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
            case "/addMain":
                Integer catId = CategoryModel.count() + 1;
                request.setAttribute("catId", catId);
                ServletUtils.forward("/views/vwCategory/addMainCat.jsp", request, response);
                break;
            case "/addSub":
                List<Category> listMainCat = CategoryModel.findAll();
                request.setAttribute("listMainCat", listMainCat);
                ServletUtils.forward("/views/vwCategory/addSubCat.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/addMain":
                int catId = Integer.parseInt(request.getParameter("CatID"));
                String catName = request.getParameter("CatName");
                Category c = new Category(catId, catName);

                CategoryModel.add(c);

                Integer newCatId = CategoryModel.count() + 1;
                request.setAttribute("catId", newCatId);
                ServletUtils.forward("/views/vwCategory/addMainCat.jsp", request, response);
                break;
            case "/addSub":
                ServletUtils.forward("/views/vwCategory/addSubCat.jsp", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
}
