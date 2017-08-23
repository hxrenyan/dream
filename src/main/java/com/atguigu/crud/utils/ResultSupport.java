package com.atguigu.crud.utils;


public class ResultSupport<T> implements Result<T> {

	/**
	 * 为什么要序列化
	 */
	private static final long serialVersionUID = -1802692098484483921L;

	private String code;

	private String msg;

	private T model;

	public ResultSupport() { }

	public ResultSupport(String code, String msg, T model) {
		this.code = code;
		this.msg = msg;
		this.model = model;
	}
	

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	
	public String getCode() {
		return code;
	}

	
	public void setCode(String code) {
		this.code = code;
	}

	public void setCode(Integer code) {
		this.code = String.valueOf(code);
	}

	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	
	public T getModel() {
		return model;
	}

	
	public void setModel(T model) {
		this.model = model;
	}
}
