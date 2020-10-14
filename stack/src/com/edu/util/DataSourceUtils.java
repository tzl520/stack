package com.edu.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DataSourceUtils {
	// 创建一个DataSource的数据源
	private static DataSource dataSource = new ComboPooledDataSource() ;
	// 创建一个线程池
	private static ThreadLocal<Connection> tl = new ThreadLocal<Connection>() ;
	
	public static DataSource getDataSource() {
		return dataSource;
	}
	// 获取数据连接对象
	public static Connection getConnection() throws SQLException {
		// 先从线程池中拿一个数据库连接
		Connection conn = tl.get() ;
		if(null == conn) {
			conn = dataSource.getConnection() ;
			tl.set(conn);
		}
		return conn ;
	}
	// 开启事务
	public static void startTransation() throws SQLException {
		getConnection().setAutoCommit(false);
	}
	// 回滚事物
	public static void rollbackTransaction() throws SQLException {
		getConnection().rollback(); 
	}
	// 事物提交和释放
	public static void commitAndRelease() throws SQLException {
		getConnection().commit();
		getConnection().close(); 
		tl.remove(); 
	}
}
