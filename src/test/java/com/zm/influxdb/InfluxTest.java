package com.zm.influxdb;


import java.util.Date;
import com.alibaba.fastjson.JSONArray;
import com.zm.util.date.DateUtil;
import com.zm.util.debug.DebugUtil;
import com.zm.util.decode.DecodeUtil;

import modules.base.obj.Business_token_log;
import web.db.DBUtil;
public class InfluxTest {
	/**
	 * show databases  查看所有库
	 * show measurements  查看库的所有表
	 * show retention policies on "mqeye"  查看数据保存策略
	 * show continuous queries  查看连续查询
	 * select * from table1,table2 where...  多表查询
	 * select * INTO newTable from table1,table2      多表合并为一个新表
	 * 
	 */
	public static void main(String[] args) {
		long startTime = System.currentTimeMillis();
		startTime = DebugUtil.getInstance().showTimeUse(startTime);
		startTime = DebugUtil.getInstance().showTimeUse(startTime);
		startTime = DebugUtil.getInstance().showTimeUse(startTime);
		for(int i =0;i<99;i++) {
			Business_token_log token = new Business_token_log();
			token.setCreater("SYS");
			token.setCreatetime(DateUtil.getCurDateTime());
			token.setInvalidtime(DateUtil.getMMddYYYY_HHmmss().format(DateUtil.getTimeBySeconds(new Date(), 7200)));
			token.setRequesturl("");
			token.setState(0);
			token.setToken(DBUtil.getRandomCode(10));
			token.setUuid(DBUtil.getRandomCode(10));
			InfluxTools.getInstance().addTokenData(token);
		}
		
		
		JSONArray datas = InfluxDBUtil.queryJsonArr("SELECT * FROM tokenlive.Business_token_log");
		System.out.println(datas.size());
		System.out.println(datas);
		startTime = DebugUtil.getInstance().showTimeUse(startTime);
		InfluxTools.getInstance().closeCon();
		startTime = DebugUtil.getInstance().showTimeUse(startTime);
		System.out.println("000800010025".getBytes().toString());
		System.out.println(DecodeUtil.EncryptBase64("121.196.184.133", "000000000000".getBytes().toString(), true));
		System.out.println(DecodeUtil.DecryptBase64("de6a779f74272d127f5e68462a0f5e4a3f2b624178797d43", "AAAAAAAAAAAA".getBytes().toString(), true));
	}
	
	public static void qureyData(String command) {
		System.out.println(InfluxDBUtil.query(command,InfluxTools.getInstance().getCon()));
	}
	
}
