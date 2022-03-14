package com.nht.onlineshopping.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.nht.onlineshopping.beans.Account;
import com.nht.onlineshopping.models.AccountModel;
import com.nht.onlineshopping.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
        String path = request.getPathInfo();

        switch (path) {
            case "/login":
                login(request, response);
                break;
            case "/logout":
                logout(request, response);
                break;
            case "/signup":
                signup(request, response);
                break;
            default:
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Account user = AccountModel.findByUsername(username);

        if (user != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), user.getPassword());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("auth", true);
                session.setAttribute("authUser", user);

                String url = String.valueOf(session.getAttribute("retUrl"));
                if (url.equals("null")) {
                    url = "/home";
                }
                ServletUtils.redirect(url, request, response);
            } else {
                request.setAttribute("hasError", true);
                request.setAttribute("errorMessage", "Tài khoản hoặc mật khẩu sai");
                ServletUtils.forward("/views/vwAuth/login.jsp", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            request.setAttribute("errorMessage", "Tài khoản hoặc mật khẩu sai");
            ServletUtils.forward("/views/vwAuth/login.jsp", request, response);
        }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", new Account());

        String url = request.getHeader("referer");
        if (url == null) {
            url = "/home";
        }
        ServletUtils.redirect(url, request, response);
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = ServletUtils.setUTF8(request.getParameter("name"));
        String address = ServletUtils.setUTF8(request.getParameter("address"));
        String strDob = request.getParameter("dob");
        DateTimeFormatter df = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate dob = LocalDate.parse(strDob, df);
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String rawpwd = request.getParameter("rawpwd");
        String bcryptHashString = BCrypt.withDefaults().hashToString(12, rawpwd.toCharArray());

        Account account = new Account(name, address, email, "bidder", username, bcryptHashString, 0, 0,
                -1, false, false, dob);
        AccountModel.add(account);

        String url = "/auth/login";
        ServletUtils.redirect(url, request, response);
    }
}
