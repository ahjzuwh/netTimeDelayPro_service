package com.zm.db;

import java.io.File;
import java.util.ArrayList;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zm.base.sms.obj.Business_sms_mod;
import com.zm.util.date.DateUtil;

import web.db.DBTransactionObject;
import web.sys.Globals;

public class DBTest {
	public static void main(String[] args) {
		Globals.LOGFILE = new File("D:\\log.txt");
		testDBTransactionObject();
		//base_sys_cnf
		//business_job_cnf
	}
	public static void testDBTransactionObject() {
		DBTransactionObject obj = new DBTransactionObject(new Exception(),-1);
		obj.setBugMode(false);
		try
		{
			String sql = "SELECT * FROM business_sms_mod WHERE indexno = 'sms201904030001'";
			String sql1 = "SELECT sms_content FROM business_sms_mod WHERE indexno = ? ";
			String sql2 = "SELECT sms_content FROM business_sms_mod WHERE indexno = ? and template_status = ?";
			String name1 = obj.getStrVal("SELECT sms_content FROM business_sms_mod WHERE indexno = 'sms201904030001'");
			ArrayList<Object> params = new ArrayList<Object>();
			params.add("sms201904030001");
			String name2 = obj.getStrVal(sql1, params);
			String name3 = obj.getStrVal(sql2,"sms201904030001",1);
			System.out.println(name1);
			System.out.println(name2);
			System.out.println(name3);
			JSONObject ModeMsg1 = obj.getJsonResult(sql);
			JSONObject ModeMsg2 = obj.getJsonResult("SELECT * FROM business_sms_mod WHERE indexno = ? ", params);
			JSONObject ModeMsg3 = obj.getJsonResult("SELECT * FROM business_sms_mod WHERE indexno = ?  and template_status = ? ","sms201904030001",1);
			JSONObject ModeMsg4 = obj.getObjJsonResult("SELECT * FROM business_sms_mod WHERE indexno = ? ", "sms201904030001");
			System.out.println(ModeMsg1);
			System.out.println(ModeMsg2);
			System.out.println(ModeMsg3);
			System.out.println(ModeMsg4);
			Business_sms_mod mod1 = (Business_sms_mod)obj.getClazzObj(sql, new ArrayList<Object>(), new Business_sms_mod());
			System.out.println(mod1.obj2json());
			@SuppressWarnings("unchecked")
			ArrayList<Business_sms_mod> mods = (ArrayList<Business_sms_mod>)obj.listObj("SELECT * FROM business_sms_mod", new ArrayList<Object>(), new Business_sms_mod());
			System.out.println(mods.size());
			String indexno = obj.getIndexCode("business_sms_mod", "indexno", "", 8, "sms", 4);
			System.out.println(indexno);
			mod1.setIndexno(indexno);
			JSONObject addResult = obj.addDataToDB(mod1.obj2json(), "business_sms_mod");
			System.out.println("添加结果："+addResult);
			indexno = obj.getIndexCode("business_sms_mod", "indexno", "", 8, "sms", 4);
			System.out.println(indexno);
			mod1.setSms_title("哈哈为被修改了！"+DateUtil.getCurDateTime());
			JSONArray  PKClum = new JSONArray();
			PKClum.add("indexno");
			obj.updateDataToDB(mod1.obj2json(), "business_sms_mod", PKClum);
			obj.commitCon();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			obj.freecon();
		}
	}
}
