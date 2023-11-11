package poly.estore.entity;

public interface Report {
	String getCategory();
	Double getTotalAmount();
	Integer getTotalCount();
	Integer getMinPrice();
	Integer getMaxPrice();
	Integer getAveragePrice();
}