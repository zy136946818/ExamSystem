package com.neuedu.cn.util;

import java.util.HashMap;

/**
 * @ClassName QueryParam
 * @Description TODO
 * @Author liu38
 * @Date 2018/4/13 13:37
 **/
public class QueryParam extends HashMap<String, Object> {
	//
	private int offset = 0;
	// 每页条数
	private int limit = 10;

	public QueryParam(){
		super();
		this.put("offset", 0);
		this.put("limit", 10);
	}

	public int getOffset(){
		if(this.containsKey("offset")){
			try{
				this.offset = Integer.parseInt(this.get("offset").toString());
			}catch(Exception e){
				// TODO: handle exception
			}
		}
		return offset;
	}

	public void setOffset(int offset){
		this.offset = offset;
	}

	public int getLimit(){
		if(this.containsKey("limit")){
			try{
				this.limit = Integer.parseInt(this.get("limit").toString());
			}catch(Exception e){
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return limit;
	}

	public void setLimit(int limit){
		this.limit = limit;
	}

}
