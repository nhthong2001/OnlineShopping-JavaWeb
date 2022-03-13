package com.nht.onlineshopping.utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ServletUtils {
    public static void forward(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    public static void redirect(String url, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String contextPath = request.getContextPath();
        int idx = url.indexOf(contextPath);
        if (idx < 0) {
            response.sendRedirect(contextPath + url);
        } else {
            response.sendRedirect(url);
        }
    }
    public  static String setUTF8(String s){
        byte[] bytes = s.getBytes(StandardCharsets.ISO_8859_1);
        s = new String(bytes, StandardCharsets.UTF_8);
        return s;
    }
}
