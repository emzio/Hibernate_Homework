<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add book</title>

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
<h1>Add book</h1>
<form:form method="post" modelAttribute="article">
    <div>
    Title: <form:input path="title"/>
    Author:<form:select path="author.id" items="${authors}" itemLabel="lastName" itemValue="id"/>
    Category:<form:select path="categories" items="${categories}" itemLabel="name" itemValue="id"/>

    Content: <form:input path="content"/>

    </div>
    <input type="submit" value="Add Article">
</form:form>

</body>
</html>