<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<form:form modelAttribute="dive" method="post" action="/app/add/dive/${diver.id}">
    <form:hidden path="id"/>
    <input type="hidden" id="diver" name="diver" value="${diver.id}"/>
    <div class="mb-3">
        <div class="mb-3">
            <label class="col-form-label">Partner:</label>
            <form:select path="partner" items="${divers}" itemValue="id" itemLabel="fullName"/>
            <form:errors path="partner"/>
        </div>
        <div class="row">
            <div class="input-field col m12 l6">
                <label class="col-form-label">Date:</label>
                <form:input path="date" id="date" type="date" class="datepicker validate"
                            name="date"/>
            </div>
        </div>
        <div class="mb-3">
            <label class="col-form-label">Underwater time:</label>
            <form:input path="underwaterTimeInMinutes"/>
            <form:errors path="underwaterTimeInMinutes"/>
        </div>
        <div class="mb-3">
            <label class="col-form-label">Max depth:</label>
            <form:input path="maxDepth"/>
            <form:errors path="maxDepth"/>
        </div>
        <div class="mb-3">
            <label class="col-form-label">Location:</label>
            <form:select path="location" items="${locations}" itemValue="id" itemLabel="name"/>
            <form:errors path="location"/>
        </div>
        <div class="mb-3">
            <label class="col-form-label">Rating:</label>
            <form:input path="rating"/>
            <form:errors path="rating"/>
        </div>
        <div class="mb-3">
            <label class="col-form-label">Comment:</label>
            <form:input path="comment"/>
            <form:errors path="comment"/>
        </div>
    </div>
    <br/>
    <input type="submit" name="Add" class="btn btn-primary">
</form:form>

<a href="/app/divelist/${diver.id}" class="btn btn-secondary">Return</a>

</body>
</html>