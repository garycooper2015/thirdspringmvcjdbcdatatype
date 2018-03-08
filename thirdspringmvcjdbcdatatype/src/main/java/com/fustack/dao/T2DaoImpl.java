package com.fustack.dao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.fustack.po.T2PO;
import com.fustack.util.MathUtil;



@Repository
public class T2DaoImpl implements T2Dao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	/**
	 * 添加并返id
	 */
	public long addT2(T2PO bean) {
		// TODO Auto-generated method stub

		final String sql = "insert into t2(i1,i2,s1,s2,s3,date1,datetime1,datetime2,decimal1,double1,f1) "
				+ " values(?,?,?,?,?,?,?,?,?,?,?)";

		// 在内部类前定义final变量
		final int i1 = bean.getI1();
		final int i2 = bean.getI2();
		final String s1 = bean.getS1();
		final String s2 = bean.getS2();
		final String s3 = bean.getS3();
		final Date date1 = bean.getDate1();
		final Timestamp datatime1 = bean.getDatetime1();
		final Timestamp datatime2 = bean.getDatetime2();
		final BigDecimal decimal1 = bean.getDecimal1();
		final Double double1 = bean.getDouble1();
		final Float f1 = bean.getF1();

		KeyHolder keyHolder = new GeneratedKeyHolder();
		this.jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(sql, new String[] { "id" });
				ps.setInt(1, i1);
				ps.setInt(2, i2);
				ps.setString(3, s1);
				ps.setString(4, s2);
				ps.setString(5, s3);
				ps.setDate(6, date1);
				ps.setTimestamp(7, datatime1);
				ps.setTimestamp(8, datatime2);
				ps.setBigDecimal(9, decimal1);
				ps.setDouble(10, double1);
				ps.setFloat(11, f1);
				return ps;
			}
		}, keyHolder);

		return keyHolder.getKey().longValue();
	}
	
	/**
	 * 得到bean
	 */
	public T2PO getT2(T2PO bean) {
		
		T2PO po = new T2PO();
				
		po = this.jdbcTemplate.queryForObject("select * from t2 where id = ?",new Object[] {bean.getId()},new T2Mapper());
		
		return po;
		
	}
	
	/**
	 * 得到结果集的内部类
	 * @author garycooper
	 *
	 */
	private static final class T2Mapper implements RowMapper<T2PO>{
		public T2PO mapRow(ResultSet rs,int rowNum) throws SQLException{
			T2PO bean = new T2PO();
			bean.setId(rs.getInt("id"));
			bean.setI1(rs.getInt("i1"));
			bean.setI2(rs.getInt("i2"));
			bean.setS1(rs.getString("s1"));
			bean.setS2(rs.getString("s2"));
			bean.setS3(rs.getString("s3"));
			bean.setDate1(rs.getDate("date1"));
			bean.setDatetime1(rs.getTimestamp("datetime1"));
			bean.setDatetime2(rs.getTimestamp("datetime2"));
			//去掉小数点后多余的0 MathUtil.subZero
			bean.setDecimal1(new BigDecimal(MathUtil.subZero(rs.getBigDecimal("decimal1").toString())));
			bean.setDouble1(new Double(MathUtil.subZero(String.valueOf(rs.getDouble("double1")))));
			
//			System.out.println("rs.getFloat(\"f1\") = " + rs.getFloat("f1"));
//			System.out.println("String.valueOf(rs.getFloat(\"f1\")) = " + String.valueOf(rs.getFloat("f1")));
//			System.out.println("MathUtil.subZero(String.valueOf(rs.getFloat(\"f1\")))) = " + MathUtil.subZero(String.valueOf(rs.getFloat("f1"))));
			
			bean.setF1(new Float(MathUtil.subZero(String.valueOf(rs.getFloat("f1")))));
			
			return bean;
		}
	}

}
