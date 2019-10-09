package com.svs.erp.Hr.db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.MYException;
import com.svs.util.ConvertStackTracetoString;

/**
 * Database connection pooling through Tomcat.
 */
public class DatabaseConnectionPool {

	private DataSource ds = null;
	private static DatabaseConnectionPool dbConnectionPool = null;
	
	static Logger logger = Logger.getLogger(DatabaseConnectionPool.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	/**
	 * Singleton constructor
	 */
	private DatabaseConnectionPool() throws Exception {

		try {
			// Load the JDBC driver through tomcat connection pool
			Context initCtx = new InitialContext();
		//Context envCtx = (Context) initCtx.lookup("java:comp/env");
			
			// Look up data source
			if (ds == null) {
			//	//////System.out.println(" Data source is null try to create new datasource ");
				ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/hrerp");//For other Datapools.
			//ds = (DataSource) initCtx.lookup("jdbc/resource");//For Glassfish internal DataPool.
			}

		} catch (Exception e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
			throw new Exception(" Database Connection Exception  "+ e.getMessage());
		}
		
	}

	/**
	 * Get the singleton instance, which is used to create the datasource only once in the application context.
	 */
	private static DatabaseConnectionPool getInstance() throws Exception {
		
		if (dbConnectionPool == null) {
			try {
			//	//////System.out.println(" Build the DatabaseConnectionPool object  ");
				dbConnectionPool = new DatabaseConnectionPool();
			} catch (Exception e) {
				//////System.out.println("Exception in getting the connection from datasource "+ e.getMessage());
				e.printStackTrace();
				throw e;
			}
		} 
		return dbConnectionPool;
		
	}

	/**
	 * Get the datasource
	 */
	private DataSource getDataSource() {
		return this.ds;
	}

	/**
	 * Get the connection from the pool
	 */
	public static Connection getConnection(String caller) throws SQLException, MYException 
	{
		
		DatabaseConnectionPool dbConnectionPool = null;
		Connection con = null;
		try {
			dbConnectionPool = DatabaseConnectionPool.getInstance();
			con = dbConnectionPool.getDataSource().getConnection();
		//	//////System.out.println("connection is " + con.toString());
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} catch (Exception e) {
			e.printStackTrace();
			throw new MYException(e.getMessage());
		}
		////////System.out.println(" connection obtained from datatSource " + caller);
		return (con);
		
	}
}
