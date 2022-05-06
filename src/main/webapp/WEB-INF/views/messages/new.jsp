<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <h1 class="mt-4">Message center</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/app/messages"/>" class="btn btn-secondary">Return</a></li>
                </ol>
                <div class="card mb-4">
                    <form:form modelAttribute="message" method="post" action="/app/messages/new">
                        <form:hidden path="id"/>
                        <input type="hidden" id="sender" name="sender" value="${user.id}"/>
                        <div class="mb-3">
                            <div class="mb-3">
                                <label class="col-form-label">Send to:</label>
                                <form:select path="receiver" items="${receivers}" itemValue="id" itemLabel="fullName"/>
                                <form:errors path="receiver"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Subject:</label>
                                <form:input path="subject"/>
                                <form:errors path="subject"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Message content:</label>
                                <form:textarea path="messageText"/>
                                <form:errors path="messageText"/>
                            </div>
                        </div>
                        <br/>
                        <input type="submit" value="Send message" class="btn btn-primary">
                    </form:form>
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