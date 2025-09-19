<?php 
session_start();
require_once 'config.php';

$user_id = $_SESSION['User']['id'];
$uid = $_REQUEST['uid']; 

if ($uid == '') {
    $sql11 = "SELECT * FROM tbl_users_bill WHERE id='$user_id'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
} else {
    $sql11 = "SELECT * FROM tbl_users_bill WHERE id='$uid'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
}

$PageName = "My Expenses";
$Page = "Recharge";
$WallMsg = "NotShow"; 
$url = "home.php"; 
unset($_SESSION["cart_item"]);
?>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?php echo $Proj_Title; ?></title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
    <link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Material icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&amp;display=swap" rel="stylesheet">

    <!-- swiper CSS -->
    <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet" id="style">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- SweetAlert -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css"> -->

    <style>
        /* Card styling */
        .status-card {
            font-family: 'Segoe UI', sans-serif;
            font-size: 14px;
            line-height: 1.6;
            border-radius: 12px;
            transition: all 0.3s ease-in-out;
        }
        .status-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.15) !important;
        }
        .status-card h5 {
            font-weight: 700;
            color: #222;
        }
        .status-card .info-label {
            color: #555;
            font-weight: 500;
            margin-right: 5px;
        }
        .status-card .info-value {
            font-weight: 600;
            color: #111;
        }
        .status-approved { color: green; }
        .status-rejected { color: red; }
        .status-pending { color: orange; }
        .status-partial { color: #007bff; }

        /* Transfer button */
        .transfer-btn {
            font-weight: 500;
            border-radius: 30px;
            padding: 6px 16px;
            transition: 0.3s;
        }
        .transfer-btn:hover {
            background: #007bff;
            color: #fff;
        }

        /* Modal beautify */
        .modal-content {
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.2);
        }
        .modal-header {
            border-bottom: none;
        }
        .modal-title {
            font-weight: 600;
            color: #333;
        }
    </style>
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay">

    <?php include 'sidebar.php';?>
    <div class="backdrop"></div>

    <main class="flex-shrink-0 main has-footer">
        <?php include 'top_header.php';?>

        <div class="main-container" style="padding-top: 80px;">
            <div class="container">

                <!-- Transfer button -->
                <div class="d-flex justify-content-end mb-3">
                    <a href="transfer-to-distributers.php" class="btn btn-sm btn-default rounded">
                        <i class="fa fa-exchange"></i> Transfer
                    </a>
                </div>

                <?php 
                $sql = "SELECT tc.*, tu.Fname AS DistName
                        FROM tbl_distributer_inv tc 
                        LEFT JOIN tbl_users_bill tu ON tu.id = tc.DistId 
                        WHERE tc.ProductionId = '$user_id' AND ProdType = 0 
                        ORDER BY tc.id DESC";
                $row = getList($sql);

                foreach($row as $result){
                    $invId = $result['id'];
                    $sqlItems = "SELECT * FROM tbl_distributer_stock_temp WHERE InvId = '$invId'";
                    $totalProducts = getRow($sqlItems);

                    $sqlItems2 = "SELECT SUM(Qty) AS TotQty FROM tbl_distributer_stock_temp WHERE InvId = '$invId'";
                    $totalProductsQty = getRecord($sqlItems2);
                ?>
                <div class="card mb-3 status-card shadow-sm">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">
                                <h5>#<?php echo $result['InvNo']; ?></h5>
                                <div><span class="info-label">Date:</span><span class="info-value"><?php echo date("d/m/Y", strtotime($result['StockDate'])); ?></span></div>
                                <div><span class="info-label">Distributer Name:</span><span class="info-value"><?php echo $result['DistName']; ?></span></div>
                                <div><span class="info-label">Total Products:</span><span class="info-value"><?php echo $totalProducts; ?></span></div>
                                <div><span class="info-label">Transfer Qty:</span><span class="info-value"><?php echo $totalProductsQty['TotQty']; ?></span></div>
                            </div>
                            <div class="col-auto">
                                <a href="view-distributer-products.php?id=<?php echo $result['id']; ?>" class="btn btn-success btn-sm rounded-pill px-3 shadow-sm">
                                    <i class="fa fa-eye"></i> View
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>

                <input type="hidden" class="Exp_Id" value="">

                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Are you sure?</h5>
                            </div>
                            <div class="modal-body text-center">
                                <button type="button" class="btn btn-success px-4 mx-2" onclick="delete()">YES</button>
                                <button type="button" class="btn btn-danger px-4 mx-2" data-dismiss="modal">NO</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <?php include 'footer.php';?>
    <?php include 'inc-fr-lists.php';?>
    <?php include 'inc-calendar-lists.php';?>

    <!-- Scripts -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="vendor/swiper/js/swiper.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/color-scheme-demo.js"></script>
    <script src="js/app.js"></script>

    <script>
        function getExpId(id) {
            $('#myModal').modal('show');
            $('.Exp_Id').val(id);
        }
    </script>
</body>
</html>
