<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Book List</title>--%>
<%--    <!-- CSS only -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
<%--    <!-- JavaScript Bundle with Popper -->--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<a href="<c:url value="/admin/divers/add"/>" class="btn btn-primary">Add diver</a>--%>

<%--<table class="table" border="1">--%>
<%--    <thead>--%>
<%--    <th>Name</th>--%>
<%--    <th>Surname</th>--%>
<%--    <th>Email</th>--%>
<%--    <th>Options</th>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${divers}" var="diver">--%>
<%--        <tr>--%>
<%--            <td><c:out value="${diver.name}"/></td>--%>
<%--            <td><c:out value="${diver.surname}"/></td>--%>
<%--            <td><c:out value="${diver.email}"/></td>--%>
<%--            <td>--%>
<%--                <a href="/admin/divers/details/${diver.id}" class="btn btn-success">details</a>--%>
<%--                <a href="/admin/divers/edit/${diver.id}" class="btn btn-warning">edit</a>--%>
<%--                <a href="/admin/divers/delete/${diver.id}" class="btn btn-danger">delete</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%--<a href="<c:url value="/admin"/>" class="btn btn-secondary">Return to control panel</a>--%>

<%--</body>--%>
<%--</html>--%>

<%--<!DOCTYPE html>--%>
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
<jsp:include page="/WEB-INF/templates/admin/topNavBar.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/WEB-INF/templates/admin/sideNavBar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Divers</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/admin/divers/add"/>" class="btn btn-primary">Add diver</a></li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        Divers list
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Surname</th>
                                <th>Email</th>
                                <th>Options</th>
                            </tr>
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
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/templates/admin/footer.jsp"/>
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

