package com.svs.ensign.resort.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public class ConvertStackTracetoString {
	
	public String sendingErrorAsString(Exception e){
		Writer writer = new StringWriter();
		PrintWriter printWriter = new PrintWriter(writer);
		e.printStackTrace(printWriter);
		String s = writer.toString();	
		return s;
	}
	
}
