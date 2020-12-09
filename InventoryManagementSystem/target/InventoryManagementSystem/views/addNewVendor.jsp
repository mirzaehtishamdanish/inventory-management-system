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

        <title>Inventory Management System - Add New Vendor</title>

        <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="${contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="${contextPath}/resources/css/sb-admin.css" rel="stylesheet">

    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Add New Vendor</div>
                <div class="card-body">  
                    <form:form method="POST" action="${contextPath}/addNewVendor/save" modelAttribute="vendorForm" class="form-signin">
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="vendorCode">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:input type="text" id="vendorCode" path="vendorCode" class="form-control" placeholder="vendorCode" required="required" autofocus="autofocus"></form:input>

                                    <form:errors path="vendorCode"></form:errors>
                                        <!--</div>-->
                                </spring:bind>     
                                <label for="vendorCode">Vendor Code</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="vendorName">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:input type="text" id="vendorName" path="vendorName" class="form-control" placeholder="vendorName" required="required" autofocus="autofocus"></form:input>

                                    <form:errors path="vendorName"></form:errors>
                                        <!--</div>-->
                                </spring:bind>     
                                <label for="vendorName">Vendor Name</label>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="vendorPhone">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                            <form:input type="text" id="vendorPhone" path="vendorPhone" class="form-control" placeholder="vendorPhone" required="required"></form:input>
                                            <form:errors path="vendorPhone"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>
                                        <label for="vendorPhone">Vendor Phone</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="vendorFax">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                            <form:input type="text" id="vendorFax" path="vendorFax" class="form-control" placeholder="vendorFax" required="required"></form:input>
                                            <form:errors path="vendorFax"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="vendorFax">Vendor Fax</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="addressLine1">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:textarea type="textarea" id="addressLine1" path="addressLine1" class="form-control" placeholder="Address Line 1" required="required"></form:textarea>
                                    <form:errors path="addressLine1"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <!--<label for="addressLine1">Address Line 1</label>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <spring:bind path="addressLine2">
                                    <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                    <form:textarea type="textarea" id="addressLine2" path="addressLine2" class="form-control" placeholder="Address Line 2" required="required"></form:textarea>
                                    <form:errors path="addressLine2"></form:errors>
                                        <!--</div>-->
                                </spring:bind>                             
                                <!--<label for="addressLine2">Address Line 2</label>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="city">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                            <form:select id="city" path="city" class="form-control">
                                                <form:option value="NONE">Select City</form:option>
                                                <form:options items="${cityList}"></form:options>
                                            </form:select> 
                                            <form:errors path="city"></form:errors>
                                        </spring:bind>                                        
                                        <!--<label for="city">City</label>-->
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="province">
                                            <form:select id="city" path="province" class="form-control">
                                                <form:option value="NONE">Select Province</form:option>
                                                <form:options items="${provinceList}"></form:options>
                                            </form:select> 
                                            <form:errors path="province"></form:errors>
                                        </spring:bind>                                        
                                        <!--<label for="province">Province</label>-->
                                    </div>
                                </div>                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="zipCode">
                                            <!--<div class="form-group ${status.error ? 'has-error' : ''}">-->
                                            <form:input type="text" id="zipCode" path="zipCode" class="form-control" placeholder="zipCode" required="required"></form:input>
                                            <form:errors path="zipCode"></form:errors>
                                                <!--</div>-->
                                        </spring:bind>                                        
                                        <label for="zipCode">Zip Code</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <spring:bind path="country">
                                            <form:select id="country" path="country" class="form-control">
                                                <form:option value="NONE">Select Country</form:option>
                                                <form:options items="${countryList}"></form:options>
                                            </form:select> 
                                            <form:errors path="country"></form:errors>
                                        </spring:bind>                                        
                                        <!--<label for="country">Country</label>-->
                                    </div>
                                </div>                                
                            </div>
                        </div>

                        <!--<a class="btn btn-primary btn-block" href="login.html">Register</a>-->
                        <button class="btn btn-primary btn-block" type="submit">"Save Vendor</button>
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
