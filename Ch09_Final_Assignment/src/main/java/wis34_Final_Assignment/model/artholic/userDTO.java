package wis34_Final_Assignment.model.artholic;

public class userDTO {
	private int num;
	private String id;
	private String password;
	private String name;
	private int age;
	private String email;
	private int grade;
		
	public userDTO() {
		super();
	}

	public userDTO(int num, String id, String password, String name, int age, String email, int grade) {
		super();
		this.num = num;
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.email = email;
		this.grade = grade;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "userDTO [num=" + num + ", id=" + id + ", password=" + password + ", name=" + name + ", age=" + age
				+ ", email=" + email + ", grade=" + grade + "]";
	}




}
