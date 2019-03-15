package test.jsp.study.test;

import java.util.HashMap;
import java.util.Map;

public class Exam05 {
	public static void main(String[] args) {
		String[] strs = new String[3]; // String방 3개를 만든거임
										// new String 3번한거 아님!
		System.out.println(strs);
		System.out.println(strs==null);
		//맵은 키하고 밸류로 구성되어 있음 
		//그래서 키 데이터타입과 밸류 데이터타입 두개 지정해줘야지 
		// 밸류데이터타입을 두개 정할 수 있어? 없어! 
		// String[] 도 데이터타입 한개이지! 
		Map<String,String[]> map = new HashMap<>();
		map.put("id", strs);
	}
}
