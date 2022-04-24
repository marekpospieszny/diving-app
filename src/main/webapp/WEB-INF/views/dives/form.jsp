<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:hidden path="id"/>
<form:hidden path="date"/>
<div class="mb-3">
    <div class="mb-3">
        <label class="form-label">Diver:</label>
        <form:select path="diver" items="${divers}" itemValue="id" itemLabel="surname"/>
        <form:errors path="diver"/>
    </div>
    <div class="mb-3">
        <label class="col-form-label">Partner:</label>
        <form:select path="partner" items="${divers}" itemValue="id" itemLabel="surname"/>
        <form:errors path="partner"/>
    </div>
<%--    <div class="mb-3">--%>
<%--        <label class="col-form-label">Date:</label>--%>
<%--        <form:input path="date"/>--%>
<%--        <form:errors path="date"/>--%>
<%--        <input type="date" name="date">--%>
<%--        <form:input path="date" type="date"/>--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>
<%--        <label class="col-form-label">Time:</label>--%>
<%--        <form:input path="time"/>--%>
<%--        <form:errors path="time"/>--%>
<%--        <input type="time" name="time">--%>
<%--        <form:input path="time" type="time"/>--%>
<%--    </div>--%>
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