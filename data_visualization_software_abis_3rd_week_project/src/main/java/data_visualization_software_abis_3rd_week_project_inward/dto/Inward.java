package data_visualization_software_abis_3rd_week_project_inward.dto;

public class Inward {
	private int id;
	private String name;
	private int amount;
	private int totalamount;
	@Override
	public String toString() {
		return "Inward [id=" + id + ", name=" + name + ", amount=" + amount + ", totalamount=" + totalamount
				+ ", discount=" + discount + ", discription=" + discription + "]";
	}
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(int totalamount) {
		this.totalamount = totalamount;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	private int discount;
	private String discription;
	
}
