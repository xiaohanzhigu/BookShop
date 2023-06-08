package com.ch.test.dao;

import com.ch.test.pojo.User;
import com.ch.test.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet result = null;

    public User getUserByUnameAndPassword(String username, String password) {
        try {
            conn = JDBCUtils.getConn();
            String sql = "select * from t_user where username = ? and password = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setObject(1, username);
            stmt.setObject(2, password);
            result = stmt.executeQuery();
            User user = null;
            if (result.next()) {
                user = fill();
            }
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean deleteUser(int id) {
        try {
            conn = JDBCUtils.getConn();
            String sql = "delete from t_user where id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setObject(1, id);
            int i = stmt.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean updateUser(User user) {
        try {
            conn = JDBCUtils.getConn();
            String sql = "update t_user set username = ?, password = ?, sex = ? ," +
                    "email = ?, telephone = ?, introduce = ?, role = ?, registerTime = ?, activeCode = ?, state = ? where id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setObject(1, user.getUsername());
            stmt.setObject(2, user.getPassword());
            stmt.setObject(3, user.getSex());
            stmt.setObject(4, user.getEmail());
            stmt.setObject(5, user.getTelephone());
            stmt.setObject(6, user.getIntroduce());
            stmt.setObject(7, user.getRole());
            stmt.setObject(8, user.getRegisterTime());
            stmt.setObject(9, user.getActiveCode());
            stmt.setObject(10, user.getState());
            stmt.setObject(11, user.getId());
            int i = stmt.executeUpdate();
            return i > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean addUser(User user) {
        try {
            conn = JDBCUtils.getConn();
            String sql = "insert into t_user values(?,?,?,?,?,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setObject(1, null);
            stmt.setObject(2, user.getUsername());
            stmt.setObject(3, user.getPassword());
            stmt.setObject(4, user.getSex());
            stmt.setObject(5, user.getEmail());
            stmt.setObject(6, user.getTelephone());
            stmt.setObject(7, user.getIntroduce());
            stmt.setObject(8, user.getRole());
            stmt.setObject(9, user.getRegisterTime());
            stmt.setObject(10, user.getActiveCode());
            stmt.setObject(11, user.getState());
            int i = stmt.executeUpdate();
            JDBCUtils.close(conn, stmt, result);
            return i > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<User> getAllUser() {
        try {
            conn = JDBCUtils.getConn();
            String sql = "select * from t_user";
            stmt = conn.prepareStatement(sql);
            result = stmt.executeQuery();
            ArrayList<User> list = new ArrayList<>();
            while (result.next()) {
                User user = null;
                user = fill();
                list.add(user);
            }
            JDBCUtils.close(conn, stmt, result);
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public User getUserById(int id) {
        try {
            conn = JDBCUtils.getConn();
            String sql = "select * from t_user where id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setObject(1, id);
            result = stmt.executeQuery();

            User user = null;
            if (result.next()) {
                user = fill();
            }
            JDBCUtils.close(conn, stmt, result);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    private User fill() {
        try {
            User user = new User();
            user.setId(result.getInt("id"));
            user.setSex(result.getString("sex"));
            user.setUsername(result.getString("username"));
            user.setPassword(result.getString("password"));
            user.setEmail(result.getString("email"));
            user.setTelephone(result.getString("telephone"));
            user.setIntroduce(result.getString("introduce"));
            user.setRole(result.getString("role"));
            user.setRegisterTime(result.getDate("registerTime"));
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
