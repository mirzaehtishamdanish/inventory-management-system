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

        <title>Inventory Management System - Add New Inventory</title>

        <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="${contextPath}/resources/css/sb-admin.css" rel="stylesheet">

    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Add New Inventory</div>
                <div class="card-body">
                    <form:form method="POST" modelAttribute="inventoryForm" class="form-signin">
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="code">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="dropdown" id="code" path="code" class="form-control" placeholder="code" required="required" autofocus="autofocus"></form:input>
                                        
                                        <form:errors path="code"></form:errors>
                                    <!--</div>-->
                                </spring:bind>     
                                <label for="code">Vendor</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="code">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="text" id="code" path="code" class="form-control" placeholder="code" required="required" autofocus="autofocus"></form:input>
                                        
                                        <form:errors path="code"></form:errors>
                                    <!--</div>-->
                                </spring:bind>     
                                <label for="code">Code</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="name">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="name" path="name" class="form-control" placeholder="First name" required="required"></form:input>
                                                <form:errors path="name"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>
                                        <label for="name">Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="cost">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="cost" path="cost" class="form-control" placeholder="Last name" required="required"></form:input>
                                                <form:errors path="cost"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="cost">Cost</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="description">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="text" id="description" path="description" class="form-control" placeholder="Email address" required="required"></form:input>
                                        <form:errors path="description"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <label for="description">Description</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="quantity">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="quantity" path="quantity" class="form-control" placeholder="Password" required="required"></form:input>
                                                <form:errors path="quantity"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="quantity">Quantity</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="amount">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="amount" path="amount" class="form-control" placeholder="Confirm password" required="required"></form:input>
                                                <form:errors path="amount"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="amount">Amount</label>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="inventorydate">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="date" id="inventorydate" path="inventorydate" class="form-control" placeholder="Email address" required="required"></form:input>
                                        <form:errors path="inventorydate"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <label for="inventorydate">Inventory Date</label>
                            </div>
                        </div>
                        <!--<a class="btn btn-primary btn-block" href="login.html">Register</a>-->
                        <button class="btn btn-primary btn-block" type="submit">Save Inventory</button>
                    </form:form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="${contextPath}/login">Login Page</a>
                        <a class="d-block small" href="${contextPath}/forgotPassword">Forgot Password?</a>
                    </div>
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
