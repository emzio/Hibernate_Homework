<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: emzio
  Date: 20.03.2022
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css>--%>
    <title>Articles</title>

    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
</head>
<body>
<h1>Articles</h1>
<h2><a href="/article/add"> Add new Article </a></h2>

<table class="table-primary">
    <thead>
        <tr>
            <th>
                id
            </th>
            <th>
                Title
            </th>
            <th>
                Author
            </th>
            <th>
                categories
            </th>
            <th>
                content
            </th>
            <th>
                created
            </th>
            <th>
                updated
            </th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${articles}" var="article">
        <tr>
            <td>
                    ${article.id}
            </td>
            <td>
                    ${article.title}
            </td>
            <td>
                    ${article.author}
            </td>
            <td>
                <c:forEach items="${article.categories}" var="category">
                       Id: ${category.id} Name: ${category.name}, Description: ${category.description}
                </c:forEach>
            </td>
            <td>
                    ${article.content}
            </td>
            <td>
                    ${article.created}
            </td>
            <td>
                    ${article.updated}
            </td>
            <td>
                    <a href="/article/update/${article.id}"> update </a>
            </td>
            <td>
                <a href="/article/delete/${article.id}"> delete </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="../bootstrap/js/bootstrap.js"></script>
</body>
</html>
