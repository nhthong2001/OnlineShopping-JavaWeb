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
        int id  = 0;
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
            case "/editMain":
                try {
                    id = Integer.parseInt(request.getParameter("id"));
                } catch (NumberFormatException e) {
                }

                Category c = CategoryModel.findById(id);

                if (c != null) {
                    request.setAttribute("category", c);
                    ServletUtils.forward("/views/vwCategory/editMainCat.jsp", request, response);
                } else {
                    ServletUtils.redirect("/admin/category", request, response);
                }
                break;
            case "/addSub":
                List<Category> listMainCat = CategoryModel.findAll();
                request.setAttribute("listMainCat", listMainCat);
                ServletUtils.forward("/views/vwCategory/addSubCat.jsp", request, response);
                break;
            case "/editSub":
                try {
                    id = Integer.parseInt(request.getParameter("id"));
                } catch (NumberFormatException e) {
                }

                CategoryNext cn = CategoryNextModel.findById(id);
                listMainCat = CategoryModel.findAll();

                if (cn != null) {
                    request.setAttribute("categorynext", cn);
                    request.setAttribute("listMainCat", listMainCat);
                    ServletUtils.forward("/views/vwCategory/editSubCat.jsp", request, response);
                } else {
                    ServletUtils.redirect("/admin/category", request, response);
                }
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        int catId = 0;
        int catIdNext = 0;
        String catName = "";
        String catNextName = "";
        Category c = null;
        CategoryNext cn = null;
        switch (path) {
            case "/addMain":
                catId = Integer.parseInt(request.getParameter("CatID"));
                catName = request.getParameter("CatName");
                c = new Category(catId, catName);

                CategoryModel.add(c);

                Integer newCatId = CategoryModel.count() + 1;
                request.setAttribute("catId", newCatId);
                ServletUtils.forward("/views/vwCategory/addMainCat.jsp", request, response);
                break;
            case "/editMain":
                catId = Integer.parseInt(request.getParameter("CatID"));
                catName = request.getParameter("CatName");
                c = new Category(catId, catName);

                CategoryModel.edit(c);

                ServletUtils.redirect("/admin/category", request, response);
                break;
            case "/deleteMain":
                catId = Integer.parseInt(request.getParameter("id"));

                CategoryModel.delete(catId);

                ServletUtils.redirect("/admin/category", request, response);
                break;
            case "/addSub":
                catId = Integer.parseInt(request.getParameter("CatID"));
                catNextName = request.getParameter("CatNextName");
                catIdNext = CategoryNextModel.count() + 1;

                cn = new CategoryNext(catId, catIdNext, catNextName);

                CategoryNextModel.add(cn);

                ServletUtils.redirect("/admin/category/addSub", request, response);
                break;
            case "/editSub":
                catId = Integer.parseInt(request.getParameter("CatID"));
                catNextName = request.getParameter("CatNextName");
                catIdNext = Integer.parseInt(request.getParameter("id"));

                cn = new CategoryNext(catId, catIdNext, catNextName);

                CategoryNextModel.edit(cn);

                ServletUtils.redirect("/admin/category", request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }
}
