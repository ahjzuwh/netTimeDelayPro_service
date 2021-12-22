package modules.business.station;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zm.util.date.DateUtil;
import com.zm.util.debug.DebugUtil;
import com.zm.util.decode.DecodeUtil;
import web.db.DBConnector;
import web.db.DBTransactionObject;
import web.db.DBUtil;
import web.sys.IAjaxAction;
import web.sys.PageList;
import web.sys.WebForm;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

public class Station_interface implements IAjaxAction {
	private final double EARTH_RADIUS = 6378.137;
	@Override
	public JSONObject execute(WebForm form) throws Exception {
		JSONObject returnObj  = new JSONObject();
		String doAction = form.getStr("doAction");
		if("getData".equals(doAction)) {
			returnObj = getData(form,returnObj);
		}else if("getGroupData".equals(doAction)) {
			returnObj = getGroupData(form,returnObj);
		}else if("toshow".equals(doAction)) {
			returnObj = toshow(form,returnObj);
		}else if("getStation".equals(doAction)) {
			returnObj = getStation(form,returnObj);
		}else if("logData".equals(doAction)) {
			returnObj = logData(form,returnObj);
		}
		else {
			returnObj.put("isok", false);
			returnObj.put("errmsg", "未知的业务类别参数doAction："+doAction+",请检查！");
		}
		return returnObj;
	}

