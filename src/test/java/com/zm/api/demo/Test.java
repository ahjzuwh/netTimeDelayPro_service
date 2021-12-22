package com.zm.api.demo;

import java.io.File;
import java.util.ArrayList;

import com.zm.util.date.DateUtil;
import com.zm.util.debug.DebugUtil;
import com.zm.util.math.MathUtil;

import web.db.DBTransactionObject;
import web.sys.Globals;

public class Test {
	 public static void main(String[] args) {
	    	Globals.LOGFILE = new File("E:/logs/testlog"+DateUtil.getCurDate().replaceAll("-", "").replaceAll(":", "")+".txt");
	    	DBTransactionObject obj = new DBTransactionObject(-1);
	    	int flag = MathUtil.getRandomData(59);
			try {
				ArrayList<String> sqls = new ArrayList<String>();
				ArrayList<ArrayList<Object>> parmasArr = new ArrayList<ArrayList<Object>>();
				for(int i=1;i<=10;i++) {
					sqls.add("UPDATE business_token_log  SET createtime = '2099-01-01 23:"+(flag<10?("0"+flag):(""+flag))+":"+(i<10?("0"+i):(""+i))+"' WHERE ID = "+i);
					sqls.add("SELECT * FROM business_token_log  WHERE ID = "+i);
					ArrayList<Object> parmas = new ArrayList<Object>();
					parmasArr.add(parmas);
					parmasArr.add(parmas);
					parmas = new ArrayList<Object>();
					parmas.add(i); 
					String token = obj.getStrVal("SELECT token FROM business_token_log  WHERE ID = ?",parmas);
					System.out.println("token:"+token.trim());
					
					
					
				}
				System.out.println(obj.executeQuerys(sqls,parmasArr));
				/*obj.executeCallableQuerys(sqls,parmas);
				obj.executeCallableQuerys(sqls);*/
				if(flag%2==1) {
					obj.commitCon();
					System.out.println("提交："+flag);
				}else {
					obj.rollback();
					System.out.println("回滚："+flag);
				}
				
			} catch (Exception e) {
				DebugUtil.getInstance().DebugMsg(e); // 打印异常信息
			} finally {
				obj.freecon(); // 释放数据库连接
			}
		}
}
