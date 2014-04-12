package com.liuhao.dao;

import java.util.List;

import com.liuhao.vo.Emp;

public interface IEmpDAO {
	/**
	 * 数据的增加操作，一般以doXxx的方式命名
	 * @param emp 要增加的数据对象
	 * @return 是否增加成功的标记
	 * @throws Exception 有异常交给调用处处理
	 */
	public boolean doCreate(Emp emp) throws Exception;
	
	/**
	 * 查询全部数据，一般以findXxx的方式命名
	 * @param keyWord 查询关键字
	 * @return 返回全部的查询结果，每一个Emp对象表示一行记录
	 * @throws Exception 
	 */
	public List<Emp> findAll(String keyWord) throws Exception;
	
	
	/**
	 * 根据雇员编号查询雇员信息
	 * @param empno 雇员编号
	 * @return 返回雇员的vo对象
	 * @throws Exception
	 */
	public Emp findById(int empno) throws Exception;
}
