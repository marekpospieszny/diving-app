<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Dive List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<a href="<c:url value="/app/add/dive/${diver.id}"/>" class="btn btn-primary">Add dive</a>

<table class="table" border="1">
    <thead>
    <th>Diver</th>
    <th>Partner</th>
    <th>Date of dive</th>
    <th>Underwater time</th>
    <th>Max depth</th>
    <th>Location</th>
    <th>Rating</th>
    <th>Comment</th>
    <th>Options</th>
    </thead>
    <tbody>
    <c:forEach items="${dives}" var="dive">
        <tr>
            <td><c:out value="${dive.diver.surname}"/></td>
            <td><c:out value="${dive.partner.surname}"/></td>
            <td><c:out value="${dive.date}"/></td>
            <td><c:out value="${dive.underwaterTimeInMinutes}"/></td>
            <td><c:out value="${dive.maxDepth}"/></td>
            <td><c:out value="${dive.location.name}"/></td>
            <td><c:out value="${dive.rating}"/></td>
            <td><c:out value="${dive.comment}"/></td>
            <td>
                <a href="/app/dive/details/${dive.id}" class="btn btn-success">details</a>
                <a href="/app/dive/edit/${dive.id}" class="btn btn-warning">edit</a>
                <a href="/app/dive/delete/${dive.id}" class="btn btn-danger">delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="<c:url value="/app"/>" class="btn btn-secondary">Return to user panel</a>

</body>
</html>


