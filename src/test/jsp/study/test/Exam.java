package test.jsp.study.test;

public class Exam {
	public static void main(String[] args) {
		for(int i=1;i<=100;i++) {
//			if(i%10==3 || i%10==6 || i%10==9 ) {
//				System.out.print("짝,");
//			}else {
//				System.out.print(i+",");
//			}
//			
//			if(i%10==0) {
//				System.out.println();
//			}
			String numStr = i+"";
			numStr = numStr.substring(numStr.length()-1); // 마지막글자			
			int num = Integer.parseInt(numStr);
			if(num!=0 && num%3==0) {
				System.out.print("짝,");
			}else {
				System.out.print(i+",");
			}
			if(i%10==0) {
				System.out.println();
			}
		}
	}
}
