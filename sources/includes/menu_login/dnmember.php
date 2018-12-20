<style>

.bootstrap-iso .nav > li > a {
    position: relative;
    display: block;
    padding: 8px 10px;
}
</style>
<div class="bootstrap-iso">
    <div class="pull-right">
        <ul class="nav pull-right">
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome,&nbsp;<?php if(isset($_SESSION['username'])) {echo $_SESSION['username'];} ?><b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="/user/preferences"><i class="icon-cog"></i> Sửa thông tin</a></li>
                    <li><a href="doipassm.php"><i class="icon-envelope"></i> Đổi mật khẩu</a></li>
                    <li class="divider"></li>
                    <li><a href="thoat.php"><i class="icon-off"></i> Đăng xuất</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
