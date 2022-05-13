<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:hidden path="id"/>
<form:hidden path="active"/>
<div class="mb-3">
    <div class="mb-3">
        <label class="form-label">Name:</label>
        <form:input path="name"/>
        <form:errors path="name"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Area:</label>
        <form:input path="area"/>
        <form:errors path="area"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Country:</label>
        <form:input path="country"/>
        <form:errors path="country"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Max depth:</label>
        <form:input path="maxDepth" type="number"/>
        <form:errors path="maxDepth"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Rating:</label>
        <form:input path="rating" type="number"/>
        <form:errors path="rating"/>
    </div>
</div>
<br/>