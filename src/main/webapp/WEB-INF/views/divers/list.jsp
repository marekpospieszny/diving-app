<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<a href="<c:url value="/admin/divers/add"/>" class="btn btn-primary">Add diver</a>

<table class="table" border="1">
    <thead>
    <th>Name</th>
    <th>Surname</th>
    <th>Email</th>
    <th>Options</th>
    </thead>
    <tbody>
    <c:forEach items="${divers}" var="diver">
        <tr>
            <td><c:out value="${diver.name}"/></td>
            <td><c:out value="${diver.surname}"/></td>
            <td><c:out value="${diver.email}"/></td>
            <td>
                <a href="/admin/divers/details/${diver.id}" class="btn btn-success">details</a>
                <a href="/admin/divers/edit/${diver.id}" class="btn btn-warning">edit</a>
                <a href="/admin/divers/delete/${diver.id}" class="btn btn-danger">delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="<c:url value="/admin"/>" class="btn btn-secondary">Return to control panel</a>

</body>
</html>


