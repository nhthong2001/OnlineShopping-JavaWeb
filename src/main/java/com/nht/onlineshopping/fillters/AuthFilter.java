package com.nht.onlineshopping.fillters;

import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthFilter")
public class AuthFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        boolean auth = (boolean) session.getAttribute("auth");
        if (auth == false) {
            session.setAttribute("retUrl", req.getRequestURI());
            ServletUtils.redirect("/auth/login", req, (HttpServletResponse) response);
            return;
        }
        chain.doFilter(request, response);
    }
}
