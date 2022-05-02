<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:hidden path="id"/>
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
        <form:password path="password"/>
        <form:errors path="password"/>
    </div>
</div>
<br/>