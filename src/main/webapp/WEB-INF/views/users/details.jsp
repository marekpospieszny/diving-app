<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h4>User details:</h4>
<br/>
<ul class="list-group">
    <label class="form-label">ID:</label>
    <li class="list-group-item">${user.id}</li>
    <label class="form-label">Login:</label>
    <li class="list-group-item">${user.login}</li>
    <label class="form-label">Admin:</label>
    <li class="list-group-item">${user.admin}</li>
</ul>

<a href="/app/users/list" class="btn btn-secondary">Return</a>

</body>
</html>
