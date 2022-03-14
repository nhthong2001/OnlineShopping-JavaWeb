<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<% request.setCharacterEncoding("UTF-8");%>
<t:auth>
    <jsp:attribute name="css">
        <style>
            body {
                background: cadetblue;
            }

            .container {
                background: #f8f8f8;
            }

            .social-btn {
                font-weight: 100;
                color: white;
                width: 190px;
                font-size: 0.9rem;
            }

            .facebook-btn {
                background-color: #3C589C;
            }

            .google-btn {
                background-color: #DF4B3B;
            }

        </style>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css"
              integrity="sha512-f0tzWhCwVFS3WeYaofoLWkTP62ObhewQ1EZn65oSYDZUg1+CyywGKkWzm8BxaJj5HGKI72PnMH9jYyIFz+GH7g=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
        <script>
            $('small').attr("hidden", true);
            $('#frmRegister').on('submit', function (e) {
                e.preventDefault();

                const name = $('#txtName').val();
                if (name.length === 0) {
                    $('#nameHelp').attr("hidden", false)
                    return;
                } else {
                    $('#nameHelp').attr("hidden", true)
                }

                const address = $('#txtAddress').val();
                if (address.length === 0) {
                    $('#addressHelp').attr("hidden", false)
                    return;
                } else {
                    $('#addressHelp').attr("hidden", true)
                }

                const dob = $('#txtDob').val();
                if (dob.length === 0 || dob === '__/__/____') {
                    $('#dobHelp').attr("hidden", false)
                    return;
                } else {
                    $('#dobHelp').attr("hidden", true)
                }
                const email = $('#txtEmail').val();
                if (email.length === 0) {
                    $('#emailHelp').attr("hidden", false)
                    return;
                } else {
                    $('#emailHelp').attr("hidden", true)
                }

                const username = $('#txtUsername').val();
                if (username.length === 0) {
                    $('#usernameHelp').attr("hidden", false)
                    return;
                } else {
                    $('#usernameHelp').attr("hidden", true)
                }

                const pwd = $('#password').val();
                if (pwd.length === 0) {
                    $('#passwordHelp').attr("hidden", false)
                    return;
                } else {
                    $('#passwordHelp').attr("hidden", true)
                }

                const pwdC = $('#passwordConfirm').val();
                if (pwdC.length === 0) {
                    $('#passwordConfirmHelp').attr("hidden", false)
                    return;
                } else {
                    if (pwd !== pwdC) {
                        $('#passwordConfirmHelp').text("Xác nhận mật khẩu không khớp");
                        $('#passwordConfirmHelp').attr("hidden", false);
                        return;
                    }
                    $('#passwordConfirmHelp').attr("hidden", true);
                }


                $.getJSON('${pageContext.request.contextPath}/check/isAvailable?username='+ username, function (data) {
                    if (data == false){
                        $('#usernameHelp').text("Tài khoản đã tồn tại");
                        $('#usernameHelp').attr("hidden", false);
                    } else {
                        $('#frmRegister').off('submit').submit();
                    }
                })
            })

            $('#txtDob').datetimepicker({
                format: 'd/m/Y',
                timepicker: false,
                mask: true
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="container mt-4">
            <h1 class="text-center mt-2 mb-4">ĐĂNG KÝ</h1>
            <div class="text-center mt-4 mb-4">
                <button class="btn facebook-btn social-btn mr-4" type="button">
                    <span><i class="fa fa-facebook-f"></i>  Đăng ký với Facebook</span>
                </button>
                <button class="btn google-btn social-btn" type="button">
                    <span><i class="fa fa-google-plus-square"></i>  Đăng ký với Google+</span>
                </button>
            </div>
            <p class="text-center">HOẶC</p>
            <hr>
            <form id="frmRegister" method="post">
                <div class="form-row d-flex justify-content-center">
                    <div class="col-sm-5 mr-lg-5">
                        <div class="form-group">
                            <label for="txtName">Họ tên</label>
                            <input type="text" class="form-control" id="txtName" name="name" autofocus>
                            <small id="nameHelp" class="form-text text-danger">
                                Họ tên không được bỏ trống
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtAddress">Địa chỉ</label>
                            <input type="text" class="form-control" id="txtAddress" name="address">
                            <small id="addressHelp" class="form-text text-danger">
                                Địa chỉ không được bỏ trống
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtDob">Ngày sinh</label>
                            <input type="text" class="form-control" id="txtDob" name="dob">
                            <small id="dobHelp" class="form-text text-danger">
                                Chưa chọn ngày sinh
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtEmail">Email</label>
                            <input type="text" class="form-control" id="txtEmail" name="email">
                            <small id="emailHelp" class="form-text text-danger">
                                Email đã tồn tại
                            </small>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="txtUsername">Tài khoản</label>
                            <input type="text" class="form-control" id="txtUsername" name="username">
                            <small class="form-text text-danger" id="usernameHelp">
                                Chưa điền thông tin tài khoản
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" class="form-control" id="password" name="rawpwd">
                            <small class="form-text text-danger" id="passwordHelp">
                                Chưa nhập mật khẩu
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="passwordConfirm">Nhập lại mật khẩu</label>
                            <input type="password" class="form-control" id="passwordConfirm">
                            <small class="form-text text-danger" id="passwordConfirmHelp">
                                Nhập lại mật khẩu sai
                            </small>
                        </div>
                        <div class="form-group form-check mt-4">
                            <input type="checkbox" class="form-check-input" id="checkBox">
                            <label class="form-check-label" for="checkBox">Tôi đồng ý với điều khoản sử dụng</label>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <span>
                        <button class="btn btn-primary mr-2 mb-4" type="submit" role="button">
                           <i class="fa fa-user-plus" aria-hidden="true"></i>
                            Đăng ký
                        </button>
                        <a class="btn btn-primary mb-4" href="${pageContext.request.contextPath}/home" role="button">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            Trang chủ
                        </a>
                    </span>
                </div>
            </form>
        </div>
    </jsp:body>
</t:auth>