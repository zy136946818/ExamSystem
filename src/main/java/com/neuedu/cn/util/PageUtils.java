package com.neuedu.cn.util;

import java.io.Serializable;
import java.util.List;

/**
 * @Author bootdo 1992lcg@163.com
 */
/*
*
*
* */
public class PageUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	//告知btable 共有的数据
	private int total;
	//返回给btable  所有查询到的数据
	private List<?> rows;

	public PageUtils(List<?> list, int total) {
		this.rows = list;
		this.total = total;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

}
