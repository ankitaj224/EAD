<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
</head>
<body>
<f:view>

<h:form><h:panelGrid columns="2">
<h:commandButton type="submit" value="View Tests"
					action="#{actionStudentBean.listTests}" />
					<h:commandButton type="submit" value="Take Test"
					action="test" />
					</h:panelGrid>
					
					
<br/>
<h:panelGrid columns="80">
<h:selectOneListbox size="10" styleClass="selectOneListbox_mono"
					value="#{actionStudentBean.course}"
					rendered="#{actionStudentBean.renderCourseList}">
					<f:selectItems value="#{actionStudentBean.courses}" />
				</h:selectOneListbox>
<h:selectOneListbox size="10" styleClass="selectOneListbox_mono"
					value="#{actionStudentBean.test}"
					rendered="#{actionStudentBean.renderTestList}">
					<f:selectItems value="#{actionStudentBean.tests}" />
				</h:selectOneListbox>
					</h:panelGrid>
</h:form>
</f:view>
</body>
</html>