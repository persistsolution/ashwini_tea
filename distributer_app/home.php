<?php 
session_start();
$sessionid = session_id();
require_once 'config.php';
require_once 'auth.php';

$PageName = "Home";
$url = "home.php";
$user_id = $_SESSION['User']['id'];
$uid = $_REQUEST['uid']; 

if($_REQUEST['uid'] == ''){
    $sql11 = "SELECT * FROM tbl_users_bill WHERE id='$user_id'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
} else {
    $sql11 = "SELECT * FROM tbl_users_bill WHERE id='$uid'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
}

if($_REQUEST['frid']!=''){
    $_SESSION['FranchiseId'] = $_REQUEST['frid'];
} else {
    if(!isset($_SESSION['FranchiseId'])){
        $_SESSION['FranchiseId'] = 0;
    }
}
$FranchiseId = $_SESSION['FranchiseId'];
$Calendar = $_REQUEST['calendar'];

$sql55 = "SELECT * FROM tbl_users_bill WHERE id='$FranchiseId'";
$row55 = getRecord($sql55);
?>
<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Maha Buddy</title>

    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
    <link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Material icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
 <!-- swiper CSS -->
    <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" id="style">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">


    <style>
        .menu-card {
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            padding: 20px 10px;
            transition: all 0.3s ease;
            text-align: center;
        }
        .menu-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }
        .menu-card i {
            font-size: 2.2rem;
            color: #009eff;
            margin-bottom: 10px;
        }
        .menu-card p {
            margin: 0;
            font-weight: 500;
            color: #333;
        }
        body {
            background: #f0f4f9;
        }
        .main-container {
            padding-top: 30px;
        }
  
</style>
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="analytics">

    <?php include 'sidebar.php';?>
    <div class="backdrop"></div>

    <main class="flex-shrink-0 main has-footer">
        <?php include 'top_header.php';?>
<br><br><br>
        <div class="main-container">
            <div class="container">
                <div class="row g-3">

                   <!-- Production -->
<div class="col-4 col-md-3">
    <a href="view-receive-stock-from-production.php" class="text-decoration-none">
        <div class="menu-card">
         <i class="fas fa-industry"></i>
            <p>Receive Stock From Production</p>
        </div>
    </a>
</div>

<div class="col-4 col-md-3">
    <a href="view-transfer-to-distributers.php" class="text-decoration-none">
        <div class="menu-card">
            <i class="fas fa-truck-arrow-right"></i>
            <p>Franchise Stock Requests</p>
        </div>
    </a>
</div>

<!-- Transfer To Distributors -->
<div class="col-4 col-md-3">
    <a href="view-transfer-to-distributers.php" class="text-decoration-none">
        <div class="menu-card">
            <i class="fas fa-truck-arrow-right"></i>
            <p>Transfer To Franchise</p>
        </div>
    </a>
</div>

<!-- Logout -->
<div class="col-4 col-md-3" style="padding-top: 10px;">
    <a href="logout.php" class="text-decoration-none">
        <div class="menu-card">
            <i class="fas fa-arrow-right-from-bracket"></i>
            <p>Logout</p>
        </div>
    </a>
</div>


                </div>
            </div>
        </div>
    </main>

    <?php include_once 'footer.php';?>

    <!-- Required JS -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/swiper/js/swiper.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
