<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

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

    </jsp:attribute>
    <jsp:body>
        <div class="container mt-4">
            <h1 class="text-center mt-4 mb-4">ĐĂNG KÝ</h1>
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
            <form id="frmRegister" action="" method="post">
                <div class="form-row d-flex justify-content-center">
                    <div class="col-sm-5 mr-lg-5">
                        <div class="form-group">
                            <label for="txtName">Họ tên</label>
                            <input type="text" class="form-control" id="txtName">
                            <small id="nameHelp" class="form-text text-muted">
                                Họ tên không được bỏ trống
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtAddress">Địa chỉ</label>
                            <input type="text" class="form-control" id="txtAddress">
                            <small id="addressHelp" class="form-text text-muted">
                                Địa chỉ không được bỏ trống
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtDob">Ngày sinh</label>
                            <input type="text" class="form-control" id="txtDob">
                            <small id="dobHelp" class="form-text text-muted">
                                Chưa chọn ngày sinh
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="txtEmail">Email</label>
                            <input type="text" class="form-control" id="txtEmail">
                            <small id="emailHelp" class="form-text text-muted">
                                Email đã tồn tại
                            </small>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="txtUsername">Tài khoản</label>
                            <input type="text" class="form-control" id="txtUsername">
                            <small class="form-text text-muted">
                                Chưa điền thông tin tài khoản
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" class="form-control" id="password">
                            <small class="form-text text-muted">
                                Chưa nhập mật khẩu
                            </small>
                        </div>
                        <div class="form-group">
                            <label for="passwordConfirm">Nhập lại mật khẩu</label>
                            <input type="password" class="form-control" id="passwordConfirm">
                            <small class="form-text text-muted">
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
                        <a class="btn btn-primary mr-2 mb-4" type="submit" role="button">
                           <i class="fa fa-user-plus" aria-hidden="true"></i>
                            Đăng ký
                        </a>
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