<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Categories</title>

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
<h1>Categories</h1>
<table>
    <h2><a href="/category/add"> Add new category </a></h2>
    <thead>
    <tr>
        <td>
            Id
        </td>
        <td>
            Name
        </td>
        <td>
            Description
        </td>

    </tr>
    </thead>
    <tbody>

    <c:forEach items="${categories}" var="category">
        <tr>
            <td>
                    ${category.getId()}
            </td>

            <td>
                    ${category.getName()}
            </td>
            <td>
                    ${category.getDescription()}
            </td>
            <td>
                <a href="/category/update/${category.id}">update </a>
            </td>
            <td>
                <a href="/category/delete/${category.id}">delete </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>