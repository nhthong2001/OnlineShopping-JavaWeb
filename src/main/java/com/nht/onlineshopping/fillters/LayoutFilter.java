package com.nht.onlineshopping.fillters;

import com.nht.onlineshopping.beans.Category;
import com.nht.onlineshopping.beans.CategoryNext;
import com.nht.onlineshopping.models.CategoryModel;
import com.nht.onlineshopping.models.CategoryNextModel;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter")
public class LayoutFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        List<Category> c = CategoryModel.findAll();
        List<CategoryNext> cn = CategoryNextModel.findAll();
        request.setAttribute("categories", c);
        request.setAttribute("categoriesNext", cn);

        chain.doFilter(request, response);
    }
}
