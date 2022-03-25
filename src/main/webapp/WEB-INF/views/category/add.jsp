<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add category</title>

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
<h1>Add category</h1>
<form:form method="post" modelAttribute="category">
    <div>
    Name: <form:input path="name"/>
    Description: <form:input path="description"/>

    </div>
    <input type="submit" value="Add Article">
</form:form>

</body>
</html>