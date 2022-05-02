<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">

        <form action="${pageContext.request.contextPath}/login" method="post">
            <h1 class="text-color-darker">Login page</h1>
            <input type="text" id="email" class="fadeIn second" name="email" placeholder="email">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="submit" class="btn btn-primary" value="Log In">
            <c:if test="${wrong}">
                <div class="alert">
                    <p>Incorrect login or password.</p>
                </div>
            </c:if>
        </form>

        <div id="formFooter">
            <a class="btn btn-secondary" href="#">Forgot Password?</a>
        </div>

    </div>
</div>
</body>
</html>
