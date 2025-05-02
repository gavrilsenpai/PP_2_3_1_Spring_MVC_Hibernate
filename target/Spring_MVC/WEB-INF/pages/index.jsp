<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h2>All Users</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>
                <form action="${pageContext.request.contextPath}/update" method="post">
                    <input type="hidden" name="id" value="${user.id}"/>
                    <input type="text" name="name" value="${user.name}"/>
            </td>
            <td>
                <input type="text" name="email" value="${user.email}"/>
            </td>
            <td>
                <button type="submit">Edit</button>
                </form>

                <form action="${pageContext.request.contextPath}/delete" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${user.id}"/>
                    <button type="submit" onclick="return confirm('Удалить пользователя?');">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<br/>

<h3>Add User</h3>
<form action="${pageContext.request.contextPath}/add" method="post">
    <label>Name: <input type="text" name="name"/></label><br/>
    <label>Email: <input type="text" name="email"/></label><br/>
    <button type="submit">Add</button>
</form>

</body>
</html>