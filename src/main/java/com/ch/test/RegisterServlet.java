package com.ch.test;



import com.ch.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repassword");
        String[] genders = req.getParameterValues("gender");
        String telephone = req.getParameter("telephone");
        User user = new User(username, password, email, genders[0], telephone);
        if (username != null && password != null) {
            resp.sendRedirect(req.getContextPath() + "/success.jsp");
        }
    }
}
