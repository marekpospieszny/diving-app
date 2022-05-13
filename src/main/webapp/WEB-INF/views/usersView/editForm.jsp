<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Edit dive form</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <link href="/resources/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<jsp:include page="/WEB-INF/templates/user/topNavBar.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="/WEB-INF/templates/user/sideNavBar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Edit dive:</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<c:url value="/app/divelist/${user.id}"/>"
                                                   class="btn btn-secondary">Return</a></li>
                </ol>
                <div class="card mb-4">
                    <form:form modelAttribute="dive" method="post" action="/app/dive/update/${diver.id}">
                        <form:hidden path="id"/>
                        <div class="mb-3">
                            <c:choose>
                                <c:when test="${user.id == diver.id}">
                                    <input type="hidden" id="diver" name="diver" value="${diver.id}"/>
                                    <div class="mb-3">
                                        <label class="col-form-label">Partner:</label>
                                        <form:select path="partner" items="${divers}" itemValue="id"
                                                     itemLabel="fullName"/>
                                        <form:errors path="partner"/>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <input type="hidden" id="partner" name="partner" value="${user.id}"/>
                                    <div class="mb-3">
                                        <label class="col-form-label">Diver:</label>
                                        <form:select path="diver" items="${divers}" itemValue="id"
                                                     itemLabel="fullName"/>
                                        <form:errors path="diver"/>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            <div class="row">
                                <div class="input-field col m12 l6">
                                    <label class="col-form-label">Date:</label>
                                    <form:input path="date" id="date" type="date" class="datepicker validate"
                                                name="date"/>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Underwater time:</label>
                                <form:input path="underwaterTimeInMinutes" type="number"/>
                                <form:errors path="underwaterTimeInMinutes"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Max depth:</label>
                                <form:input path="maxDepth" type="number"/>
                                <form:errors path="maxDepth"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Location:</label>
                                <form:select path="location" items="${locations}" itemValue="id" itemLabel="name"/>
                                <form:errors path="location"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Rating:</label>
                                <form:input path="rating" type="number"/>
                                <form:errors path="rating"/>
                            </div>
                            <div class="mb-3">
                                <label class="col-form-label">Comment:</label>
                                <form:input path="comment"/>
                                <form:errors path="comment"/>
                            </div>
                        </div>
                        <br/>
                        <input type="submit" class="btn btn-primary" value="Edit dive">
                    </form:form>
                </div>
            </div>
        </main>
        <jsp:include page="/WEB-INF/templates/user/footer.jsp"/>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="/resources/assets/demo/chart-area-demo.js"></script>
<script src="/resources/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/resources/js/datatables-simple-demo.js"></script>
</body>
</html>