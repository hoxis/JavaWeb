package com.liuhao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class AccessCountFilter implements Filter {

	// 存放url地址及其访问次数,key为URI，value为访问次数
	Map<String, Integer> accessMap;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// 初始化
		accessMap = new Hashtable<String, Integer>();
		// 将accessMap放到application属性范围内
		filterConfig.getServletContext().setAttribute("accessMap", accessMap);

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 向下转型，doFilter()方法中定义的request是ServletRequest类型的对象，将ServletRequest变为HttpServletRequest接口对象
		HttpServletRequest req = (HttpServletRequest) request;

		// 获取请求地址
		String uri = req.getRequestURI();
		// 从存储的map中试图获取访问次数
		Integer sumAccess = accessMap.get(uri);

		// 若是第一次访问，则对访问次数初始化
		if (sumAccess == null) {
			sumAccess = 0;
		}

		// 访问次数自加一
		sumAccess++;

		accessMap.put(uri, sumAccess);

		// 为了将Map在jsp页面中更好的展示，同时可以对uri按访问次数进行排序，将Map按entry提取出
		if (uri.endsWith("/AccessCountFilter")) {
			Set<Map.Entry<String, Integer>> accessSet = accessMap.entrySet();
			List<Map.Entry<String, Integer>> accessList = new ArrayList<Map.Entry<String, Integer>>();

			accessList.addAll(accessSet);

			// 定义比较器
			Comparator<Map.Entry<String, Integer>> comparator = new Comparator<Map.Entry<String, Integer>>() {

				@Override
				public int compare(Entry<String, Integer> o1,
						Entry<String, Integer> o2) {
					return o2.getValue().compareTo(o1.getValue());
				}
			};

			// 对accessList中的数据按访问次数排序
			Collections.sort(accessList, comparator);

			request.setAttribute("accessList", accessList);
			request.getRequestDispatcher("/accesscount.jsp").forward(request,
					response);

			return;
		}

		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {

	}

}
