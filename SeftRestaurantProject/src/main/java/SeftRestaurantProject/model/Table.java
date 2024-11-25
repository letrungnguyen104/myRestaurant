package SeftRestaurantProject.model;

public class Table {
	private int table_id;
	private int area_id;
	private int seats;
	private int table_status;
	public int getTable_id() {
		return table_id;
	}
	public void setTable_id(int table_id) {
		this.table_id = table_id;
	}
	public int getArea_id() {
		return area_id;
	}
	public void setArea_id(int area_id) {
		this.area_id = area_id;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public int getTable_status() {
		return table_status;
	}
	public void setTable_status(int table_status) {
		this.table_status = table_status;
	}
	
}
