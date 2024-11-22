package com.infosys.carRentalSystem.bean;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
@Entity
public class CarBooking {
	@Id
	private String bookingId;
	private String username;
	private String variantId;
	private String fromDate;
	private String toDate;
	private Double totalPayment;
	private Double advancePayment;
	private Double pendingPayment;
	private String transactionId;
	private Boolean status;
	public CarBooking(String bookingId, String username, String variantId, String fromDate, String toDate,
			Double totalPayment, Double advancePayment, Double pendingPayment,String transactionId, Boolean status) {
		super();
		this.bookingId = bookingId;
		this.username = username;
		this.variantId = variantId;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.totalPayment = totalPayment;
		this.advancePayment = advancePayment;
		this.pendingPayment = pendingPayment;
		this.transactionId = transactionId;
		this.status = status;
	}
	public CarBooking(String bookingId) {
		super();
		this.bookingId = bookingId;
		this.status=false;
	}
	public CarBooking() {
		// TODO Auto-generated constructor stub
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getVariantId() {
		return variantId;
	}
	public void setVariantId(String variantId) {
		this.variantId = variantId;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public Double getTotalPayment() {
		return totalPayment;
	}
	public void setTotalPayment(Double totalPayment) {
		this.totalPayment = totalPayment;
	}
	public Double getAdvancePayment() {
		return advancePayment;
	}
	public void setAdvancePayment(Double advancePayment) {
		this.advancePayment = advancePayment;
	}
	public Double getPendingPayment() {
		return pendingPayment;
	}
	public void setPendingPayment(Double pendingPayment) {
		this.pendingPayment = pendingPayment;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "CarBooking [bookingId=" + bookingId + ", username=" + username + ", variantId=" + variantId
				+ ", fromDate=" + fromDate + ", toDate=" + toDate + ", totalPayment=" + totalPayment
				+ ", advancePayment=" + advancePayment + ", pendingPayment=" + pendingPayment + ", transactionId="
				+ transactionId + ", status=" + status + "]";
	}
}
