<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Authors</title>

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
<h1>Authors</h1>
<table>
    <h2><a href="/author/add"> Add new author </a></h2>
    <thead>
    <tr>
        <td>
            Id
        </td>
        <td>
            FirstName
        </td>
        <td>
            LastName
        </td>


    </tr>
    </thead>
    <tbody>

    <c:forEach items="${authors}" var="author">
        <tr>
            <td>
                    ${author.id}
            </td>

            <td>
                    ${author.firstName}
            </td>
            <td>
                    ${author.lastName}
            </td>
            <td>
                <a href="/author/update/${author.id}">update </a>
            </td>
            <td>
                <a href="/author/delete/${author.id}">delete </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>