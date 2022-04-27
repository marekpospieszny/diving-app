<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit Form</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<form:form modelAttribute="diver" method="post" action="/app/update">
    <form:hidden path="id"/>
    <form:hidden path="name"/>
    <form:hidden path="surname"/>
    <form:hidden path="email"/>
    <div class="mb-3">
        <div class="mb-3">
            <label class="col-form-label">Password:</label>
            <form:input path="password"/>
            <form:errors path="password"/>
        </div>
    </div>
    <br/>
    <input type="submit" class="btn btn-primary" value="Edit">
</form:form>

<a href="/app/" class="btn btn-secondary">Return</a>

</body>
</html>