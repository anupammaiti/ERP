package com.svs.ensign.resort.util;

/**
 *
 * @author manikanta
 */
import com.svs.ensign.resort.controller.C_FinanceController;
import java.io.*;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Properties;
import org.apache.log4j.Logger;

/**
 *
 * @author ravikiran.rayaprolu
 */
public class AppTrack {

    public static AppTrack applogger = new AppTrack();
    final static Logger logger = Logger.getLogger("");

    static {
        getInstance();
    }

    private AppTrack() {

    }

    public static AppTrack getInstance() {
        return applogger;
    }

    public static void info(String msg) {
        try {
            logger.info(msg);
        } catch (Exception e) {
            System.out.println("Exception in AppLogger"+e.getMessage());
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
