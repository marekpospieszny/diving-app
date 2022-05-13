<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Register</title>
    <link href="/resources/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3>
                            </div>
                            <div class="card-body">
                                <form:form modelAttribute="diver" method="post"
                                           action="${pageContext.request.contextPath}/register">
                                    <form:hidden path="id"/>
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <form:input path="name" class="form-control" id="name" name="name"
                                                            type="text" placeholder="Enter your first name"/>
                                                <form:errors path="name"/>
                                                <label for="name">First name</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <form:input path="surname" class="form-control" id="surname"
                                                            name="surname" type="text"
                                                            placeholder="Enter your last name"/>
                                                <form:errors path="surname"/>
                                                <label for="surname">Last name</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <form:input path="email" class="form-control" id="email" name="email"
                                                    type="email" placeholder="name@example.com"/>
                                        <form:errors path="email"/>
                                        <label for="email">Email address</label>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <form:input path="password" class="form-control" id="password"
                                                            name="password" type="password"
                                                            placeholder="Create a password"/>
                                                <form:errors path="password"/>
                                                <label for="password">Password</label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="password2" name="password2"
                                                       type="password" placeholder="Confirm password"/>
                                                <label for="password2">Confirm Password</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mt-4 mb-0">
                                        <div class="d-grid">
                                            <input type="submit" class="btn btn-primary" value="Create Account">
                                        </div>
                                    </div>
                                    <c:if test="${wrong}">
                                        <div class="alert">
                                            <p>Confirm password does not match password.</p>
                                        </div>
                                    </c:if>
                                </form:form>
                            </div>
                            <div class="card-footer text-center py-3">
                                <div class="small"><a href="/login">Have an account? Go to login</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div id="layoutAuthentication_footer">
        <jsp:include page="/WEB-INF/templates/user/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>
</body>
</html>
