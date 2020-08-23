<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/13/2020
  Time: 6:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm sản phẩm</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Tên danh mục</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Nhập tên danh mục...">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Giá</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Nhập giá sản phẩm">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Bảo hành</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Nhập thời gian bảo hành">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Ảnh</strong></label>
                                    <form method="post" action="upload-file" enctype="multipart/form-data">
                                        <input type="file" name="file" multiple="multiple" /> <br />
                                    </form>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1"><strong>Giới thiệu</strong></label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1"
                                              rows="3"></textarea>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Hết hàng</label>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Loại sản phẩm</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Điện thoại">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Đã bán</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Nhập số lượng đã bán">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><strong>Khuyến mãi</strong></label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" placeholder="Nhập số lượng đã bán">
                                    <div class="invalid-feedback">
                                        Please provide a valid zip.
                                    </div>
                                </div>
                                <div id="date-picker-example"
                                     class="md-form md-outline input-with-post-icon datepicker">
                                    <label for="exampleFormControlTextarea1"><strong>Ngày tạo</strong></label>
                                    <input placeholder="mm/dd/yyyy" type="text" id="example" class="form-control">
                                    <label for="example"></label>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1"><strong>Giới thiệu</strong></label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1"
                                              rows="3"></textarea>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-success">Lưu</button>
                </div>
            </div>
        </div>
    </div>
    <div class="title_page">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1>Quản lý danh mục sản phẩm</h1>
                </div>
                <div class="col-12">
                    <hr />
                </div>
            </div>
        </div>
    </div>
    <div class="tool-page">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mt-1">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i
                            class="fa fa-plus" aria-hidden="true"></i> Thêm
                        sản phẩm</button>
                </div>
                <div class="col-md-2">
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Loại sản phẩm</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
                <div class="col-md-2 mt-1">
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Press any key to continue</option>
                        <option>2</option>
                        <option>3</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="table-data">
        <div class="container">
            <div class="row">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Đã bán</th>
                            <th scope="col">Ngày tạo</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col" width ="16%">Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"></th>
                            <td></td>
                            <td><input type="text" class="form-control"></td>
                            <td><input type="text" class="form-control"></td>
                            <td><input type="text" class="form-control"></td>
                            <td>
                                <div id="date-picker-example"
                                     class="md-form md-outline input-with-post-icon datepicker">
                                    <input placeholder="mm/dd/yyyy" type="text" id="example"
                                           class="form-control">
                                    <label for="example"></label>
                                </div>
                            </td>
                            <td>
                                <select class="form-control" id="exampleFormControlSelect1">
                                    <option>Tất cả</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </td>
                            <td class="text-center"><button type="button" class="btn btn-primary"><i
                                    class="fa fa-search" aria-hidden="true"></i> Tìm kiếm</button></td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td><img src="https://didongviet.vn/pub/media/catalog/product/i/p/iphone-11-64gb-chinh-hang_1_1.jpg"
                                     alt="" width="50px" height="50px"></td>
                            <td>Iphone 11</td>
                            <td>25M</td>
                            <td>10</td>
                            <td>30/02/2020</td>
                            <td><span class="badge badge-danger">Hết hàng</span></td>
                            <td class="text-center">
                                <button type="button" class="btn btn-warning mt-1" data-toggle="modal" data-target="#exampleModal"> <div class="fa fa-pen"></div> Sửa</button>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-danger mt-1" data-toggle="modal"
                                        data-target="#exampleModalCenter">
                                    <i class="fas fa-trash-alt "></i>
                                    Xoá
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td><img src="https://cdn.tgdd.vn/Products/Images/42/217935/samsung-galaxy-s20-600x600-hong-600x600.jpg"
                                     alt="" width="50px" height="50px"></td>
                            <td>Samsung Galaxy S20+</td>
                            <td>20M</td>
                            <td>5</td>
                            <td>30/02/2020</td>
                            <td><span class="badge badge-success">Hết hàng</span></td>
                            <td class="text-center">
                                <button type="button"  class="btn btn-warning mt-1" data-toggle="modal" data-target="#exampleModal"> <div class="fa fa-pen"></div>Sửa</button>
                                <button type="button" class="btn btn-danger mt-1" data-toggle="modal"
                                        data-target="#exampleModalCenter">
                                    <i class="fas fa-trash-alt "></i>
                                    Xoá
                                </button>
                            </td>
                        </tr>

                        </tbody>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                             aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalCenterTitle">Xác nhận thao tác
                                        </h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Bạn có chắc chắn muốn xoá sản phẩm này không?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-light"
                                                data-dismiss="modal">Đóng</button>
                                        <button type="button" class="btn btn-danger">Xoá</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
