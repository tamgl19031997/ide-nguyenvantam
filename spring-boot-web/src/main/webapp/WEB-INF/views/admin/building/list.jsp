<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="loadStaffId" value="/api/building" />
<c:url var="buildingListURL" value="/admin/building-list" />

<html>
<head>
    <title>Danh sách toà nhà</title>
</head>
<body>
<%--<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>--%>
    <div class="main-content">



        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active"><a href="#">Buiding</a></li>
                </ul><!-- /.breadcrumb -->


            </div>

            <div class="page-content">




                <div class="col-xs-12">
                    <div class="row">
                        <div class="widget-box">
                            <div class="widget-header">
                                <h4 class="widget-title">Tìm Kiếm</h4>

                                <div class="widget-toolbar">
                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>

                                <div class="widget-body">
                                        <div class="widget-main">
                                        <form:form commandName="modelSearch" action="${buildingListURL}" id="listForm" method="GET">
                                            <div class="row">
                                                <div class="widget-main">
                                                        <div class="col-xs-12 col-sm-6">
                                                            <label for="name"><b>Tên toàn nhà:</b></label>

                                                            <form:input path="name" cssClass="form-control"/>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-6">
                                                            <label for="name"><b>Diện tích sàn:</b></label>
                                                            <input type="number" id="floorArea" name="floorArea" value="${modelSearch.floorArea}" class="form-control" />
                                                        </div>


                                                    <div class="col-xs-12 col-sm-12">
                                                        <br/>
                                                    </div>


                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="name"><b>Quận:</b></label>
                                                            <form:select path="districtCode" cssClass="form-control">
                                                                <form:option value="-1" label="---Chọn quận---"/>
                                                                <form:options items="${districts}"/>
                                                            </form:select>
                                                        </div>

                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="ward"><b>Phường:</b></label>
                                                            <form:input path="ward" cssClass="form-control"/>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="street"><b>Đường:</b></label>
                                                            <form:input path="street" cssClass="form-control"/>
                                                        </div>


                                                    <div class="col-xs-12 col-sm-12">
                                                        <br/>
                                                    </div>


                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="numberOfBasement"><b>Số tầng hầm:</b></label>
                                                            <input type="number" id="numberOfBasement" name="numberOfBasement" value="${modelSearch.numberOfBasement}" class="form-control" />
                                                            <%--<form:input path="numberOfBasement" cssClass="form-control"/>--%>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="direction"><b>Hướng:</b></label>
                                                            <form:input path="direction" cssClass="form-control"/>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="level"><b>Hạng:</b></label>
                                                            <form:input path="level" cssClass="form-control"/>
                                                        </div>


                                                    <div class="col-xs-12 col-sm-12">
                                                        <br/>
                                                    </div>



                                                        <div class="col-xs-12 col-sm-3">
                                                            <label for="areaFrom"><b>Diện tích từ:</b></label>
                                                            <%--<form:input path="areaFrom" cssClass="form-control"/>--%>
                                                            <input type="number" id="areaFrom" name="areaFrom" value="${modelSearch.areaFrom}" class="form-control" />
                                                        </div>
                                                        <div class="col-xs-12 col-sm-3">
                                                            <label for="areaTo"><b>Diện tích đến:</b></label>
                                                            <%--<form:input path="areaTo" cssClass="form-control"/>--%>
                                                            <input type="number" id="areaTo" name="areaTo" value="${modelSearch.areaTo}" class="form-control" />
                                                        </div>
                                                        <div class="col-xs-12 col-sm-3">
                                                            <label for="rentPriceFrom"><b>Giá thuê từ:</b></label>
                                                            <%--<form:input path="rentPriceFrom" cssClass="form-control"/>--%>
                                                            <input type="number" id="rentPriceFrom" name="rentPriceFrom" value="${modelSearch.rentPriceFrom}" class="form-control" />
                                                        </div>
                                                        <div class="col-xs-12 col-sm-3">
                                                            <label for="rentPriceTo"><b>Giá thuê đến:</b></label>
                                                            <%--<form:input path="rentPriceTo" cssClass="form-control"/>--%>
                                                            <input type="number" id="rentPriceTo" name="rentPriceTo" value="${modelSearch.rentPriceTo}" class="form-control" />
                                                        </div>


                                                    <div class="col-xs-12 col-sm-12">
                                                        <br/>
                                                    </div>


                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="staffFullName"><b>Tên quản lý:</b></label>
                                                            <form:input path="staffFullName" cssClass="form-control"/>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-4">
                                                            <label for="staffPhone"><b>Điện thoại quản lý:</b></label>
                                                            <form:input path="staffPhone" cssClass="form-control"/>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-3">
                                                            <label for="name"><b>Chọn nhân viên phụ trách:</b></label>
                                                            <form:select path="staffId" cssClass="form-control">
                                                                <form:option value="-1" label="---Chọn nhân viên---"/>
                                                                <form:options items="${staffmaps}"/>
                                                            </form:select>

                                                        </div>


                                                    <div class="col-xs-12 col-sm-12">
                                                        <br/>
                                                    </div>


                                                        <div class="col-xs-12 col-sm-12">
                                                            <form:checkboxes path="types" items="${buildingType}"/>
                                                        </div>



                                                    <div class="col-xs-12 col-sm-12">
                                                        <center>
                                                            <button class="btn btn-app btn-primary" type="button" id="btnSearch">Tìm kiếm</button>
                                                        </center>
                                                    </div>
                                                </div>

                                            </div>
                                        </form:form>
                                        </div>

                                </div>

                        </div>
                    </div>

                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <!-- table -->

                    <div class="row">
                        <div class="pull-right">
                            <button class="btn btn-app btn-danger btn-xs" data-toggle="tooltip" title="Xoá toà nhà" id="btnDeleteBuilding">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </button>
                        </div>
                        <a href='<c:url value='/admin/building-edit'/>'>
                            <div class="pull-right">
                                <button class="btn btn-app btn-success btn-xs" data-toggle="tooltip" title="Thêm toà nhà">
                                    <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                </button>
                            </div>
                        </a>
                        <!--<div class="pull-right">
                            <button class="btn btn-white btn-info btn-bold" data-toggle="tooltip" title="Thêm toà nhà">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                            </button>
                        </div>-->

                        <div class="row">
                            <div class="col-xs-12">
                                <table id="buildingList" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" />
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th>Tên sản phẩm</th>
                                        <th>Số tầng hầm</th>
                                        <th>Địa chỉ</th>
                                        <th>Tên quản lý</th>
                                        <th>Số điện thoại</th>
                                        <th>D.T sàn</th>
                                        <th>D.T trống</th>

                                        <th class="hidden-480">Giá thuê</th>

                                        <th>
                                            Phí dịch vụ
                                        </th>
                                        <th class="hidden-480">Phí môi giới</th>

                                        <th>Thao tác</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="item" items="${buildings}">
                                    <tr>
                                        <td class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" />
                                                <span class="lbl"></span>
                                            </label>
                                        </td>

                                        <td>${item.name}</td>

                                        <td>${item.numberOfBasement}</td>

                                        <td>${item.street} - ${item.ward}</td>

                                        <td></td>

                                        <td>${item.staffPhone}</td>

                                        <td>${item.floorArea}</td>

                                        <td>${item.staffFullName}</td>

                                        <td>${item.rentPrice}</td>

                                        <td>${item.serviceFee}</td>

                                        <td>

                                        </td>

                                        <td>
                                            <div >
                                                <button class="btn btn-xs btn-info" data-toggle="tooltip" title="Edit">
                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                </button>
                                                <button class="btn btn-xs btn-pink" data-toggle="tooltip" title="Giao toà nhà" onclick="assingmentBuilding()">
                                                    <i class="ce-icon fa fa-share bigger-120"></i>
                                                </button>
                                            </div>

                                        </td>
                                    </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
                            </div><!-- /.span -->
                        </div><!-- /.row -->
                        <!-- End table -->
                    </div>
                </div><!-- /.col -->

            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<div class="modal fade" id="assingmentBuildingModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped" id="staffsList">
                    <thead>
                    <tr>
                        <th scope="col">Chọn nhân viên</th>
                        <th scope="col">Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <input type="hidden" id="buildingId" name="buildingId" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnAssingmentBuilding">Giao toà nhà</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
            </div>
        </div>

    </div>
