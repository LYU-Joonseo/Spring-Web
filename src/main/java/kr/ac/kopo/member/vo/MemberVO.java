package kr.ac.kopo.member.vo;

import javax.validation.constraints.NotEmpty;
import org.hibernate.validator.constraints.Length;

public class MemberVO {

	@Length(min = 3, message = "3글자이상 입력하세요.")
	@NotEmpty(message = "필수 항목입니다.")
	private String id;
	@Length(min = 8, max = 15, message = "8글자이상 15글자이하로 입력하세요.")
	@NotEmpty(message = "필수 항목입니다.")	
	private String password;
	@NotEmpty(message = "필수 항목입니다.")
	private String name;
	private String phone;
	private String type;
	
	public MemberVO() {
	}
	
	public MemberVO(String id, String password, String name, String phone, String type) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.type = type;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", type=" + type + "]";
	}
}
