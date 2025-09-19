<?php
session_start();
require_once 'config.php';

// Safe session/request guards
$user_id = isset($_SESSION['User']['id']) ? $_SESSION['User']['id'] : 0;
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : '';
if ($uid == '') {
    $sql11 = "SELECT * FROM tbl_users WHERE id='$user_id'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
} else {
    $sql11 = "SELECT * FROM tbl_users WHERE id='$uid'";
    $row = getRecord($sql11);
    $_SESSION['User'] = $row;
}

if (isset($_REQUEST['frid']) && $_REQUEST['frid'] !== '') {
    $_SESSION['FranchiseId'] = $_REQUEST['frid'];
}

$FranchiseId = isset($_SESSION['FranchiseId']) ? $_SESSION['FranchiseId'] : 0;
$sql55 = "SELECT * FROM tbl_users WHERE id='$FranchiseId'";
$row55 = getRecord($sql55);
$PageName = "My Expenses";
$Page = "Recharge";
?>
<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title><?php echo $Proj_Title; ?></title>

    <!-- manifest meta -->
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/ashwini_tea/production_app/img/favicon180.png" sizes="180x180">
    <link rel="icon" href="/ashwini_tea/production_app/img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/ashwini_tea/production_app/img/favicon16.png" sizes="16x16" type="image/png">

    <!-- Material icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&amp;display=swap" rel="stylesheet">

    <!-- swiper CSS -->
    <link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" id="style">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">

    <style>
    /* Compact product card styles: moved to head for cleanliness */
    .product-card { font-family: 'Segoe UI', sans-serif; font-size:14px; line-height:1.6; }
    .product-card h5 { font-weight:600; color:#000; margin-bottom:8px; }
    .product-card .label { color:#333; font-weight:500; }
    .product-card .value { font-weight:600; margin-left:4px; }
    .product-card .status-approved { color:green; }
    .product-card .status-rejected { color:red; }
    .product-card .status-pending { color:orange; }
    </style>
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay">



    <!-- Begin page content -->
    <?php include 'sidebar.php';?>
    <div class="backdrop"></div>


    <!-- Begin page content -->
    <main class="flex-shrink-0 main has-footer">
        <!-- Fixed navbar -->

        <?php include 'top_header.php';?>

        <!-- page content start -->



        <div class="main-container" style="padding-top:80px;">
            <div class="container">

                <?php
                $id = isset($_GET['id']) ? $_GET['id'] : 0;
                $sql = "SELECT ts.*, p.ProductName, p.MinQty
                        FROM tbl_production_stock ts
                        INNER JOIN tbl_cust_products2 p ON ts.ProdId = p.id
                        WHERE ts.InvId = '$id' AND ts.Status='Cr'";
                $rows = getList($sql);

                if (!empty($rows)) {
                    foreach ($rows as $result) {
                ?>
                <div class="card mb-3 product-card shadow-sm">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h5><?php echo htmlspecialchars($result['ProductName']); ?></h5>
                                <div>
                                    <span class="label">Production Qty:</span>
                                    <span class="value"><?php echo htmlspecialchars($result['Qty']); ?></span>
                                </div>
                            </div>
                            <div class="col-auto d-flex align-items-center">
                                <!-- actions placeholder -->
                            </div>
                        </div>
                    </div>
                </div>
                <?php }
                } else {
                    echo '<p class="text-muted">No production records found.</p>';
                }

                ?>

                <input type="hidden" id="Exp_Id" value="">

            <!-- Confirmation modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Confirm Action</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete this record?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" id="confirmDeleteBtn">Delete</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>

            </div>
        </div>
    </main>

    <?php include 'footer.php';?>
    <?php include 'inc-fr-lists.php'; include 'inc-calendar-lists.php';?>
    <!-- Required jquery and libraries -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- cookie js -->
    <script src="js/jquery.cookie.js"></script>

    <!-- Swiper slider  js-->
    <script src="vendor/swiper/js/swiper.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="js/main.js"></script>
    <script src="js/color-scheme-demo.js"></script>


    <!-- page level custom script -->
    <script src="js/app.js"></script>
    <script>
    // show modal and set id
    function getExpId(id) {
        $('#Exp_Id').val(id);
        $('#myModal').modal('show');
    }

    // confirm delete handler (sends to a deletion endpoint or perform AJAX)
    $('#confirmDeleteBtn').on('click', function() {
        var id = $('#Exp_Id').val();
        if (!id) return $('#myModal').modal('hide');

        // Example: redirect to delete handler (replace with your actual endpoint)
        window.location.href = 'delete-production.php?id=' + encodeURIComponent(id);
    });
    </script>

</body>

</html>