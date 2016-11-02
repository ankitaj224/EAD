package edu.uic.ids.model;
import java.util.ArrayList;
import java.util.List;
import edu.uic.ids.model.LoanBean;
public class ActionBeanLoan {
	private LoanBean loanBean;
	private List<LoanBean> loanBeanList;
	private boolean renderLoanList;
	public ActionBeanLoan() {
	// TODO Auto-generated constructor stub
	setLoanBeanList(new ArrayList<LoanBean>());
	renderLoanList = false;
	}
	public String computeLoan() throws CloneNotSupportedException {
	String status = loanBean.computeLoan();
	LoanBean loan = loanBean.clone();
	loanBeanList.add(loan);
	renderLoanList = true;
	return status;
	}
	public String reset() {
	loanBeanList.clear();
	renderLoanList = false;
	return "SUCCESS";
	}
	public LoanBean getLoanBean() {return loanBean; }
	public void setLoanBean(LoanBean loanBean) {
	this.loanBean = loanBean;
	}
	public List<LoanBean> getLoanBeanList() {
	return loanBeanList;
	}
	public void setLoanBeanList(List<LoanBean> loanBeanList) {
	this.loanBeanList = loanBeanList;
	}
	public boolean isRenderLoanList() {
	return renderLoanList;
	}
	public void setRenderLoanList(boolean renderLoanList) {
	this.renderLoanList = renderLoanList;
	}
}
