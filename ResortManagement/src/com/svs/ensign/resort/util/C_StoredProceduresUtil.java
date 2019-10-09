package com.svs.ensign.resort.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class C_StoredProceduresUtil {

    @Autowired
    static DataSource ds;

    public static String generateTotalAmountForBalanceSheet() {

        Connection con = null;
        String totalamount = null;
        try {
            CallableStatement cs = con.prepareCall("{CALL totalCalculation(?)}");
            cs.registerOutParameter(1, java.sql.Types.INTEGER);
            cs.execute();
            totalamount = Integer.toString(cs.getInt(1));
            cs.close();
        } catch (Exception ex) {
            AppTrack.error("Error in generateTotalAmountForBalanceSheet", ex);
        }

        return "";
    }

    public static int generateTotalIndirectExpensesAmount(String companyname) {

        Connection con = null;
        int totalamount = 0;
        String procedure = "{CALL totalIndirectExp(?,?)}";
        try {
            con = ds.getConnection();
            CallableStatement cs = con.prepareCall(procedure);
            cs.setString(1, companyname);
            cs.registerOutParameter(2, java.sql.Types.INTEGER);
            cs.execute();
            totalamount = cs.getInt(2);
            //System.out.println("total Amount\t"+totalamount);
            cs.close();
        } catch (Exception ex) {
            AppTrack.error("Error in generateTotalIndirectExpensesAmount", ex);
        }

        return totalamount;
    }

    public static String totalOfDutiesAndTaxes(String companyname) {

        Connection con = null;
        int totalamount = 0;
        String calledProcedure = "{CALL drTotal(?,?)}";
        try {
            //System.out.println("Stored Procedure\t");
            con = ds.getConnection();
            CallableStatement cs = con.prepareCall(calledProcedure);
            cs.setString(1, companyname);
            cs.registerOutParameter(2, java.sql.Types.VARCHAR);
            cs.execute();
            //System.out.println("Amount is\t"+cs.getInt(2));
            totalamount = cs.getInt(2);

        } catch (Exception e) {
            AppTrack.error("Error in totalOfDutiesAndTaxes", e);
        }

        return Integer.toString(totalamount);
    }

}
