package com.qyqb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.qyqb.model.Boy;
import com.qyqb.model.PageBean;
import com.qyqb.util.StringUtil;

public class BoyDao {
	
	public ResultSet boyList(Connection con,PageBean pageBean,Boy boy)throws Exception{
		StringBuffer sb = new StringBuffer("select * from t_boy");
		if(StringUtil.isNotEmpty(boy.getBoyName())){
			sb.append(" and boyname like '%"+boy.getBoyName()+"%'");
		}
		if(pageBean!=null) {
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getRows());
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		return pstmt.executeQuery();
	}
	
	public int boyCount(Connection con,Boy boy)throws Exception{
		StringBuffer sb=new StringBuffer("select count(*) as total from t_boy");
		if(StringUtil.isNotEmpty(boy.getBoyName())){
			sb.append(" and boyname like '%"+boy.getBoyName()+"%'");
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			return rs.getInt("total");
		}else {
			return 0;
		}
	}
	
	public int boyDelete(Connection con,String delIds)throws Exception{
		String sql="delete from t_boy where id in("+delIds+")";
		PreparedStatement pstmt=con.prepareStatement(sql);
		return pstmt.executeUpdate();
	}
	
	public int boyAdd(Connection con,Boy boy)throws Exception{
		String sql="insert into t_boy values(null,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1,boy.getBoyName());
		pstmt.setString(2,boy.getBoyDesc());
		pstmt.setString(3,boy.getBoyPirce());
		return pstmt.executeUpdate();
	}
	
	public int boyModify(Connection con,Boy boy)throws Exception{
		String sql="update t_boy set boyname=?,boydesc=?,boypirce=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1,boy.getBoyName());
		pstmt.setString(2,boy.getBoyDesc());
		pstmt.setString(3,boy.getBoyPirce());
		pstmt.setInt(4, boy.getId());
		return pstmt.executeUpdate();
	}
}
