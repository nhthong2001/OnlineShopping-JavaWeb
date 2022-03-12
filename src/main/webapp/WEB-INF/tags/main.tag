<%@ tag pageEncoding="utf-8" %>
<%@ attribute name="css" fragment="true" required="false" %>
<%@ attribute name="js" fragment="true" required="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Online Shopping</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .list-group > .list-group {
            display: none;
            margin-bottom: 0;
        }
        .list-group-item:focus-within + .list-group {
            display: block;
        }
        .list-group > .list-group-item {
            border-radius: 0;
            border-width: 1px 0 0 0;
        }

        .list-group > .list-group-item:first-child {
            border-top-width: 0;
        }

        .list-group  > .list-group > .list-group-item {
            padding-left: 2.5rem;
        }
    </style>
    <jsp:invoke fragment="css"/>
</head>
<body>
    <jsp:include page="../../views/partials/nav.jsp"/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
                <jsp:include page="../../views/partials/categories.jsp"/>
            </div>
            <div class="col-sm-9">
                <jsp:doBody/>
            </div>
        </div>
    </div>

    <jsp:include page="../../views/partials/footer.jsp"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
            integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
            crossorigin="anonymous"></script>
    <jsp:invoke fragment="js"/>
</body>
</html>

