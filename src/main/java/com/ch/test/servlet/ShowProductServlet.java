package com.ch.test.servlet;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShowProductServlet", urlPatterns = "/showProduct")
public class ShowProductServlet extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String category = "全部商品";
        String parameter = req.getParameter("category");
        if (parameter != null) {
            category = parameter;
        }
        PageBean pageBean = productDao.findByCategory(category);
        req.setAttribute("bean", pageBean);
        req.getRequestDispatcher("/product_list.jsp").forward(req, resp);
    }
}
