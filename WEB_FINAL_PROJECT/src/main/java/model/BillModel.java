package model;

import java.sql.Date;
import java.util.List;

public class BillModel {
	private Long BillID;
	private Long UserID;
	private String Date;
	private Double TotalPrice;
	private String ShippingAddress;
	private String Note;
	private List<OrderItemModel> OrderItem;
	private int Status;

	public Long getBillID() {
		return BillID;
	}

	public void setBillID(Long billID) {
		BillID = billID;
	}

	public Long getUserID() {
		return UserID;
	}

	public void setUserID(Long userID) {
		UserID = userID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public Double getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		TotalPrice = totalPrice;
	}

	public String getShippingAddress() {
		return ShippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		ShippingAddress = shippingAddress;
	}

	public String getNote() {
		return Note;
	}

	public void setNote(String note) {
		this.Note = note;
	}

	public int getStatus() {
		return Status;
	}

	public void setStatus(int status) {
		Status = status;
	}

	public List<OrderItemModel> getOrderItem() {
		return OrderItem;
	}

	public void setOrderItem(List<OrderItemModel> orderItem) {
		OrderItem = orderItem;
	}

	public BillModel() {
		super();
	}

	public BillModel(Long billID, Long userID, String date, Double totalPrice, String shippingAddress,
			String note, int status) {
		super();
		BillID = billID;
		UserID = userID;
		Date = date;
		TotalPrice = totalPrice;
		ShippingAddress = shippingAddress;
		Note = note;
		Status = status;
	}

}