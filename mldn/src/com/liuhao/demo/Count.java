package com.liuhao.demo;

public class Count {
	private int count = 0;

	public Count() {
		System.out.println(this.count + "----------一个新的Count对象产生--------" );
	}
	
	public int getCount(){
		return ++this.count;
	}
}
