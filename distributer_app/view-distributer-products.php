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


    <!-- SweetAlert -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css"> -->

    <style>
        /* Product card design */
        .product-card {
            font-family: 'Segoe UI', sans-serif;
            font-size: 14px;
            line-height: 1.6;
            border-radius: 12px;
            transition: all 0.3s ease-in-out;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.15) !important;
        }
        .product-card h5 {
            font-weight: 600;
            color: #222;
            margin-bottom: 8px;
        }
        .product-card .label {
            color: #555;
            font-weight: 500;
        }
        .product-card .value {
            font-weight: 600;
            margin-left: 4px;
            color: #000;
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
        .btn-rounded {
            border-radius: 30px;
            padding: 6px 16px;
            font-weight: 500;
        }
    </style>
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay">

    <?php include 'sidebar.php';?>
    <div class="backdrop"></div>

    <main class="flex-shrink-0 main has-footer">
        <?php include 'top_header.php';?>

        <div class="main-container" style="padding-top:80px;">
            <div class="container">

                <?php
$id = isset($_GET['id']) ? $_GET['id'] : 0;
$sql = "SELECT ts.*, p.ProductName, p.MinQty
        FROM tbl_distributer_stock_temp ts
        INNER JOIN tbl_cust_products2 p ON ts.ProdId = p.id
        WHERE ts.InvId = '$id' AND ts.Status='Cr'";
$rows = getList($sql);

if (!empty($rows)) {
    foreach ($rows as $result) {
        // Determine status display
        $statusText = "Pending";
        $statusClass = "text-warning font-weight-bold";

        if (isset($result['ReceiveStatus']) && $result['ReceiveStatus'] == 'Accepted') {
            $statusText = "Accepted";
            $statusClass = "text-success font-weight-bold";
        } elseif (isset($result['ReceiveStatus']) && $result['ReceiveStatus'] == 'Rejected') {
            $statusText = "Rejected";
            $statusClass = "text-danger font-weight-bold";
        }
?>
    <div class="card mb-3 product-card shadow-sm">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col">
                    <h5>
                        <?php echo htmlspecialchars($result['ProductName']); ?>
                    </h5>
                    <div>
                        <span class="label">Transfer Qty:</span>
                        <span class="value"><?php echo htmlspecialchars($result['Qty']); ?></span>
                    </div>
                    <div>
                        <span class="label">Receive Status:</span>
                        <span class="<?php echo $statusClass; ?>">
                            <?php echo $statusText; ?>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
    }
} else {
    echo '<p class="text-muted">No records found.</p>';
}
?>


                <input type="hidden" id="Exp_Id" value="">

                <!-- Confirmation modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title"><i class="fa fa-exclamation-circle text-danger"></i> Confirm Action</h5>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body text-center">
                                <p>Are you sure you want to delete this record?</p>
                            </div>
                            <div class="modal-footer justify-content-center">
                                <button type="button" class="btn btn-danger btn-rounded px-4" id="confirmDeleteBtn">
                                    <i class="fa fa-trash"></i> Delete
                                </button>
                                <button type="button" class="btn btn-secondary btn-rounded px-4" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Cancel
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <?php include 'footer.php';?>
    <?php //include 'inc-fr-lists.php'; include 'inc-calendar-lists.php';?>

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
        // show modal and set id
        function getExpId(id) {
            $('#Exp_Id').val(id);
            $('#myModal').modal('show');
        }

        // confirm delete handler
        $('#confirmDeleteBtn').on('click', function() {
            var id = $('#Exp_Id').val();
            if (!id) return $('#myModal').modal('hide');
            window.location.href = 'delete-production.php?id=' + encodeURIComponent(id);
        });
    </script>

</body>
</html>
