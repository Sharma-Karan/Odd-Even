package com.Servlet.Dao;

import com.Servlets.UserModal;
import com.Servlets.CityModel;

import java.sql.Connection;
import java.sql.*;
import java.util.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean checkDates(String cityName, String date) {
        boolean flag = false;
        try {
            String query = "select * from cities where name = ?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, cityName);
            date = date.trim();
            ResultSet rst = stmt.executeQuery();
            if (rst.next()) {
                String sdate = rst.getString("startdate").trim();
                String edate = rst.getString("enddate").trim();
                int day = Integer.parseInt(date.substring(8, 10));
                int sday = Integer.parseInt(sdate.substring(0, 2));
                int eday = Integer.parseInt(edate.substring(0, 2));
                int smonth = Integer.parseInt(sdate.substring(3, 5));
                int emonth = Integer.parseInt(edate.substring(3, 5));
                int month = Integer.parseInt(date.substring(5, 7));
                int year = Integer.parseInt(date.substring(0, 4));
                int eyear = Integer.parseInt(edate.substring(6, 10));
                int syear = Integer.parseInt(sdate.substring(6, 10));
                if (cityName.equalsIgnoreCase(cityName)) {
                    if (day <= eday && month <= emonth && year <= eyear) {
                        if (day >= sday && month >= smonth && year >= syear) {
                            return true;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean saveUser(UserModal user) {
        boolean f = false;
        try {
            String query = "insert into user(name,email,cars) values(?,?,?)";
            PreparedStatement pstm = this.con.prepareStatement(query);
            pstm.setString(1, user.getUserName());
            pstm.setString(2, user.getUserEmail());
            pstm.setString(3, user.getUserCarsString());
            pstm.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    //get user by email and password
    public UserModal getUserByEmailAndPassword(String email, String password) {
        UserModal user = null;
        try {
            String query = "select * from user where email= ?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, email);
            ResultSet rst = stmt.executeQuery();

            if (rst.next()) {
                user = new UserModal(rst.getString("name"), rst.getString("email"), rst.getString("cars"));
                // String name=rst.getString("Name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean adminAuthenticate(String username, String password) {
        boolean flag = false;
        try {
            String pswd;
            String query = "select * from admins where username = ?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rst = stmt.executeQuery();

            if (rst.next()) {
                pswd = rst.getString("password");
                if (password.equals(pswd)) {
                    flag = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean checkCity(String cityName) {
        boolean flag = false;
        try {
            String query = "select * from cities where name = ?";

            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, cityName);

            ResultSet rst = stmt.executeQuery();
            if (rst.next()) {
                String city = rst.getString("name");
                if (cityName.equalsIgnoreCase(city)) {
                    flag = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean addCity(CityModel city) {
        boolean f = false;
        StringBuilder str = new StringBuilder(city.getStartDate());
        StringBuilder str1 = new StringBuilder(city.getEndDate());
        String startDate = str.reverse().toString();
        String endDate = str1.reverse().toString();
        try {
            String query = "insert into cities(name,startdate,enddate,state) values(?,?,?,?)";
            PreparedStatement pstm = this.con.prepareStatement(query);
            pstm.setString(1, city.getCityname());
            pstm.setString(2, startDate);
            pstm.setString(3, endDate);
            pstm.setString(4, city.getStatename());
            pstm.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean removeCity(String cityName) {
        boolean flag = false;
        try {
            String query = "delete from cities where name = ?";
            PreparedStatement stmt = this.con.prepareStatement(query);
            stmt.setString(1, cityName);
            stmt.executeUpdate();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public ArrayList<CityModel> getAllCities() {
        ArrayList<CityModel> list = new ArrayList<CityModel>();
        try {
            String query = "select * from cities";
            PreparedStatement stmt = this.con.prepareStatement(query);
            ResultSet rst = stmt.executeQuery();
            while (rst.next()) {
                String cityName = rst.getString("name");
                String stateName = rst.getString("state");
                String startdate = rst.getString("startdate");
                String enddate = rst.getString("enddate");
                CityModel city = new CityModel(cityName, stateName, startdate, enddate);
                list.add(city);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
