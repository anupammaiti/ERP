package com.svs.erp.Hr.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.totalworkinghrsmonth1;
import com.svs.erp.Hr.db.MYException;
import com.svs.util.ConvertStackTracetoString;

public class ConnectionUtils {

    static {

    }

    Connection con = null;

    static Logger logger = Logger.getLogger(ConnectionUtils.class.getName());
    ConvertStackTracetoString util_stacktrace = new ConvertStackTracetoString();

    public Connection getDBConnection() throws SQLException, MYException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp", "root", "root");
//			//con=DatabaseConnectionPool.getConnection(" ConnectionUtils :: getDBConnection ");

        } catch (SQLException e) {
            logger.error(util_stacktrace.sendingErrorAsString(e));
            throw new SQLException("Exception while getting the connection" + e.getMessage());
        } catch (Exception e1) {
            logger.error(util_stacktrace.sendingErrorAsString(e1));
            throw new MYException("Exception while getting the connection" + e1.getMessage());
        }

        return con;
    }

    public void setDBAutoCommit(boolean flag) throws SQLException {
        con.setAutoCommit(flag);
        ////////System.out.println("ConnectionUtils :: setDBAutoCommit ==> SET AUTO COMMIT TO ---> " + flag);
    }

    public void setDBCommit() throws SQLException {
        con.commit();
        //	//////System.out.println("ConnectionUtils :: setDBCommit ==> DB ENTRIES ARE COMMITTED");
    }

    public void setDBRollback() throws SQLException {
        con.rollback();
        //	//////System.out.println("ConnectionUtils :: setDBRollback ==> DB ENTRIES ARE ROLLBACKED");
    }

    public void setDBClose() throws SQLException {
        con.close();
        ////////System.out.println("ConnectionUtils :: setDBClose ==> DB CONNECTION IS CLOSED");
    }
}
