<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BMI Calculator</title>
</head>
<body>
	<f:view>
		<h3 align="center">BMI Calculator</h3>
		<hr>
		<br />
		<center>
			<a href="index.jsp">Home</a>
		</center>
		<br />
		<hr>
		<br />
		<center>
			<h:form>
				<h:outputText
					value="Units SI: kg, meters; Units English: lbs, feet." />
				<h:panelGrid columns="2">
					<h:outputText value="units:" />
					<h:selectOneListbox value="#{bmiBean.units}" size="2">
						<f:selectItem itemValue="SI" itemLabel="SI" />
						<f:selectItem itemValue="English" itemLabel="English/Imperial" />
					</h:selectOneListbox>
					<h:outputText value="weight:" />
					<h:inputText id="weight" value="#{bmiBean.weight}" />
					<h:outputText value="height:" />
					<h:inputText id="height" value="#{bmiBean.height}" />
					<h:outputText value="" />
					<h:commandButton type="submit" value="Compute"
						action="#{bmiBean.computeBmi}" />
					<h:outputText value="BMI:" />
					<h:outputText value="#{bmiBean.bmi}" />
					<h:outputText value="BMI Prime:" />
					<h:outputText value="#{bmiBean.bmiPrime}" />
					<h:outputText value="BMI category:" />
					<h:outputText value="#{bmiBean.bmiCategory}" />
					<h:outputText value="" />
					<h:outputText value="#{bmiBean.errorMessage}" />
				</h:panelGrid>
			</h:form>
		</center>
	</f:view>

</body>
</html>