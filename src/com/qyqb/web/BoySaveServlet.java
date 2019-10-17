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
import com.qyqb.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import sun.awt.SunHints.Value;

public class BoySaveServlet extends HttpServlet{

	DbUtil dbUtil = new DbUtil();
	BoyDao boyDao = new BoyDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String boyName=request.getParameter("boyname");
		String boyDesc=request.getParameter("boydesc");
		String boyPirce=request.getParameter("boypirce");
		String id=request.getParameter("id");
		Boy boy=new Boy(boyName,boyDesc,boyPirce);
		if(StringUtil.isNotEmpty(id)){
			boy.setId(Integer.parseInt(id));
		}
		Connection con=null;
		try{
			con=dbUtil.getCon();
			int saveNums=0;
			JSONObject result=new JSONObject();
			if(StringUtil.isNotEmpty(id)){
				saveNums=boyDao.boyModify(con, boy);
			}else{
				saveNums=boyDao.boyAdd(con, boy);
			}
			if(saveNums>0){
				result.put("success", "true");
			}else{
				result.put("success", "true");
				result.put("errorMsg", "±£¥Ê ß∞‹");
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
