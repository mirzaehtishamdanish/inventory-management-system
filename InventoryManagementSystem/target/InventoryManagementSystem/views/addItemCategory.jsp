<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Inventory Management System - Add Item Category</title>

        <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="${contextPath}/resources/css/sb-admin.css" rel="stylesheet">

    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Add Item Category</div>
                <div class="card-body">
                    <form:form method="POST" action="${contextPath}/addItemCategory/save" modelAttribute="itemCategoryForm" class="form-signin">
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="vendorId.id">
                                    <form:select multiple="single" path="vendorId.id" class="form-control" required="true">
                                        <form:option value="Select Vendor" />
                                        <form:options items="${vendors}"  itemValue="id" itemLabel="vendorName" />
                                    </form:select>
                                    <form:errors path="vendorId.id"></form:errors>
                                </spring:bind>                                        
                                <!--<label for="country">Country</label>-->
                            </div>
                        </div> 
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="code">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:input type="text" id="code" path="code" disabled="true" readonly="true" class="form-control" placeholder="code" required="required" autofocus="autofocus"></form:input>

                                    <form:errors path="code"></form:errors>
                                        <!--</div>-->
                                </spring:bind>     
                                <label for="code">Item Category Code</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="name">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:input type="text" id="name" path="name" class="form-control" placeholder="name" required="required" autofocus="autofocus"></form:input>

                                    <form:errors path="name"></form:errors>
                                        <!--</div>-->
                                </spring:bind>     
                                <label for="name">Item Name</label>                                
                            </div>
                        </div>                        
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="description">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:textarea type="textarea" id="description" path="description" class="form-control" placeholder="description" required="required"></form:textarea>
                                    <form:errors path="description"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <!--<label for="addressLine1">Address Line 1</label>-->
                            </div>
                        </div> 
                        <button class="btn btn-primary btn-block" type="submit">"Save Item</button>
                    </form:form>
                    <!--                    <div class="text-center">
                                            <a class="d-block small mt-3" href="${contextPath}/login">Login Page</a>
                                            <a class="d-block small" href="${contextPath}/forgotPassword">Forgot Password?</a>
                                        </div>-->
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
        <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    </body>

</html>
