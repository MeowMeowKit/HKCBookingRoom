/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repositories;

import entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kaine
 */
public class UserRepository {

    private Connection repo;
    private PreparedStatement preStm;
    private ResultSet rs;

    public void closeRepo() throws Exception {
        if (rs != null) {
            rs.close();
        }
        if (preStm != null) {
            preStm.close();
        }
        if (repo != null) {
            repo.close();
        }
    }

    public ArrayList<User> getAllUser() throws Exception {
        try {
            repo = RepoConnector.connectDatabase();
            String sql = "SELECT * FROM hkcbooking_user";
            preStm = repo.prepareStatement(sql);
            rs = preStm.executeQuery();
            ArrayList<User> list = new ArrayList<User>();
            while (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("password");
//                list.add(new User(username, password));
            }
            return list;
        } finally {
            this.closeRepo();
        }
    }

    public int registerUser(User user) throws ClassNotFoundException, SQLException {

        String INSERT_USER_SQL = "INSERT INTO hkcbooking_user"
                + "(username,password,fullname,address,phone,role,email) VALUES"
                + "(?,?,?,?,?,?,?)";
        int result = 0;
        try {
            repo = RepoConnector.connectDatabase();
            preStm = repo.prepareStatement(INSERT_USER_SQL);
            preStm.setString(1, user.getUsername());
            preStm.setString(2, user.getPassword());
            preStm.setString(3, user.getFullname());
            preStm.setString(4, user.getAddress());
            preStm.setString(5, user.getPhone());
            preStm.setString(6, user.getRole());
            preStm.setString(7, user.getEmail());

            result = preStm.executeUpdate();
            preStm.setString(result, INSERT_USER_SQL);
            System.out.println(preStm);

        } catch (Exception e) {
        }
        return result;
    }

    public User getUserByUsername(String username) throws Exception {
        try {
            String query = "SELECT * FROM hkcbooking_user where username=?";
            repo = RepoConnector.connectDatabase();
            preStm = repo.prepareStatement(query);
            preStm.setString(1, username);
            rs = preStm.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
                return u;
            }

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            this.closeRepo();
        }
        return null;
    }

    public User getUserByUserId(Integer id) throws Exception {
        try {
            String query = "SELECT * FROM hkcbooking_user where userId=?";
            repo = RepoConnector.connectDatabase();
            preStm = repo.prepareStatement(query);
            preStm.setInt(1, id);
            rs = preStm.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
                return u;
            }

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            this.closeRepo();
        }
        return null;
    }
}