package com.qyqb.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qyqb.dao.BoyDao;
import com.qyqb.model.Boy;
import com.qyqb.model.PageBean;
import com.qyqb.util.DbUtil;
import com.qyqb.util.JsonUtil;
import com.qyqb.util.ResponseUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class BoyDeleteServlet extends HttpServlet{

	DbUtil dbUtil = new DbUtil();
	BoyDao boyDao = new BoyDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String delIds=request.getParameter("delIds");
		Connection con = null;
		try{
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();
			int delNums=boyDao.boyDelete(con, delIds);
			if(delNums>0){
				result.put("success", "true");
				result.put("delNums", delNums);
			}else{
				result.put("errorMsg", "É¾³ýÊ§°Ü");
			}
			ResponseUtil.write(response, result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
