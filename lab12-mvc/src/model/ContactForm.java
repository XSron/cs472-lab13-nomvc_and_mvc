package model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class ContactForm {
	private String name;
	private String gender;
	private String category;
	private String message;
	public ContactForm() {}
	public ContactForm(String name, String gender, String category, String message) {
		super();
		this.name = name;
		this.gender = gender;
		this.category = category;
		this.message = message;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String toQueryString() throws UnsupportedEncodingException {
		return "name="+ URLEncoder.encode(name, "UTF-8") +"&gender="+ gender +"&category="+ category +"&message="+ URLEncoder.encode(message, "UTF-8");
	}
}
