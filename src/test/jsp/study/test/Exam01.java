package test.jsp.study.test;

public class Exam01 {
	int a;
	String str;
	char c;
	int getInt() {
		return 1;
	}
	void getInt(String str) {
		return;
	}
	Exam01 getExam01() {
		this.a = 3;
		this.str = "abc";
		return this;
	}
	public static void main(String[] args) {

		Exam01 e = new Exam01().getExam01();
		System.out.println(e.a);
		
	
		
	}
}
