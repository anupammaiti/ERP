package com.svs.ensign.resort.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class C_Util_Misleneous {

    private static C_Util_Misleneous Misutils = null;
    static JSONObject respObj = null;

    public C_Util_Misleneous() {

    }

    public static C_Util_Misleneous getInstance() {
        if (Misutils == null) {
            Misutils = new C_Util_Misleneous();
        }
        return Misutils;
    }

    public static JSONObject convBeanToJSNArray(List<?> ll) {
        respObj = new JSONObject();
        JSONArray respArr = new JSONArray();
        respArr = JSONArray.fromObject(ll);
        if (ll.size() > 0) {
            respObj.put("Data", respArr);
        } else {
            respObj.put("Data", new JSONArray());
        }
        AppTrack.debug("respObj::: " + respObj);
        return respObj;
    }

    public static JSONObject prepareDropDownData(JSONObject ddData) {
        JSONArray colDataArr = new JSONArray();
        JSONArray ddArr = new JSONArray();
        JSONObject ddRecData = new JSONObject();
        try {
            colDataArr = ddData.getJSONArray("Data");
            if (colDataArr.size() > 0) {
                for (int i = 0; i < colDataArr.size(); i++) {
                    ddRecData.put("NAME", colDataArr.getString(i));
                    ddRecData.put("VALUE", colDataArr.getString(i));
                    ddArr.add(ddRecData);
                }
                respObj.put("Data", ddArr);
            } else {
                ddArr.add(new JSONObject());
            }
        } catch (Exception e) {
            AppTrack.error("Error in prepareDropDownData", e);
        }
        return respObj;
    }

    public static boolean prepareReport(InputStream in, HttpServletResponse response, HashMap parameters, Connection con) {
        boolean isReportGen = false;
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = in;//Mapping jasper file to InputStream. 
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, con);
            servletOutputStream.flush();
            servletOutputStream.close();
            isReportGen = true;
        } catch (Exception e) {
            isReportGen = false;
            AppTrack.error("Error in prepareReport", e);
        } finally {
            try {
                in.close();
            } catch (Exception e) {
                AppTrack.error("Error in prepareReport::", e);
            }
        }
        return isReportGen;
    }

    // deserialize to Object from given file
    public static Object deserialize(String fileName) throws IOException,
            ClassNotFoundException {
        FileInputStream fis = new FileInputStream(fileName);
        ObjectInputStream ois = new ObjectInputStream(fis);
        Object obj = ois.readObject();
        ois.close();
        return obj;
    }

}
