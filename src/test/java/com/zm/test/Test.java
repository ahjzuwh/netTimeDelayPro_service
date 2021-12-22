package com.zm.test;

import java.io.File;
import com.zm.util.decode.DecodeUtil;
import web.sys.Globals;
public class Test {
	public static void main(String[] args) {
		Globals.LOGFILE = new File("D:\\log.txt");
		System.out.println(DecodeUtil.DecryptBase64(("b5f53b2e09000034701f6603091403570316542a3325590e73175c69534a10205831180514112222066c4e56035e456d716a56685e3b02547e3659"), "000800010003", true));
		System.out.println(DecodeUtil.Encrypt("MQeye@DB7.8"));
	}
}
