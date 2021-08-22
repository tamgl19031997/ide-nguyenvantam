<%@include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building" />
<c:url var="listBuildingURL" value="/admin/building-list" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT BUILDING</title>
</head>
<body>
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
                <li class="active"><a href="#">Building</a></li>
                <li class="active">Building create</li>
            </ul><!-- /.breadcrumb -->
        </div>

        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <form class="form-horizontal" role="form" id="formEdit">
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1"><h4>Tên sản phẩm:</h4></label>

                            <div class="col-sm-9">
                                <input type="text" id="form-field-1" name="name" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <%--<div class="space-4"></div>

                       <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Tên người quản lý:</h4></label>
                        </div>--%>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>SĐT quản lý:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="managerPhone" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <%--<div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Quận:</h4></label>
                            <div class="col-sm-9">
                                <select name="dropdown" class="col-xs-10 col-sm-3" >
                                    <option value="" selected>--Chọn quận--</option>
                                    <option value="Thanh Khê" selected>Thanh Khê</option>
                                </select>
                            </div>
                        </div>--%>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phường:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="war" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>



                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Đường:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="street" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3  no-padding-left" for="form-field-1-1"><h4>Kết cấu:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3  no-padding-left" for="form-field-1-1"><h4>Số tầng hầm:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="numberOfBasement" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Diện tích sàn:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="floorArea" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Hướng:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="direction" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Hạng:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="rate" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Diện tích thuê:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Mô tả diện tích:</h4></label>
                            <div class="col-sm-9">
                                <textarea class="col-xs-10 col-sm-10" name="" value="" rows="3" id="comment"></textarea>
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Đặt cọc:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Thanh toán:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Thời hạn thuê:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Giá:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="rentPrice" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Mô tả giá:</h4></label>
                            <div class="col-sm-9">
                                <textarea class="col-xs-10 col-sm-10" name="" value="" rows="3" id="comment"></textarea>
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phí môi giới:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phí dịch vụ:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name="serviceFee" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phí ô tô:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phí mô tô:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Phí môi ngoài giờ:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Tiền điện:</h4></label>
                            <div class="col-sm-9">
                                <input type="number" id="form-field-1-1" name="" value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>

                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Thời gian trang trí:</h4></label>
                            <div class="col-sm-9">
                                <input type="text" id="form-field-1-1" name=""  value="" class="col-xs-10 col-sm-10" />
                            </div>
                        </div>


                        <div class="space-4"></div>
                        <div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Ghi chú:</h4></label>
                            <div class="col-sm-9">
                                <textarea class="col-xs-10 col-sm-10" name="" rows="3" id="comment"></textarea>
                            </div>
                        </div>

                        <%--<div class="form-group">
                            <label class="col-sm-3 no-padding-left" for="form-field-1-1"><h4>Loại toà nhà:</h4></label>
                            <div class="col-sm-9">
                                <label class="checkbox-inline"><input type="checkbox" value="">Tầng trệt</label>

                                <label class="checkbox-inline"><input type="checkbox" value="">Nguyên căn</label>

                                <label class="checkbox-inline"><input type="checkbox" value="">Nội thất</label>

                            </div>
                        </div>--%>

                        &nbsp; &nbsp; &nbsp;
                        <div class="col-md-offset-3 col-md-9">
                            <button class="btn btn-info" type="button" id="btnAddBuilding">
                                <i class="ace-icon fa fa-check bigger-110" ></i>
                                Thêm toà nhà
                            </button>

                            &nbsp; &nbsp; &nbsp;
                            <a href='<c:url value='/admin/building-edit'/>'>
                                <button class="btn" type="reset">
                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                    Reset
                                </button>
                            </a>
                        </div>

                    </form>

                </div>
            </div><!-- /.col -->

        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<script>
    $('#btnAddBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        var buildingType = [];
        var formData = $('#formEdit').serializeArray();
        /*$.each(formData, function(index, v) {
            if(v.name == 'buildingType') {
                buildingType.push(v.name);
            } else {
                data[""+v.name+""] = v.value;
            }
            data['buildingType'] = buildingType;
        });*/

        $.each(formData, function(index, v) {
            data[""+v.name+""] = v.value;
        });
        $.ajax({
            url: '${buildingAPI}',
            type: 'POST',
            data: JSON.stringify(data),
            dataType: "json",
            contentType: "application/json",
            success: function(response){
                window.location.href = "${listBuildingURL}";
            },
            error: function(response) {
                console.log('failed');
                console.log(response);
            }
        });
    });
</script>
</body>
</html>
