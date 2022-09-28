<%-- 
    Document   : modal
    Created on : Sep 25, 2022, 9:49:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Register</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="login">
                            <form action="#" class="row">
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="signupPhone" name="signupPhone" placeholder="Phone">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control mb-3" id="signupName" name="signupName" placeholder="Name">
                                </div>
                                <div class="col-12">
                                    <input type="email" class="form-control mb-3" id="signupEmail" name="signupEmail" placeholder="Email">
                                </div>
                                <div class="col-12">
                                    <input type="password" class="form-control mb-3" id="signupPassword" name="signupPassword" placeholder="Password">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">SIGN UP</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content rounded-0 border-0 p-4">
                    <div class="modal-header border-0">
                        <h3>Login</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p style="Color:red">${Alert}</p>
                        <form action="LoginController" method="POST" class="row">
                            <div class="col-12">
                                <input type="text" class="form-control mb-3" id="loginName" name="Username" placeholder="Account Name">
                            </div>
                            <div class="col-12">
                                <input type="password" class="form-control mb-3" id="loginPassword" name="Password" placeholder="Password">
                            </div>
                            <div class="col-12">
                                <div class="w-50 text-left">
			            	<label class="Remeber_Button"><input type="checkbox" name="rem" ${(cookie.rem.value eq 'ON')?"checked":""} value="ON">
									  <span class="checkmark"></span>Remember Me
									  
										</label>
                                                                          </div>
                            </div>
                            <div class="col-12">
                                <button type="submit"  class="btn btn-primary">Sign In</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
