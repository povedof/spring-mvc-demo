<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>

</head>

<body>

<form:form action="processForm" modelAttribute="student">

First name: <form:input path="firstName"/>

<br/><br/>

Last name: <form:input path="lastName"/>

<br/><br/>

Coutry: 
<form:select path="country">
	
	<!--<form:option value="Brazil" label="Brazil"/>
	<form:option value="France" label="France"/>
	<form:option value="Germany" label="Germany"/>
	<form:option value="India" label="India"/>-->
	
	<form:options items="${student.countryOptions}"/>
	
</form:select>

<br/><br/>

Favorite Language:

<!--Java <form:radiobutton path="favoriteLanguage" value="Java"/>
C# <form:radiobutton path="favoriteLanguage" value="C#"/>
PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/> -->

<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" />

<br/><br/>

Operating Systems:

Linux <form:checkbox path="operatingSystems" value="Linux"/>
Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>

<br/><br/>
<input type="submit" value="Submit">

</form:form>

</body>

</html>