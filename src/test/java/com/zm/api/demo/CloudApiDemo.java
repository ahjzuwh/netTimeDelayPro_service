package com.zm.api.demo;
import java.io.File;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.zm.interfaze.cloud.client.CloudClient;
import web.sys.Globals;
public class CloudApiDemo {
	public static void main(String[] args) {
		Globals.LOGFILE = new File("D:\\log.txt");
		// 获取CloudClient
		CloudClient client = new CloudClient("key201907310001", "iaczrcsjq", "https://wx.iacyun.com/private/cloudserver/api.data","https://wx.iacyun.com/private/wx/api.data");
		//调用接口
		//调用短信接口SMS
		sendSMSMsgDemo(client);
		//调用邮件接口
		//sendEmailMsgDemo(client);
		//调用微信接口
		//sendWeiXinMsgDemo(client);
		//调用Push接口
		//sendPushMsgDemo(client);
		//调用获取服务端时间
		//getCloudServerTime(client);
		//通过云端获取用户信息
		//getUserMsgFromCloudServer(client);
		//调用小程序接口
		//sendWeiXinMPMsgDemo(client);
		//通过JS Code获取用户信息
		//code2SessionDemo(client);
		//绑定用户微信信息
		//bindWXUserDemo(client);
		//解绑用户微信信息
		//unBindWXUserDemo(client);
	}

	public static void unBindWXUserDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject params = new JSONObject();
		params.put("doAction", "unBindWXUser");
		params.put("cnfindexno", "CNF0009");
		//需要解绑的openid
		params.put("openid", "ou4KK5NbY7m72RQYJjy3sNRzqW_E");
		//需要解绑的账号
		params.put("loginname", "superadmin1");
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void bindWXUserDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject params = new JSONObject();
		params.put("doAction", "bindWXUser");
		params.put("cnfindexno", "CNF0009");
		//需要绑定的openid
		params.put("openid", "ou4KK5NbY7m72RQYJjy3sNRzqW_E");
		//需要绑定的账号
		params.put("loginname", "superadmin");
		//图像路径 可选
		params.put("avatarUrl", "http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epqwAribARdbiaehzib7gTMeNEXAIO3KKkrichwKyFwJZfDUbouy8cHvYXJkXoI8Ow5fQRhZl1iaPN7hZA/132");
		//昵称 可选
		params.put("nickName", "流星追梦");
		//开放联合编码 可选
		params.put("unionid", "");
		
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void code2SessionDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject params = new JSONObject();
		params.put("doAction", "code2Session");
		params.put("cnfindexno", "CNF0009");
		params.put("js_code", "ou4KK5NbY7m72RQYJjy3sNRzqW_E");
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void sendWeiXinMPMsgDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject sendData = new JSONObject();
		sendData.put("cnfindexno", "CNF0009");
		sendData.put("msgtype", "template");
		//模板编号
		sendData.put("template_id","v0wwdwd6xElLVvhQVVcOIuer3HSF6CgJt9TIW3Anl6Y");
		//==================
		//添加指定用户的openid 多个之间用, 隔开
		sendData.put("openids","ou4KK5NbY7m72RQYJjy3sNRzqW_E,ou4KK5KoqDh5AxD34n0oUScq-3IE"); // 可选 ①
		// 如果不知道用户的openid 只知道用的登录账号，也没有问题的直接发送到对应账号，后台会自动找到账号对应的openid
		//sendData.put("receivers","superadmin,wangsonghai");// 可选②
		//以上①② 至少有一项
		
		//==================
		//关联小程序相关参数 ①
		sendData.put("miniprogram_state","formal");
		//关联URL ②
		sendData.put("page","pages/index/assetindex");
		
