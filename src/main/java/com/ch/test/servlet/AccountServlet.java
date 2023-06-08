package com.ch.test.servlet;

import com.ch.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AccountServlet", urlPatterns = "/account")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            PrintWriter writer = resp.getWriter();
            resp.sendRedirect(req.getContextPath() + "/account.jsp");
        } else {
            //resp.sendRedirect(req.getContextPath() + "/login.jsp");
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('请先登录!');window.location.href='" + req.getContextPath() + "/login.jsp" +"'</script>");

        }
    }
}
