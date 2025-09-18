<?php 
$UserId = $_SESSION['User']['id'];
$user_id = $_SESSION['User']['id'];
$sql110 = "SELECT * FROM tbl_users_bill WHERE id='$UserId'";
$row110 = getRecord($sql110);
$Name   = $row110['Fname']." ".$row110['Lname'];

function isActive($file){
  return basename($_SERVER['PHP_SELF']) === $file ? 'active' : '';
}
?>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">

<!-- Sidebar -->
<div class="main-menu">
    <div class="row mb-4 no-gutters">
        <div class="col-auto">
            <button class="btn btn-link btn-40 btn-close">
                <span class="material-icons">chevron_left</span>
            </button>
        </div>
        <?php if(isset($_SESSION['User'])) { ?>
        <div class="col-auto">
            <div class="avatar avatar-40 rounded-circle position-relative">
                <figure class="background">
                    <?php if($row110['Photo'] == '') { ?>
                        <img src="<?php echo $SiteUrl;?>/user_icon.jpg" alt="" style="width:40px;height:40px;">
                    <?php } else { ?>
                        <img src="<?php echo $Uploadurl;?>/uploads/<?php echo $row110['Photo']; ?>" alt="" style="width:40px;height:40px;">
                    <?php } ?>
                </figure>
            </div>
        </div>
        <div class="col pl-3 text-left align-self-center">
            <h6 class="mb-1"><?php echo $Name; ?></h6>
        </div>
        <?php } ?>
    </div>

    <div class="menu-container">
        <ul class="nav nav-pills flex-column">

            <!-- Home -->
            <li class="nav-item">
                <a class="nav-link <?php echo isActive('home.php'); ?>" href="home.php">
                    <div class="left">
                        <span class="menu-icon-wrap">
                            <span class="material-icons-round menu-icon">home</span>
                        </span>
                        <span>Home</span>
                    </div>
                    <span class="material-icons-round arrow">chevron_right</span>
                </a>
            </li>

            <!-- Production -->
            <li class="nav-item">
                <a class="nav-link <?php echo isActive('view-productions.php'); ?>" href="view-productions.php">
                    <div class="left">
                        <span class="menu-icon-wrap">
                            <span class="material-icons-round menu-icon">factory</span>
                        </span>
                        <span>Production</span>
                    </div>
                    <span class="material-icons-round arrow">chevron_right</span>
                </a>
            </li>

            <!-- Transfer To Distributors -->
            <li class="nav-item">
                <a class="nav-link <?php echo isActive('view-trasnfer-to-distributers.php'); ?>" href="view-trasnfer-to-distributers.php">
                    <div class="left">
                        <span class="menu-icon-wrap">
                            <span class="material-icons-round menu-icon">local_shipping</span>
                        </span>
                        <span>Transfer To Distributors</span>
                    </div>
                    <span class="material-icons-round arrow">chevron_right</span>
                </a>
            </li>

            <!-- Logout -->
            <li class="nav-item">
                <a class="nav-link" href="logout.php" onclick="logout(); return false;">
                    <div class="left">
                        <span class="menu-icon-wrap">
                            <span class="material-icons-round menu-icon">logout</span>
                        </span>
                        <span>Logout</span>
                    </div>
                    <span class="material-icons-round arrow">chevron_right</span>
                </a>
            </li>
        </ul>

        <div class="text-center">
            <a href="logout.php" onclick="logout(); return false;" class="btn btn-outline-danger rounded my-3 mx-auto">Sign out</a>
        </div>
    </div>
</div>
<div class="backdrop"></div>

<script>
function logout(){
   Android.logout?.();
   window.location.href="logout.php";
}
</script>
