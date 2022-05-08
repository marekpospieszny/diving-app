<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Diver details</title>
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
                <h1 class="mt-4">Diver details</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/admin/divers/list"/>" class="btn btn-secondary">Return</a></li>
                    <li class="breadcrumb-item"><a href="<c:url value="/admin/divers/edit/${diver.id}"/>" class="btn btn-warning">Edit</a></li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <h5>Diver ${diver.name} details:</h5>
                        <ul class="list-group">
                            <li class="list-group-item">Id: <b>${diver.id}</b></li>
                            <li class="list-group-item">Name: <b>${diver.name}</b></li>
                            <li class="list-group-item">Area: <b>${diver.surname}</b></li>
                            <li class="list-group-item">Country: <b>${diver.email}</b></li>
                        </ul>
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