	private JSONObject logData(WebForm form, JSONObject returnObj) {
		DBTransactionObject obj = new DBTransactionObject(new Exception(),-1);
		obj.setBugMode(false);
		try {
			String startTime = form.getStr("startTime");
			String endTime = form.getStr("endTime");
			String oper = form.getStr("oper");
			String name = form.getStr("logName");
			String datas = form.getStr("datas");
			JSONObject station_group = new JSONObject();
			station_group.put("stime",startTime);
			station_group.put("etime",endTime);
			station_group.put("name",name);
			station_group.put("tester",oper);
			station_group.put("timerange", DateUtil.getDateDiffDesc(startTime,endTime,new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")));
			String id = DBUtil.getIndexCode("station_group","id","",0,"",2);
			station_group.put("id", id);
			returnObj = obj.addDataToDB(station_group,"station_group");
			if(returnObj.getBooleanValue("isok")){
				if(!datas.equals("")){
					JSONArray station_list = obj.getJSONArr("select * from station_info",null);
					JSONArray datas_list = new JSONArray();
					JSONObject datas_json = JSONObject.parseObject(datas);
					Set keyset = datas_json.keySet();
					Iterator<String> it = keyset.iterator();
					while(it.hasNext()){
						String key = it.next();
						JSONObject o = datas_json.getJSONObject(key);
						JSONObject no = new JSONObject();
						Date d = new Date(Long.parseLong(key));
						no.put("time",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS").format(d));
						no.put("ping",o.getString("avgRtt")==null?"0":o.getString("avgRtt"));
						no.put("distance",getDistance(o.getString("lon"),o.getString("lat"),o.getString("cid"),station_list));
						no.put("asu",o.getString("asu")==null?"0":o.getString("asu"));
						no.put("cid",o.getString("cid"));
						no.put("dbm",o.getString("dbm")==null?"0":o.getString("dbm"));
						no.put("lon",o.getString("lon"));
						no.put("lat",o.getString("lat"));
						no.put("id",id);
						datas_list.add(no);
					}
					returnObj = obj.addDatasToDB(datas_list,"station_data");
					obj.commitCon();
				}else {
					returnObj.put("isok", false);
					returnObj.put("errmsg", "datas参数为空！");
					obj.rollback();
				}
			}
		}catch (Exception e){
			DebugUtil.getInstance().DebugMsg(e);
			returnObj.put("isok", false);
			returnObj.put("errmsg", "程序异常，请检查！异常信息："+e.getMessage());
			obj.rollback();
		}finally {
			obj.freecon();
		}
		return returnObj;
	}

	private String getDistance(String dlon,String dlat,String cid,JSONArray station_list){
		double dis = 0.0;
		if(station_list.size() > 0 && dlon != null && !dlon.equals("") && dlat != null && !dlat.equals("")){
			double lond = Double.parseDouble(dlon);
			double latd = Double.parseDouble(dlat);
			String slon = "";
			String slat = "";
			for(int i=0;i<station_list.size();i++){
				JSONObject o = station_list.getJSONObject(i);
				if(cid.equals(o.getString("cid"))){
					slon = o.getString("lon");
					slat = o.getString("slat");
					break;
				}
			}
			if(slon != null && !slon.equals("") && slat != null && !slat.equals("")){
				double lons = Double.parseDouble(slon);
				double lats = Double.parseDouble(slat);
				double radLat1 = Math.toRadians(lond);
				double radLat2 = Math.toRadians(lats);
				double a = radLat1 - radLat2;
				double b = Math.toRadians(latd) - Math.toRadians(lons);
				double s = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a/2),2) +
						Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)));
				s = s * EARTH_RADIUS;
				dis = Math.round(s * 10000) / 10000;
			}
		}

		return dis+"";
	}

	private JSONObject getStation(WebForm form, JSONObject returnObj) {
		DBTransactionObject obj = new DBTransactionObject(new Exception(),-1);
		obj.setBugMode(false);
		try {
			String[] ids = form.getStr("ids").split(",");
			JSONArray result = new JSONArray();
			for(String id:ids){
				ArrayList<Object> parmas = new ArrayList<Object>();
				parmas.add(id);
				JSONArray list = obj.getJSONArr("select * from station_info where locate(?,ids)",parmas);
				result.addAll(list);
			}
			obj.commitCon();
			returnObj.put("list",result);
			returnObj.put("isok",true);
		}catch (Exception e){
			DebugUtil.getInstance().DebugMsg(e);
			returnObj.put("isok", false);
			returnObj.put("errmsg", "程序异常，请检查！异常信息："+e.getMessage());
		}finally {
			obj.freecon();
		}
		return returnObj;
	}

	private JSONObject toshow(WebForm form, JSONObject returnObj) {
		String ids = form.getStr("ids");
//		String ip = form.getRequest().getLocalAddr();
//		int port = form.getRequest().getLocalPort();
		String url = "/pages/test.html?ids="+ids;
		form.sendRedirect(url);
		return returnObj;
	}

	private JSONObject getData(WebForm form, JSONObject returnObj) {
		DBTransactionObject obj = new DBTransactionObject(new Exception(),-1);
		obj.setBugMode(false);
		try {
			String id = form.getStr("id");
			ArrayList<Object> parmas = new ArrayList<Object>();
			parmas.add(id);
			JSONArray list = obj.getJSONArr("select * from station_data where id = ? and lon != '' and lat != '' and ping != '' order by time asc",parmas);
			JSONObject data = obj.getJsonResult("select * from station_group where id = ?",parmas);
			obj.commitCon();
			returnObj.put("list",list);
			returnObj.put("data",data);
			returnObj.put("isok",true);
		}catch (Exception e){
			DebugUtil.getInstance().DebugMsg(e);
			returnObj.put("isok", false);
			returnObj.put("errmsg", "程序异常，请检查！异常信息："+e.getMessage());
		}finally {
			obj.freecon();
		}
		return returnObj;
	}

	private JSONObject getGroupData(WebForm form, JSONObject returnObj) {
		Connection con = DBConnector.getConnection(new Exception());
		try {
			int pageSize = form.getInt("limit");
			int curPage = form.getInt("page");
			PageList pagelist = new PageList();
			pagelist.doListJsonArr(con,pageSize,curPage,"select * from station_group",null,form);
			int total = pagelist.getRowCount();
			JSONArray list = pagelist.getJAResult();
			returnObj.put("list",list);
			returnObj.put("total",total);
			returnObj.put("isok",true);
		}catch (Exception e){
			DebugUtil.getInstance().DebugMsg(e);
			returnObj.put("isok", false);
			returnObj.put("errmsg", "程序异常，请检查！异常信息："+e.getMessage());
		}finally {
			DBConnector.freecon(con);
		}
		return returnObj;
	}

}
