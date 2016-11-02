package edu.uic.ids.model;

import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
@ManagedBean
@SessionScoped
public class LoanBean implements Serializable, Cloneable {
private static final long serialVersionUID = 1L;
// inputs
private double loanAmount;
private double downPayment;
private int loanTerm;
private double interestRate;
// outputs
private double monthlyPayment;
private double totalPayments;
private double totalInterest;
private double totalCost;
public LoanBean() {
// TODO Auto-generated constructor stub
}
@PostConstruct
 public void init() {
 }
public LoanBean clone() throws CloneNotSupportedException {
LoanBean cloned = (LoanBean) super.clone();
return cloned;
}

public String computeLoan() {
double c = interestRate / 1200;
int term = loanTerm * 12;
double financeAmount = loanAmount - downPayment;
double x = Math.pow(1.0 + c, term);
monthlyPayment = financeAmount * c * x / (x - 1.0);
monthlyPayment = Math.round(monthlyPayment * 100.0) / 100.0;
totalPayments = MathUtil.round(term * monthlyPayment, 100.0);
totalInterest = MathUtil.round(totalPayments - financeAmount, 100.0);
totalCost = MathUtil.round(totalPayments + downPayment, 100.0);
return "SUCCESS";
}
public double getLoanAmount() {
	return loanAmount;
}
public void setLoanAmount(double loanAmount) {
	this.loanAmount = loanAmount;
}
public double getDownPayment() {
	return downPayment;
}
public void setDownPayment(double downPayment) {
	this.downPayment = downPayment;
}
public int getLoanTerm() {
	return loanTerm;
}
public void setLoanTerm(int loanTerm) {
	this.loanTerm = loanTerm;
}
public double getInterestRate() {
	return interestRate;
}
public void setInterestRate(double interestRate) {
	this.interestRate = interestRate;
}
public double getMonthlyPayment() {
	return monthlyPayment;
}
public void setMonthlyPayment(double monthlyPayment) {
	this.monthlyPayment = monthlyPayment;
}
public double getTotalPayments() {
	return totalPayments;
}
public void setTotalPayments(double totalPayments) {
	this.totalPayments = totalPayments;
}
public double getTotalInterest() {
	return totalInterest;
}
public void setTotalInterest(double totalInterest) {
	this.totalInterest = totalInterest;
}
public double getTotalCost() {
	return totalCost;
}
public void setTotalCost(double totalCost) {
	this.totalCost = totalCost;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}

}
