/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author ravikiran.rayaprolu
 */
public class DBUtils {

    @Autowired
    static DataSource ds;
    public static Connection con;

    public static Connection openConnection() {
        try {
            con = ds.getConnection();
        } catch (Exception e) {
            AppTrack.error("Error in openConnection", e);
        }
        return con;
    }

    public static void closeConnection(Connection con, PreparedStatement pr, ResultSet rs) {
        try {
            if (con != null) {
                con.close();
                con = null;
            }
            if (pr != null) {
                pr.close();
                pr = null;
            }
            if (rs != null) {
                rs.close();
                rs = null;
            }
        } catch (Exception e) {
            AppTrack.error("Error in openConnection", e);
        }
    }
}
