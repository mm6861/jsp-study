package test.jsp.study.test;

class Dog{
	String name = "페피";
}
public class Exam02 {
	Dog d;
	public Dog getDog() {
		if(d==null) {
		return new Dog();
		}
		return d;
	}

	public static void main(String[] args) {
		Exam02 e= new Exam02();
		Dog d = e.getDog();	
		d.name = "퍼피";
		System.out.println(d.name);
		System.out.println(d.name);
		d = e.getDog(); 
		System.out.println(d.name);
	}
}
