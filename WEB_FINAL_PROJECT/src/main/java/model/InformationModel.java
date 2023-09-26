package model;

public class InformationModel {
	private String Description;
	private String Address;
	private String Phone;
	private String Fax;
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getFax() {
		return Fax;
	}
	public void setFax(String fax) {
		Fax = fax;
	}
	public InformationModel() {
		super();
	}
	public InformationModel(String description, String address, String phone, String fax) {
		super();
		Description = description;
		Address = address;
		Phone = phone;
		Fax = fax;
	}
	
}
