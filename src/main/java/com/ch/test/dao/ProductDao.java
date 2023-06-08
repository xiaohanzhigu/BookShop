package com.ch.test.dao;

import com.ch.test.pojo.PageBean;
import com.ch.test.pojo.Product;

import java.awt.print.Book;
import java.util.List;

public class ProductDao extends BasicDao<Product>{

    public Product findBookById(String id) {
        String sql = "select * from t_product where id = ?";
        return querySingle(sql, id);
    }
    public PageBean findBookByName(String bookName) {
        PageBean pageBean = new PageBean();
        String sql = "select * from t_product where name like\"%\"?\"%\"";
        List<Product> productList = queryMulti(sql, bookName);
        pageBean.setSearchField(bookName);
        pageBean.setList(productList);
        pageBean.setTotalCount(productList.size());
        return pageBean;
    }

    public PageBean findByCategory(String category) {
        PageBean pageBean = new PageBean();
        List<Product> products;
        String sql = "select * from t_product";
        if (!"全部商品".equals(category)) {
            sql += " where category = ?";
            products = queryMulti(sql, category);
        } else {
            products = queryMulti(sql);
        }

        pageBean.setCategory(category);
        pageBean.setList(products);
        pageBean.setTotalCount(products.size());

        return pageBean;
    }
}
