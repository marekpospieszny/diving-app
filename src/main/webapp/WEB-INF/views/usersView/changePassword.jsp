<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Edit Form</title>--%>
<%--    <!-- CSS only -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
<%--    <!-- JavaScript Bundle with Popper -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form:form modelAttribute="diver" method="post" action="/app/update">--%>
<%--    <form:hidden path="id"/>--%>
<%--    <form:hidden path="name"/>--%>
<%--    <form:hidden path="surname"/>--%>
<%--    <form:hidden path="email"/>--%>
<%--    <div class="mb-3">--%>
<%--        <div class="mb-3">--%>
<%--            <label class="col-form-label">Password:</label>--%>
<%--            <form:password path="password"/>--%>
<%--            <form:errors path="password"/>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <br/>--%>
<%--    <input type="submit" class="btn btn-primary" value="Edit">--%>
<%--</form:form>--%>

<%--<a href="/app/" class="btn btn-secondary">Return</a>--%>

<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Diving Application</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<jsp:include page="/WEB-INF/templates/user/topNavBar.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/WEB-INF/templates/user/sideNavBar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Change password</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/app"/>" class="btn btn-secondary">Return</a></li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <form action="/app/updatePassword" method="post">
<%--                        <form:form modelAttribute="diver" method="post" action="/app/updatePassword">--%>
<%--                            <form:hidden path="id"/>--%>
<%--                            <input type="hidden" value="${diver.id}" name="id"/>--%>
<%--                            <form:hidden path="name"/>--%>
<%--                            <input type="hidden" value="${diver.name}">--%>
<%--&lt;%&ndash;                            <form:hidden path="surname"/>&ndash;%&gt;--%>
<%--                            <input type="hidden" value="${diver.surname}">--%>
<%--&lt;%&ndash;                            <form:hidden path="email"/>&ndash;%&gt;--%>
<%--                            <input type="hidden" value="${diver.email}">--%>
                            <div class="mb-3">
                                <div class="mb-3">
                                    <label class="col-form-label">Old password:</label>
                                    <input type="password" name="oldPassword"/>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="mb-3">
                                    <label class="col-form-label">New password:</label>
                                    <input type="password" name="password"/>
<%--                                    <form:password path="password" name="password"/>--%>
<%--                                    <form:errors path="password"/>--%>
                                </div>
                            </div>
                            <div class="mb-3">
                                <div class="mb-3">
                                    <label class="col-form-label">Repeat new password:</label>
                                    <input type="password" name="password2"/>
                                </div>
                            </div>
                            <br/>
                            <input type="submit" class="btn btn-primary" value="Edit">
<%--                        </form:form>--%>
                        </form>
                        <c:if test="${wrong}">
                            <div class="alert">
                            <p> Wrong password provided or new passwords do not match. </p>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/templates/user/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="/resources/assets/demo/chart-area-demo.js"></script>
<script src="/resources/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/resources/js/datatables-simple-demo.js"></script>
</body>
</html>

