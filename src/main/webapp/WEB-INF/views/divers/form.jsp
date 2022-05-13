<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form:hidden path="id"/>
<form:hidden path="active"/>
<div class="mb-3">
    <div class="mb-3">
        <label class="form-label">Name:</label>
        <form:input path="name"/>
        <form:errors path="name"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Surname:</label>
        <form:input path="surname"/>
        <form:errors path="surname"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Email:</label>
        <form:input path="email"/>
        <form:errors path="email"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Password:</label>
        <input type="password" name="password">
    </div>
    <c:if test="${blank}">
        <div class="alert">
            <p> No blank values allowed. Please make sure to provide all the details. </p>
        </div>
    </c:if>
</div>
<br/>