</div>

<script>
    function assingmentBuilding(buildingId) {
        openAssingmentBuilding();
        loadStaff();
        $('#buildingId').val(buildingId);
    }

    function loadStaff() {
        $.ajax({
            type: "GET",
            url: "${loadStaffId}/1/staffs",
            //data: JSON.stringify(data),
            dataType: "json",
            //contentType: "application/json",
            success: function(response){
                console.log('success');
                var row ='';
                $.each(response.data, function (index, item) {
                    row += '<tr>';
                    row += '<td class="text-center"><input type="checkbox" value=' +item.staffId + ' id="checkbox_' + item.staffId + '" class="check-box-elemnt" ' + item.checked + '/></td>';
                    row += '<td class="text-center">' + item.fullName + '</td>';
                    row += '</tr>';
                })
                $('#staffsList tbody').html(row);
            },
            error: function(response) {
                console.log('failed');
                console.log(response);
            }
        });
    }
    function openAssingmentBuilding() {
        $('#assingmentBuildingModal').modal();
    }

    $('#btnAssingmentBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        //$('#staffsList').find('tbody input[type=checkbox]')
        var staffs = $('#staffsList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        assignStaff(data);
    });
    function assignStaff(data) {
        $.ajax({
            url: "url",
            type: "POST",
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function(response){
                console.log('success');
            },
            error: function(response) {
                console.log('failed');
                console.log(response);
            }
        });
    }
    $('#btnDeleteBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        var buildingIds = $('#buildingList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['buildingIds'] = buildingIds;
        deleteBuilding(data);
    });
    function deleteBuilding(data) {
        $.ajax({
            url: "url",
            type: "DELETE",
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json"

        });
    }

    $('#btnSearch').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    });
</script>
</body>
</html>
