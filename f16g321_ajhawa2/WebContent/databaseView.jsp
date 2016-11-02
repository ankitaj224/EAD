<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database</title>
</head>
<body>
	<f:view>

		<h3 align="center">Database</h3>
		<hr>
		<br />
		<center>
			<a href="index.jsp">Home</a>
		</center>
		<br />
		<hr>
		<br />
		<h:form>
			<h:commandButton type="submit" value="Student" action="student">
			</h:commandButton>
		</h:form>
		<br />
		<br />
		<h:form>

			<h:commandButton type="submit" value="Instructor" action="instructor" />
			
		</h:form>
		<br />
			<br />
		<h:form>
			<h:commandButton type="submit" value="DBA" action="dba" />
		</h:form>
	</f:view>
</body>
</html>