<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:auth>
    <jsp:attribute name="css">
    <style>
        body{
            background: cadetblue;
        }
        #logreg-forms{
            width:412px;
            margin:20vh auto;
            background-color:#f3f3f3;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            transition: all 0.3s cubic-bezier(.25,.8,.25,1);
            border-radius: 15px;
        }
        #logreg-forms form {
            width: 100%;
            max-width: 410px;
            padding: 15px;
            margin: auto;
        }
        #logreg-forms .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        #logreg-forms .form-control:focus { z-index: 2; }
        #logreg-forms .form-login input[type="text"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        #logreg-forms .form-login input[type="password"] {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
        #logreg-forms .social-login{
            width:390px;
            margin:0 auto;
            margin-bottom: 14px;
        }
        #logreg-forms .social-btn{
            font-weight: 100;
            color:white;
            width:190px;
            font-size: 0.9rem;
        }
        forgot_pswd{
            display: block;
            padding-top:10px;
            color:lightseagreen;
        }
        #logreg-forms button[type="submit"]{ margin-top:10px; }
        #logreg-forms .facebook-btn{  background-color:#3C589C; }
        #logreg-forms .google-btn{ background-color: #DF4B3B; }
        #logreg-forms .form-signup .social-btn{ width:210px; }
        #logreg-forms .form-signup input { margin-bottom: 2px;}
        .form-signup .social-login{
            width:210px !important;
            margin: 0 auto;
        }
    </style>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
        </script>
    </jsp:attribute>
    <jsp:body>
        <div id="logreg-forms">
        <form class="form-login" method="post" action="">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">
                <b>????NG NH???P</b>
            </h1>
            <div class="social-login mt-4">
                <button class="btn facebook-btn social-btn" type="button">
                    <span><i class="fa fa-facebook-f"></i> ????ng nh???p v???i Facebook</span>
                </button>
                <button class="btn google-btn social-btn" type="button">
                    <span><i class="fa fa-google-plus-square"></i> ????ng nh???p v???i Google+</span>
                </button>
            </div>
            <p style="text-align:center"> HO???C </p>
            <c:if test="${hasError}">
                <div class="alert alert-warning" role="alert">
                    <strong>????ng nh???p th???t b???i!</strong> ${errorMessage}
                </div>
            </c:if>
            <input type="text" id="inputUsername" name="username" class="form-control" placeholder="T??i kho???n" required=""
                   autofocus="">
            <input type="password" id="inputPassword" name="password" class="form-control" placeholder="M???t kh???u" required="">

            <button class="btn btn-success btn-block" type="submit">
                <i class="fa fa-sign-in"></i>
                ????ng Nh???p
            </button>
            <a href="#" id="forgot_pswd">Qu??n m???t kh???u?</a>
            <hr>

            <a href="${pageContext.request.contextPath}/auth/signup" class="btn btn-primary btn-block" type="button" id="btn-signup">
                <i class="fa fa-user-plus"></i>
                ????ng K?? T??i Kho???n M???i
            </a>
        </form>
    </jsp:body>
</t:auth>