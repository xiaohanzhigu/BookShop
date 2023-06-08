package com.ch.test.servlet;

import com.ch.test.dao.UserDao;
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
    private UserDao userDao = new UserDao();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = userDao.getUserByUnameAndPassword(username, password);

        if (user != null) {
            req.getSession().setAttribute("user", user);

            String autologin = req.getParameter("autologin");
            if (autologin != null) {
                Cookie cookie = new Cookie("autoLogin", user.getId() + ":" + username + ":" + password);
                cookie.setMaxAge(60 * 60 *24 * 14);
                resp.addCookie(cookie);
            }

            String reusername = req.getParameter("reusername");
            if (reusername != null) {
                Cookie cookie = new Cookie("username", username);
                cookie.setMaxAge(60 * 60 *24 * 14);
                resp.addCookie(cookie);
            }
            resp.sendRedirect(req.getContextPath() + "/account");
        } else {
            resp.sendRedirect(req.getContextPath() + "/login.jsp");
        }
    }
}
