//định nghía các phần tử cần thao tác
let btnThem,selectSearchDanhMuc,selectSearchSapXep,textSeachTen,textSearchGia,numberSearchGia,numberSearchDaBan,dateSearchNgayTao,selectSearchConHang,btnTimKiem,tableDuLieu,textTen,selectDanhMuc,numberGia,numberDaBan,numberBaoHanh,numberKhuyenMai,fileAnh,dateNgayTao,textareaGioiThieu,textareaThongSo,checkboxHetHang,btnLuu,btnXacNhanXoa;

//hàm này sẽ chạu cacs dòng lệnh ở trong nó khi caccs phần tử html đã được tải hết
let listProduct = [
    {
        id: 1,
        name: "Iphone 10",
        price: 10000,
        createDate: "2020-08-20",
        image: "https://cdn.cellphones.com.vn/.../iphone11-purple-select...",
        introduction: "Iphone tai thỏ",
        specification: "Chip A11",
        soldOut: true,
        guarantee: 12,
        categoryId: 1,
        bouth: 1000,
        promotion: 10
    },
    {
        id: 2,
        name: "Iphone 11",
        price: 10000,
        createDate: "2020-08-20",
        image: "https://cdn.tgdd.vn/.../iphone-11-pro-max-green-600x600.jpg",
        introduction: "Iphone tai thỏ",
        specification: "Chip A11",
        soldOut: false,
        guarantee: 12,
        categoryId: 2,
        bouth: 1000,
        promotion: 10
    },
];
$(function () {
    btnThem = $("#btn-them");
    selectSearchDanhMuc = $("#select-search-danh-muc");
    selectSearchSapXep = $("#select-search-sap-xep");
    textSeachTen = $("#input-search-ten");

    numberSearchGia = $("#input-search-gia");
    numberSearchDaBan = $("#input-search-da-ban");
    dateSearchNgayTao = $("#input-ngay-tao");
    selectSearchConHang = $("#select-search-het-hang");
    btnTimKiem = $("#btn-tim-kiem");
    tableDuLieu = $("tbody");
    textTen = $("#input-ten");
    selectDanhMuc = $("#select-loai-san-pham");
    numberGia = $("#input-gia");
    numberDaBan = $("#input-da-ban");
    numberBaoHanh = $("#input-bao-hanh");
    numberKhuyenMai = $("#input-khuyen-mai");
    fileAnh = $("#file-anh");
    dateNgayTao = $("#input-ngay-tao");
    textareaGioiThieu = $("#textarea-gioi-thieu");
    textareaThongSo = $("#textarea-thong-so");
    checkboxHetHang = $("#checkbox-het-hang");
    btnLuu = $("#btn-luu-lai");
    btnXacNhanXoa = $("#btn-xac-nhan-xoa");
    viewDanhSachSanPham();
})
function viewDanhSachSanPham() {
let view="<tr><td colspan='8'><strong>Không có dữ liệu !</strong></td></tr>";
if (listProduct && listProduct.length > 0){
    view = listProduct.map((data,index) =>{
       //cú pháp template string trong đó cho phép thực hiện các phép toán
        return ` <tr>
                            <th scope="row">${index + 1}</th>
                            <td><img src="${data.image}" alt="" width="80px"></td>
                            <td>${viewField(data.name)}</td>
                            <td>${viewField(data.price)}</td>
                            <td>${viewField(data.bouth)}</td>
                            <td>${viewField(data.createDate)}</td>
                            <td class="text-center">${data.soldOut ?`<span class="badge badge-danger">Hết Hàng</span>` : `<span class="badge badge-success">Còn hàng</span>`}</td>
                            <td>
                                <button type="button" class="btn btn-warning"><i class="fas fa-pen"></i>
                                    Sửa</button>
                                <button type="button" class="btn btn-danger" data-toggle="modal"
                                        data-target="#exampleModal1"><i class="fas fa-trash-alt"></i>
                                    Xóa</button>
                            </td>
                        </tr>`
    }).join("");
    //console.log(tmp);
}
    tableDuLieu.html(view);

}
function viewField(field) {
    return field ? field : "";

}