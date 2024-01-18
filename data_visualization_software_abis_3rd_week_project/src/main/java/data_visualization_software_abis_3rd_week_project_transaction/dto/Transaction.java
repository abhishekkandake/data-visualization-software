package data_visualization_software_abis_3rd_week_project_transaction.dto;

import java.sql.Date;

public class Transaction {
	private int id;
	private String name;
	private String truckno;
	private String discription;
	private String looding;
	//private String deleveryDate;
	private String length;
	private String width;
	private String height;
	private int amount;
	private int price;
	private int totalamount;
	private int totaldelevery;
	private int advance;
	private String remark;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTruckno() {
		return truckno;
	}
	public void setTruckno(String truckno) {
		this.truckno = truckno;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getLooding() {
		return looding;
	}
	public void setLooding(String looding) {
		this.looding = looding;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getWidth() {
		return width;
	}
	public void setWidth(String width) {
		this.width = width;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(int totalamount) {
		this.totalamount = totalamount;
	}
	public int getTotaldelevery() {
		return totaldelevery;
	}
	public void setTotaldelevery(int totaldelevery) {
		this.totaldelevery = totaldelevery;
	}
	public int getAdvance() {
		return advance;
	}
	public void setAdvance(int advance) {
		this.advance = advance;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "Transaction [id=" + id + ", name=" + name + ", truckno=" + truckno + ", discription=" + discription
				+ ", looding=" + looding + ", length=" + length + ", width=" + width + ", height=" + height
				+ ", amount=" + amount + ", price=" + price + ", totalamount=" + totalamount + ", totaldelevery="
				+ totaldelevery + ", advance=" + advance + ", remark=" + remark + "]";
	}
	
	
}
