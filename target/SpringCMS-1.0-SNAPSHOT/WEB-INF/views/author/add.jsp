<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Author</title>

    <style>
        .flex-container {
            display: flex;
            flex-direction: column;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
<h1>Add Author</h1>
<form:form method="post" modelAttribute="author">
    <div>
        FirstName: <form:input path="firstName"/>
        LastName:<form:input path="lastName"/>

    </div>
    <input type="submit" value="Add Author">
</form:form>

</body>
</html>