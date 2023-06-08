package com.ch.test.servlet;

import com.ch.test.dao.UserDao;
import com.ch.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {

    private UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        User user = (User) req.getSession().getAttribute("user");
        user.setPassword(req.getParameter("password"));
        user.setSex(req.getParameter("sex"));
        user.setEmail(req.getParameter("email"));
        user.setTelephone(req.getParameter("email"));
        user.setIntroduce(req.getParameter("introduce"));

        boolean b = userDao.updateUser(user);
        if (b) {
            resp.sendRedirect(req.getContextPath() + "/update_success.jsp");
        } else {
            resp.getWriter().print("<script>alert('修改成功');window.location.href=/modifyuserinfo.jsp");
        }
    }
}
