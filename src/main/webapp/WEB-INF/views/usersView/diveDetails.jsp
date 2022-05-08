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
    <title>Location details</title>
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
                <h1 class="mt-4">Dive details</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/app/divelist/${user.id}"/>" class="btn btn-secondary">Return</a></li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <h5>Dive ${dive.id} details:</h5>
                        <ul class="list-group">
                            <li class="list-group-item">Id: <b>${dive.id}</b></li>
                            <li class="list-group-item">Diver: <b>${dive.diver.fullName}</b></li>
                            <li class="list-group-item">Partner: <b>${dive.partner.fullName}</b></li>
                            <li class="list-group-item">Date: <b>${dive.date}</b></li>
                            <li class="list-group-item">Underwater time: <b>${dive.underwaterTimeInMinutes}</b></li>
                            <li class="list-group-item">Max depth: <b>${dive.maxDepth}</b></li>
                            <li class="list-group-item">Location: <b>${dive.location.name}</b></li>
                            <li class="list-group-item">Rating: <b>${dive.rating}</b></li>
                            <li class="list-group-item">Comment: <b>${dive.comment}</b></li>
                        </ul>
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