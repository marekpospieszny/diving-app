<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:hidden path="id"/>
<div class="mb-3">
    <div class="mb-3">
        <label class="form-label">Login:</label>
        <form:input path="login"/>
        <form:errors path="login"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Password:</label>
        <form:password path="password"/>
        <form:errors path="password"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Admin:</label>
        <form:checkbox path="admin" value="true" />
        <form:errors path="admin"/>
    </div>
</div>
<br/>