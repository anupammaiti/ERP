package com.svs.finance.util;

/**
 *
 * @author manikanta
 */

import java.io.*;
import org.apache.log4j.Logger;

/**
 *
 * @author ravi
 */
public class AppLogger {

    public static AppLogger applogger = new AppLogger();
    final static Logger logger = Logger.getLogger(AppLogger.class);

    static {
        getInstance();
    }

    private AppLogger() {

    }

    public static AppLogger getInstance() {
        return applogger;
    }

    public static void info(String msg) {
        try {
            logger.info(msg);
        } catch (Exception e) {
            System.out.println("Exception in AppLogger");
        }
    }

    public static void error(String msg, Exception e) {
        try {

            Writer writer = new StringWriter();
            PrintWriter printWriter = new PrintWriter(writer);
            e.printStackTrace(printWriter);
            String result = writer.toString();
            result = msg + result;

            logger.error(result);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void war(String msg) {
        try {
            logger.warn(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void fatal(String msg) {
        try {
            logger.fatal(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void debug(String msg){
        try {
            logger.debug(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
}
