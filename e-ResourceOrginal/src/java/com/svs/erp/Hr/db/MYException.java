package com.svs.erp.Hr.db;

public class MYException extends Exception
{
	public MYException(String Msg)
	{
		super(Msg);
	}
	public MYException()
	{
		this("MYException");
	}
}