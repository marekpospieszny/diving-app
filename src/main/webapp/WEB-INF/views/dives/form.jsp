<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:hidden path="id"/>
<div class="mb-3">
    <div class="mb-3">
        <label class="form-label">Diver:</label>
        <form:select path="diver" items="${divers}" itemValue="id" itemLabel="fullName"/>
        <form:errors path="diver"/>
    </div>
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