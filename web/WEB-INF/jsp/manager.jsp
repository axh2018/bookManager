<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function add_info()
        {
            var form = document.getElementById('updateform');
            form.submit();
            $("#myModal").on("hidden.bs.modal", function() {
                $(this).removeData("bs.modal");
            });

        }
    </script>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">請輸入書籍信息</h4>
            </div>
            <div class="modal-body">
                <form id="updateform" action="${pageContext.request.contextPath}/book/addBook" >
                    <div class="form-group">
                        <label for="email" class="control-label">書籍名稱:</label>
                        <input type="text" class="form-control" id="email" name="bookName">
                    </div>
                    <div class="form-group">
                        <label for="phone" class="control-label">書籍數量:</label>
                        <input type="text" class="form-control" id="phone" name="bookCounts">
                    </div>
                    <div class="form-group">
                        <label for="address" class="control-label">書籍詳情:</label>
                        <textarea class="form-control" id="address" name="detail"></textarea>
                    </div>
                    <div class="text-right">
                        <span id="returnMessage" class="glyphicon"> </span>
                        <button type="button" class="btn btn-default right" data-dismiss="modal">取消</button>
                        <button id="submitBtn" type="submit" class="btn btn-primary" formaction="${pageContext.request.contextPath}/book/addBook" >提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            新增
        </button>
        <a href="${pageContext.request.contextPath}/book/manager" class="btn btn-primary">
            所有書籍
        </a>
            <span style="color: red;font-weight: bold">${error}</span>
        </div>

        <div class="col-md-4 column" style="float: right">
            <form method="post" action="${pageContext.request.contextPath}/book/queryBookByName">
            <div class="col-xs-6">
                <input type="text" name="bookName" class="form-control" placeholder="書籍名稱">
            </div>
                <input type="submit" class="btn btn-primary" value="搜索"/>
            </form>
        </div>

    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${requestScope.get('list')}">
                    <tr>
                        <td>${book.getBookID()}</td>
                        <td>${book.getBookName()}</td>
                        <td>${book.getBookCounts()}</td>
                        <td>${book.getDetail()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/book/delBook?id=${book.getBookID()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
