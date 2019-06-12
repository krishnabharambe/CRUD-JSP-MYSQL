package wap2;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;

/**
 *
 * @author admin
 */
public class db {

    static private Connection c;

    public static Connection getconnection() throws ClassNotFoundException, SQLException {
        if (c == null) {
             Class.forName("com.mysql.jdbc.Driver");  
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/wap2?characterEncoding=latin1&useConfigs=maxPerformance","root","password");  
        }
        return c;
    }

    public static boolean setdata(String s) {
        try {
            int executeUpdate = db.getconnection().createStatement().executeUpdate(s);
            System.out.println("output:" + executeUpdate);
            if (executeUpdate == 1) {
                return true; // added sucessfully
            } else {
                return false;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static ResultSet getdata(String s) {
        try {
            return db.getconnection().createStatement().executeQuery(s);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void loadnsdata(String sql, String unitchecker, JComboBox cb) {
        try {
            ResultSet data = getdata(sql);
            while (data.next()) {
                if (((DefaultComboBoxModel) cb.getModel()).getIndexOf(data.getString(unitchecker)) < 0) {
                    cb.addItem(data.getString(unitchecker));
                }
            }
            data.close();
        } catch (SQLException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    static void getdata() {
       
    }

}