package tl.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity@Table(name="Student")
@Component
public class Student {
	
	
	@Id@Column(name="student_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer student_id; //自動產生
	
	@Column(name="student_name")
	private String student_name;		//not null
	
	@Column(name="student_gender")
	private String student_gender; //not null
	
	@Column(name="account")
	private String account; //not null
	
	@Column(name="password")
	private String password; //not null
	
	@Column(name="birth")
	private Date birth;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="email")
	private String email;
	
	@Column(name="country")
	private String country;
	
	@Column(name="city")
	private String city;
	
	@Column(name="address")
	private String address;
	
	@Column(name="registration_date")
	private Date registration_date;
	
	public Student() {
		
	}
	
	public Student(String account,String password) {
		this.account=account;
		this.password=password;
	}
	
	public Student(String student_name, String student_gender, String account, String password,
			Date birth, String phone, String email, String country, String city, String address,
			Date registration_date) {
		this.student_name = student_name;
		this.student_gender = student_gender;
		this.account = account;
		this.password = password;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.country = country;
		this.city = city;
		this.address = address;
		this.registration_date = registration_date;
	}

	public Integer getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_gender() {
		return student_gender;
	}
	public void setStudent_gender(String student_gender) {
		this.student_gender = student_gender;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getRegistration_date() {
		return registration_date;
	}
	public void setRegistration_date(Date registration_date) {
		this.registration_date = registration_date;
	}
	@Override
	public String toString() {
		return "student_id=" + student_id + "\t"
				+ (student_name != null ? "student_name=" + student_name + "\t" : "")
				+ (student_gender != null ? "student_gender=" + student_gender + ", " : "")
				+ (account != null ? "account=" + account + ", " : "")
				+ (password != null ? "password=" + password + ", " : "")
				+ (birth != null ? "birth=" + birth + ", " : "") + (phone != null ? "phone=" + phone + ", " : "")
				+ (email != null ? "email=" + email + ", " : "") + (country != null ? "country=" + country + ", " : "")
				+ (city != null ? "city=" + city + ", " : "") + (address != null ? "address=" + address + ", " : "")
				+ (registration_date != null ? "registration_date=" + registration_date : "") +"\n";
	}
	
	
}
