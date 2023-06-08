package com.ch.test.servlet;



import com.ch.test.dao.UserDao;
import com.ch.test.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    private UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repassword");
        String gender = req.getParameter("gender");
        String telephone = req.getParameter("telephone");
        String introduce = req.getParameter("introduce");
        String role = req.getParameter("role");
        System.out.println(gender);
        Date now = new Date();
        //if (username.equals(rePassword)) {
        //
        //}
        User user = new User(null, username, password, gender, email, telephone, introduce, role,now, null, 0);
        boolean flag = userDao.addUser(user);
        if (flag) {
            resp.sendRedirect(req.getContextPath() + "/success.jsp");
        } else {
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('注册失败!');window.location.href='" + req.getContextPath() + "/register.jsp" +"'</script>");
        }
    }
}
