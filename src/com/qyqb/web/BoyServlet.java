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

public class BoyServlet extends HttpServlet{

	DbUtil dbUtil = new DbUtil();
	BoyDao boyDao = new BoyDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		String rows = request.getParameter("rows");
		String boyName=request.getParameter("boyName");
		if(boyName==null){
			boyName="";
		}
		Boy boy=new Boy();
		boy.setBoyName(boyName);
		PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
		Connection con = null;
		try{
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();
			JSONArray jsonArray=JsonUtil.formatRsToJsonArray(boyDao.boyList(con, pageBean,boy));
			int total=boyDao.boyCount(con,boy);
			result.put("rows", jsonArray);
			result.put("total", total);
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
