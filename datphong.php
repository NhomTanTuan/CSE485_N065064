<?php include('includes/header.php'); ?>
<?php include('includes/slider.php'); ?>
<div class="bootstrap-iso">
    <div class="container-fluid" style="margin-top:20px;">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" id="left">
                <div class="box">
                    <div class="box_top">
                        <p>Liên hệ</p>		
                    </div>
                    <div class="box_main">
                        <div id="show2"><label>Cám ơn bạn đã góp ý</label></div>
                        <div id="show1">
                            <form name="frmadd_user" method="POST" action="#">
                                <h3>Gửi ý kiến</h3>
                                <div class="form-group">
                                    <label>Họ tên</label>
                                    <input type="text" name="hoten" id="hoten" value="" class="form-control" placeholder="Họ tên">	
                                    <input type="hidden" name="ngaydang" id="ngaydang" value="<?php echo $date['year'].'-'.$date['mon'].'-'.$date['mday']; ?>">
                                    <input type="hidden" name="nameu" id="nameu" value="<?php if(isset($_SESSION['username'])){echo $_SESSION['username'];}else{echo 'username';} ?>">
                                </div>	
                                <div class="form-group">
                                    <label>Điện thoại</label>
                                    <input type="text" name="dienthoai" id="dienthoai" value="" class="form-control" placeholder="Điện thọai">	
                                </div>	
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <input type="text" name="diachi" id="diachi" value="" class="form-control" placeholder="Địa chỉ">
                                    <?php if(isset($mess)){echo $mess;} ?>
                                </div>	
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" name="email" id="email" value="" class="form-control"  placeholder="Email">	
                                </div>	
                                <div class="form-group">
                                    <label>Nội dung</label>
                                    <textarea name="noidung" id="noidung" class="form-control" placeholder="Nội dung"></textarea>	
                                </div>	
                                <input type="button" name="button" id="button" class="btn btn-primary" value="Gửi ý kiến">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function(){
                    $("#show2").hide();
                    function checkMail(mail){
                        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;								
                        if (!filter.test(mail)) return false;								
                            return true;								
                    }
                    $("#button").click(function(){
                        var ngaydang=$("#ngaydang").val();
                        var hoten=$("#hoten").val();
                        var dienthoai=$("#dienthoai").val();
                        var diachi=$("#diachi").val();
                        var email=$("#email").val();
                        var noidung=$("#noidung").val();
                        var nameu=$("#nameu").val();
                        if(hoten=='')
                        {
                            alert("Bạn chưa nhập họ tên");
                            $("#hoten").focus();
                            return false;
                        }
                        else if(dienthoai=='')
                        {
                            alert("Bạn chưa nhập điện thoại");
                            $("#dienthoai").focus();
                            return false;	
                        }
                        else if(diachi=='')
                        {
                            alert("Bạn chưa nhập địa chỉ");
                            $("#diachi").focus();
                            return false;	
                        }
                        else if(email=='')
                        {
                            alert("Bạn chưa nhập email");
                            $("#email").focus();
                            return false;	
                        }
                        else if(!checkMail(email))
                        {
                            alert("Email không đúng định dạng (xyz@abc.de)");
                            $("#email").focus();
                            return false;	
                        }
                        else if(noidung=='')
                        {
                            alert("Bạn chưa nhập nội dung");											
                            return false;	
                        }
                        else
                        {
                            $.ajax({
                                type: "POST",
                                url: "dogopy.php",
                                data: {nameu : nameu,ngaydang : ngaydang,hoten : hoten,dienthoai : dienthoai,diachi : diachi,email : email,noidung : noidung},
                                cache: false,
                                success:function(html){
                                    $("#show1").hide(500);
                                    $("#show2").show(500);
                                }
                            });
                        }
                        return false;
                    });
                });
            </script>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                <div class="row" id="dp_center">
                    <div class="col-md-4"id="col1">
                        <a href="#">
                            <img class="img-responsive" src="image/ks1.jpg" width="100%" alt="">
                        </a>
                    </div>
                    <div class="col-md-5" id="col2">
                        <h3>KHÁCH SẠN SILVERLAND CHARNER</h3>
                        <h4><img src="image/icon_dd.png" alt="anh" width="16px" style="background:#f0f0f0">&nbsp;159 Thùy Vân, Vũng Tàu </h4>
                        <p>Khách sạn có 90 phòng được thiết kế độc đáo và sang trọng và được lắp máy lạnh toàn bộ. Tất cả các phòng đều có tiện nghi hiện đại như TV màn hình LCD với các kênh truyền hình cáp và Wi-Fi miễn phí. Dịch vụ phòng 24 giờ, dụng cụ pha cà phê / trà và nước đóng chai miễn phí là những tiện nghi, dịch vụ khác để phục vụ cho mọi nhu cầu của khách. Phòng tắm riêng đi kèm máy sấy tóc và áo choàng tắm sang trọng. Một số phòng có bồn tắm độc lập.</p>
                        <a class="btn btn-primary" href="#">Xem Bài</span></a>
                    </div>
                    <div class="col-md-3" id="col3">
                        <h3>1499999 <br/> VNĐ/Đêm</h3>
                        <a class="btn btn-primary btn1" href="#">Đặt ngay</span></a>
                    </div>
                </div>
                <div class="row" id="dp_center">
                    <div class="col-md-4"id="col1">
                        <a href="#">
                            <img class="img-responsive" src="image/ks1.jpg" width="100%" alt="">
                        </a>
                    </div>
                    <div class="col-md-5" id="col2">
                        <h3>KHÁCH SẠN SILVERLAND CHARNER</h3>
                        <p>Khách sạn có 90 phòng được thiết kế độc đáo và sang trọng và được lắp máy lạnh toàn bộ. Tất cả các phòng đều có tiện nghi hiện đại như TV màn hình LCD với các kênh truyền hình cáp và Wi-Fi miễn phí. Dịch vụ phòng 24 giờ, dụng cụ pha cà phê / trà và nước đóng chai miễn phí là những tiện nghi, dịch vụ khác để phục vụ cho mọi nhu cầu của khách. Phòng tắm riêng đi kèm máy sấy tóc và áo choàng tắm sang trọng. Một số phòng có bồn tắm độc lập.</p>
                        <a class="btn btn-primary" href="#">Xem Bài</span></a>
                    </div>
                    <div class="col-md-3" id="col3">
                        <h3>1499999 <br/> VNĐ/Đêm</h3>
                        <a class="btn btn-primary btn1" href="#">Đặt ngay</span></a>
                    </div>
                </div>
                <div class="row" id="dp_center">
                    <div class="col-md-4"id="col1">
                        <a href="#">
                            <img class="img-responsive" src="image/ks1.jpg" width="100%" alt="">
                        </a>
                    </div>
                    <div class="col-md-5" id="col2">
                        <h3>KHÁCH SẠN SILVERLAND CHARNER</h3>
                        <p>Khách sạn có 90 phòng được thiết kế độc đáo và sang trọng và được lắp máy lạnh toàn bộ. Tất cả các phòng đều có tiện nghi hiện đại như TV màn hình LCD với các kênh truyền hình cáp và Wi-Fi miễn phí. Dịch vụ phòng 24 giờ, dụng cụ pha cà phê / trà và nước đóng chai miễn phí là những tiện nghi, dịch vụ khác để phục vụ cho mọi nhu cầu của khách. Phòng tắm riêng đi kèm máy sấy tóc và áo choàng tắm sang trọng. Một số phòng có bồn tắm độc lập.</p>
                        <a class="btn btn-primary" href="#">Xem Bài</span></a>
                    </div>
                    <div class="col-md-3" id="col3">
                        <h3>1499999 <br/> VNĐ/Đêm</h3>
                        <a class="btn btn-primary btn1" href="#">Đặt ngay</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('includes/footer.php'); ?>