package com.ch.test.servlet;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "MenuSearchServlet", urlPatterns = "/MenuSearchServlet")
public class MenuSearchServlet extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String textfield = req.getParameter("textfield");
        PageBean pageBean = productDao.findBookByName(textfield);
        req.setAttribute("bean", pageBean);
        req.getRequestDispatcher("/product_list.jsp").forward(req, resp);
    }
}
