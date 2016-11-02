<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<f:view>
		<h:form enctype="multipart/form-data">
			<h:panelGrid columns="2"
				style="background-color: Beige;
border-bottom-style: solid;
border-top-style: solid;
border-left-style: solid;
border-right-style: solid">
				<h:outputLabel value="select file to upload:" />
				<t:inputFileUpload id="fileUpload"
					value="#{actionBeanFile.uploadedFile}" required="false" size="60" />
				<h:outputLabel value="file label:" />
				<h:inputText id="fileLabel" value="#{actionBeanFile.fileLabel}"
					size="60" />
				<h:outputLabel value=" " />
				<h:commandButton id="upload"
					action="#{actionBeanFile.processFileUpload}" value="Submit" />
			</h:panelGrid>
			<h:outputLabel rendered="#{actionBeanFile.fileImport }"
				value="Number of records imported: " />
			<h:outputText rendered="#{actionBeanFile.fileImport }"
				value="#{actionBeanFile.numberRows }" />
			<h:outputText rendered="#{actionBeanFile.fileImportError }"
				value="#{messageBean.errorMessage }" />
		</h:form>
	</f:view>
</body>
</html>