package com.ch.test.utils;


import javax.sql.DataSource;
import java.sql.*;

public class JDBCUtils {
    private static DataSource dataSource;
    private static final String url = "jdbc:mysql://localhost:3306/db_bookshop?serverTimezone=UTC";
    private static final String username = "root";
    private static final String password = "123456";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public static Connection getConn() {
        try {
            return DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void close(Connection conn, Statement stmt , ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }


    //public void querySingle(String sql, Object... params) {
    //    Connection conn = getConn();
    //    try {
    //        PreparedStatement statement = conn.prepareStatement(sql);
    //        setParams(statement, params);
    //        ResultSet resultSet = statement.executeQuery();
    //    } catch (SQLException e) {
    //        throw new RuntimeException(e);
    //    }
    //}
    //
    //public void setParams(PreparedStatement statement, Object[] params) throws SQLException {
    //   if (params != null && params.length > 0) {
    //       for (int i = 0; i < params.length; i++) {
    //            statement.setObject(i + 1, params[i]);
    //       }
    //   }
    //}
}
