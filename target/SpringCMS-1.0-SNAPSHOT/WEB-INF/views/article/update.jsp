<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update Article</title>

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
<h1>Update Article</h1>
<form:form method="post" modelAttribute="article">
    <div>
        Title: <form:input path="title"/>
        Author:<form:select path="author.id" items="${authors}" itemLabel="lastName" itemValue="id"/>
        Category:<form:select path="categories" items="${categories}" itemLabel="name" itemValue="id"/>
        Content<form:textarea path="content"/>
        <form:hidden path="created"/>
    </div>
    <input type="submit" value="Update Article">
</form:form>

</body>
</html>