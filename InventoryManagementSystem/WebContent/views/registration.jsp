<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Inventory Management System - Registration</title>

        <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="${contextPath}/resources/css/sb-admin.css" rel="stylesheet">

    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Register an Account</div>
                <div class="card-body">
                    <form:form method="POST" modelAttribute="userForm" class="form-signin">
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="username">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="text" id="username" path="username" class="form-control" placeholder="Username" required="required" autofocus="autofocus"></form:input>
                                        
                                        <form:errors path="username"></form:errors>
                                    <!--</div>-->
                                </spring:bind>     
                                <label for="username">User Name</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="firstName">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="firstName" path="firstName" class="form-control" placeholder="First name" required="required"></form:input>
                                                <form:errors path="firstName"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>
                                        <label for="firstName">First Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="lastName">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="text" id="lastName" path="lastName" class="form-control" placeholder="Last name" required="required"></form:input>
                                                <form:errors path="lastName"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="lastName">Last Name</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="email">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                        <form:input type="email" id="email" path="email" class="form-control" placeholder="Email address" required="required"></form:input>
                                        <form:errors path="email"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <label for="email">Email Address</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="password">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="password" id="password" path="password" class="form-control" placeholder="Password" required="required"></form:input>
                                                <form:errors path="password"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="password">Password</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="passwordConfirm">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                                <form:input type="password" id="passwordConfirm" path="passwordConfirm" class="form-control" placeholder="Confirm password" required="required"></form:input>
                                                <form:errors path="passwordConfirm"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="passwordConfirm">Confirm Password</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<a class="btn btn-primary btn-block" href="login.html">Register</a>-->
                        <button class="btn btn-primary btn-block" type="submit">Register</button>
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
