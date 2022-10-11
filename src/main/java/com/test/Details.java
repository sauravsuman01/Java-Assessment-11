package com.test;

import java.sql.Date;
import java.time.LocalDate;

public class Details {
	private String name;
	private String city;
	private String phone;
	private String destination;
	private int weight;
	private int booking_id;
	private Date shipment_date;
	private Date delivery_date;	
	
	
	public Date getShipment_date() {
		return shipment_date;
	}
	public void setShipment_date(Date shipment_date) {
		this.shipment_date = shipment_date;
	}
	public Date getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(Date delivery_date) {
		this.delivery_date = delivery_date;
	}
	public int getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	

}
