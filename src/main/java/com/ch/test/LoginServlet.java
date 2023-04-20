package com.ch.test;

import com.ch.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if ("123".equals(username) && "123".equals(password)) {
            System.out.println(username + password);
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            req.getSession().setAttribute("user", user);

            String autologin = req.getParameter("autologin");
            if (autologin != null) {
                Cookie cookie = new Cookie("autoLogin", username + ":" + password);
                cookie.setMaxAge(60 * 60 *24 * 14);
                resp.addCookie(cookie);
            }

            resp.sendRedirect(req.getContextPath() + "/account");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }
}
