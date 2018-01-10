package com.sapient;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class Demo2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JSONObject json1 = new JSONObject();
		json1.put("eid", 1001);
		json1.put("ename", "ram");
		json1.put("sal", 45000);
		System.out.println(json1);

		JSONObject json2 = new JSONObject();
		json2.put("eid", 1002);
		json2.put("ename", "tom");
		json2.put("sal", 33000);
		System.out.println(json2);

		JSONObject json3 = new JSONObject();
		json3.put("eid", 1003);
		json3.put("ename", "sam");
		json3.put("sal", 30000);
		System.out.println(json3);
		
		JSONArray arr =new JSONArray();
		arr.add(json1);
		arr.add(json2);
		arr.add(json3);
		
		System.out.println(arr);
		
	}

}
