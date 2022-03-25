<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>home</title>

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
<h1>Home</h1>
<table>
    <thead>
        <tr>
            <td>
                Title
            </td>
            <td>
                Created
            </td>
            <td>
                Content
            </td>
        </tr>
    </thead>
    <tbody>

    <c:forEach items="${articles}" var="article">
        <tr>
            <td>
                ${article.getTitle()}
            </td>
                <td>
                        ${article.getCreated()}
                </td>
            <td>
                    ${article.getContent()}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>