		//以上①② 二选一 或者都没有 如果有的时候会点击后跳转对应的如果①②都有优先跳转①小程序
		//模板参数
		JSONObject data = new JSONObject();
		JSONObject first = new JSONObject();
		first.put("value", "202012210008");
		first.put("color", "#f7002e");
		data.put("character_string19", first);
		JSONObject date2 = new JSONObject();
		date2.put("value", "2020-12-21 19:41:55");
		data.put("date2", date2);
		JSONObject name3 = new JSONObject();
		name3.put("value", "瞿少秋");
		data.put("name3", name3);
		JSONObject phrase5 = new JSONObject();
		phrase5.put("value", "审核通过");
		phrase5.put("color", "#07AA4D");
		data.put("phrase5", phrase5);
		JSONObject thing4 = new JSONObject();
		thing4.put("value", "如有不清楚可以点击本消息查看详情");
		data.put("thing4", thing4);
		sendData.put("data",data);
		JSONObject params = new JSONObject();
		params.put("doAction", "WXPush");
		params.put("sendData", sendData);
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void getUserMsgFromCloudServer(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject params = new JSONObject();
		params.put("doAction", "getUserMsg");
		params.put("usercode", "13003061337");
		params.put("fields", "all");
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void getCloudServerTime(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject params = new JSONObject();
		params.put("doAction", "getServerTime");
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void sendPushMsgDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject sendData = new JSONObject();
		sendData.put("cnfindexno", "CNF0006");
		//推送对应的平台  android ios android_ios
		sendData.put("platform", "android");
		
		//推送对应的tags ①
		JSONArray tags = new JSONArray();
		tags.add("amshren");
		sendData.put("tags",tags);
		//推送对应的alias ②
		JSONArray alias = new JSONArray();
		sendData.put("alias",alias);
		//推送对应的regids ③
		JSONArray regids = new JSONArray();
		sendData.put("regids",regids);
		
		// 以上①②③ 三个组合 至少包含一个
		
		
		//消息体
		sendData.put("content","测试邮件信息！");
		//消息标题
		sendData.put("title","我只是一个标题");
		
		//扩展参数用于做消息业务处理
		JSONObject extras = new JSONObject();
		extras.put("msgid", "202012150001");
		sendData.put("extras",extras);
		
		
		JSONObject params = new JSONObject();
		params.put("doAction", "pushMsg");
		params.put("sendData", sendData);
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void sendWeiXinMsgDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject sendData = new JSONObject();
		sendData.put("cnfindexno", "CNF0003");
		sendData.put("msgtype", "template");
		//模板编号
		sendData.put("template_id","v9gHxrWrzBVh-ydNbDkWf95AxPv32vtLsALnjR50DWQ");
		//==================
		//添加指定用户的openid 多个之间用, 隔开
		sendData.put("openids","o_3p90vXBVSsg5XijnFt9qaIEJoQ"); // 可选 ①
		// 如果不知道用户的openid 只知道用的登录账号，也没有问题的直接发送到对应账号，后台会自动找到账号对应的openid
		sendData.put("receivers","superadmin,wangsonghai");// 可选②
		//以上①② 至少有一项
		
		//==================
		//关联小程序相关参数 ①
		JSONObject miniprogram = new JSONObject();
		miniprogram.put("appid", "wxd16120caaf7f2d02");
		miniprogram.put("pagepath", "pages/index/index");
		sendData.put("miniprogram",miniprogram);
		//关联URL ②
		sendData.put("url","https://www.baidu.com");
		//以上①② 二选一 或者都没有 如果有的时候会点击后跳转对应的如果①②都有优先跳转①小程序
		//模板参数
		JSONObject data = new JSONObject();
		JSONObject first = new JSONObject();
		first.put("value", "您好,你有一个新的工单等待处理!(优先级:一级)");
		first.put("color", "#f7002e");
		data.put("first", first);
		JSONObject keyword1 = new JSONObject();
		keyword1.put("value", "中心机房");
		data.put("keyword1", keyword1);
		JSONObject keyword2 = new JSONObject();
		keyword2.put("value", "瞿少秋");
		data.put("keyword2", keyword2);
		JSONObject keyword3 = new JSONObject();
		keyword3.put("value", "2020-12-15");
		data.put("keyword3", keyword3);
		JSONObject remark = new JSONObject();
		remark.put("value", "如有不清楚可以点击本消息查看详情");
		remark.put("color", "#FF002B");
		data.put("remark", remark);
		sendData.put("data",data);
		JSONObject params = new JSONObject();
		params.put("doAction", "WXPush");
		params.put("sendData", sendData);
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void sendEmailMsgDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject sendData = new JSONObject();
		sendData.put("cnfindexno", "CNF0004");
		JSONArray recipients = new JSONArray();
		recipients.add("594686593@qq.com");
		sendData.put("recipients", recipients);
		sendData.put("content","测试邮件信息！");
		sendData.put("subject","我只是一个副标题");
		JSONArray files = new JSONArray();//附件可选项
		sendData.put("files",files);
		JSONObject params = new JSONObject();
		params.put("doAction", "sendMail");
		params.put("sendData", sendData);
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}

	public static void sendSMSMsgDemo(CloudClient client) {
		// TODO Auto-generated method stub
		JSONObject sendData = new JSONObject();
		sendData.put("cnfindexno", "CNF0002");
		sendData.put("templateCode", "gWKz14");
		sendData.put("smsContent","测试告警信息");
		sendData.put("receiver","18709850070");
		JSONObject datas = new JSONObject();
		datas.put("warnmsg", "测试告警信息");
		sendData.put("params",datas.toJSONString());
		JSONObject params = new JSONObject();
		params.put("doAction", "sendSMS");
		params.put("sendData", sendData);
		JSONObject dataBack = client.getInterfazeData(params);
		System.out.println("dataBack:"+dataBack);
	}
}
