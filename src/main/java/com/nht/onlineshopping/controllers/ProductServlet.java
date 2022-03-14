package com.nht.onlineshopping.controllers;

import com.nht.onlineshopping.beans.Product;
import com.nht.onlineshopping.models.ProductModel;
import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "ProductServlet", value = "/product/*")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/detail":
                productDetail(request, response);
                break;
            case "/byCatNext":
                productByCatIDNext(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private void productByCatIDNext(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int catIdNext = Integer.parseInt(request.getParameter("catIDNext"));
        List<Product> p = ProductModel.findByCatIDNext(catIdNext);
        request.setAttribute("products", p);
        ServletUtils.forward("/views/vwProduct/product.jsp", request, response);
    }

    private void productDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int proId = Integer.parseInt(request.getParameter("id"));
        Product p = ProductModel.findById(proId);
        if (p == null) {
            ServletUtils.forward("/views/404.jsp", request, response);
            return;
        }
        request.setAttribute("product", p);
        ServletUtils.forward("/views/vwProduct/detail.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/search":
                searchProduct(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String info = request.getParameter("info");
        List<Product> list = ProductModel.findByInfo(info);
        request.setAttribute("productList", list);
        ServletUtils.forward("/views/vwProduct/searchProduct.jsp", request, response);
    }
}
