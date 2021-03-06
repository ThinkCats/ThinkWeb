<%--
  Created by IntelliJ IDEA.
  User: juepei
  Date: 2015/10/14
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:main>

    <jsp:attribute name="refers">
        <script type="text/javascript" src="/resources/assert/js/auth/user.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                loadUser("${_csrf.parameterName}", "${_csrf.token}", 1, 10);
            });
        </script>
    </jsp:attribute>

    <jsp:body>
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                权限管理
                <small>编辑您的权限信息</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li class="active"> 权限管理</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab">用户</a></li>
                            <li><a href="#tab_2" data-toggle="tab">角色</a></li>
                            <li><a href="#tab_3" data-toggle="tab">权限</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <div class="row">
                                    <div class="col-xs-12">
                                            <%-- operate area --%>
                                        <div class="form-group" style="width: 100%">
                                            <div class="btn-group" style="float: left">
                                                <button type="button" class="btn btn-default">操作</button>
                                                <button type="button" class="btn btn-default dropdown-toggle"
                                                        data-toggle="dropdown" aria-expanded="false">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="/user/addUser">新增用户</a></li>
                                                    <li><a href="#">其他操作</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">其他操作</a></li>
                                                </ul>
                                            </div>
                                            <div class="input-group" style="width: 300px; float: left">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <input type="text" width="40px" class="form-control active"
                                                       id="reservation">
                                            </div>

                                        </div>
                                    </div>


                                    <div class="col-xs-12">
                                            <%-- table area --%>


                                        <div class="box-header">
                                            <code id="pageStatus">
                                                共 <span id="totalNum"></span> 条记录 当前是第 <span id="pageNum"></span> 页
                                            </code>

                                            <div class="box-tools">
                                                <div class="input-group" style="width: 150px;">
                                                    <input type="text" name="table_search"
                                                           class="form-control input-sm pull-right"
                                                           placeholder="查找用户">

                                                    <div class="input-group-btn">
                                                        <button class="btn btn-sm btn-default"><i
                                                                class="fa fa-search"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-body table-responsive no-padding">
                                            <%-- Loading --%>
                                            <div id="loading"  class="progress progress-sm active" style="width: 30%;margin-left: auto;margin-right: auto">
                                                <div class="progress-bar progress-bar-success progress-bar-striped"
                                                     style="width: 100%;"
                                                     role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                                     aria-valuemax="100">
                                                    <span class="sr-only">80%.</span>
                                                </div>
                                            </div>

                                            <table id="table" class="table table-hover">
                                                <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>用户名</th>
                                                    <th>用户类型</th>
                                                    <th>密码</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>

                                                <tbody id="tbody">
                                                </tbody>

                                            </table>
                                        </div>
                                        <!-- /.box-body -->
                                        <div class="box-footer clearfix">
                                            <code>每页显示 <span id="pageLimit"></span> 条</code>
                                            <ul id="pagination" class="pagination pagination-sm no-margin pull-right">
                                            </ul>
                                        </div>
                                        <!-- /.box -->
                                    </div>
                                </div>

                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="tab_2">
                                    <%--TODO--%>
                                角色信息
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="tab_3">
                                    <%--TODO--%>
                                权限信息
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- nav-tabs-custom -->
                </div>
                <!-- /.col -->
            </div>
        </section>

    </jsp:body>

</t:main>
