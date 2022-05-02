<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<a href="<c:url value="/app/users/add"/>" class="btn btn-primary">Add user</a>

<table class="table" border="1">
    <thead>
    <th>Id</th>
    <th>Login</th>
    <th>Admin</th>
    <th>Options</th>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.login}"/></td>
            <td><c:out value="${user.admin}"/></td>
            <td>
                <a href="/app/users/details/${user.id}" class="btn btn-success">details</a>
                <a href="/app/users/edit/${user.id}" class="btn btn-warning">edit</a>
                <a href="/app/users/delete/${user.id}" class="btn btn-danger">delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="<c:url value="/app/users/list"/>" class="btn btn-secondary">Return to control panel</a>

</body>
</html>


