<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan</title>
</head>
<body>
	<f:view>
		<h:form>
			<h:panelGrid columns="2">
				<h:outputLabel value="Loan Amount:" />
				<h:inputText id="loanAmount" value="#{loanBean.loanAmount}" />
				<h:outputLabel value="Down Payment:" />
				<h:inputText id="downpaymeny" value="#{loanBean.downPayment}" />
				<h:outputLabel value="Loan Term (years):" />
				<h:inputText id="loanTerm" value="#{loanBean.loanTerm}" />
				<h:outputLabel value="Interest Rate (%):" />
				<h:inputText id="interestRate" value="#{loanBean.interestRate}" />
				<h:outputLabel value=" " />
				<h:outputLabel value=" " />
				<h:commandButton type="submit" value="Reset"
					action="#{actionBeanLoan.reset}" />
				<h:commandButton type="submit" value="Compute"
					action="#{actionBeanLoan.computeLoan}" />
				<h:outputText value="" />
				<h:outputText value="" />
				<h:outputText value="Monthly Payment:" />
				<h:outputText value="#{loanBean.monthlyPayment}" />
				<h:outputText value="Total Payments:" />
				<h:outputText value="#{loanBean.totalPayments}" />
				<h:outputText value="Total Interest:" />
				<h:outputText value="#{loanBean.totalInterest}" />
				<h:outputText value="Total Cost" />
				<h:outputText value="#{loanBean.totalCost}" />
			</h:panelGrid>
		</h:form>
		<t:dataTable value="#{actionBeanLoan.loanBeanList}" var="rowNumber"
			rendered="#{actionBeanLoan.renderLoanList}" border="1"
			cellspacing="0" cellpadding="1" columnClasses="columnClass1 border"
			headerClass="headerClass" footerClass="footerClass"
			rowClasses="rowClass2" styleClass="dataTableEx" width="800">
			<h:column>
				<f:facet name="header">
					<h:outputText>Loan Amount</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.loanAmount}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Down Payment</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.downPayment}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Term</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.loanTerm}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Interest Rate</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.interestRate}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>
Monthly Payment</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.monthlyPayment}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Total Payments</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.totalPayments}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Total Interest</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.totalInterest}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<h:outputText>Total Cost</h:outputText>
				</f:facet>
				<h:outputText value="#{rowNumber.totalCost}" />
			</h:column>
		</t:dataTable>
	</f:view>
</body>
</html>