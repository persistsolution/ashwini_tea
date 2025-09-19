<?php session_start();
require_once 'config.php';
$user_id = $_SESSION['User']['id'];
$PageName = "My Expenses";
$Page = "Recharge";
$WallMsg = "NotShow"; 
$url = "home.php";
$uid = $_REQUEST['uid']; 
if($_REQUEST['uid'] == ''){
$sql11 = "SELECT * FROM tbl_users_bill WHERE id='$user_id'";
$row = getRecord($sql11);
$_SESSION['User'] = $row;
}   
else{
$sql11 = "SELECT * FROM tbl_users_bill WHERE id='$uid'";
$row = getRecord($sql11);
$_SESSION['User'] = $row;
}


function RandomStringGenerator($n)
    {
        $generated_string = "";   
        $domain = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        $len = strlen($domain);
        for ($i = 0; $i < $n; $i++)
        {
            $index = rand(0, $len - 1);
            $generated_string = $generated_string . $domain[$index];
        }
        return $generated_string;
    } 
    
    
$sql = "SELECT * FROM tbl_cust_products2 WHERE code IS NULL OR code = ''";
$row = getList($sql);
foreach($row as $result){
    $n = 10;
    $Code = RandomStringGenerator($n); 
    $Code2 = $Code . $result['id'];
    $modified_time = gmdate('Y-m-d H:i:s.') . gettimeofday()['usec'];
    $sql2 = "UPDATE tbl_cust_products2 SET code='$Code2', modified_time='$modified_time' WHERE id='" . $result['id'] . "'";
    $conn->query($sql2);
}
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
    <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
    <link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png">

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
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet" />
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

 
 <style>
    .autocomplete-list3 {
            border: 1px solid #ccc;
            max-height: 150px;
            overflow-y: auto;
            position: absolute;
            background-color: white;
            z-index: 1000;
            width: 100%;
            margin-top: 35px;
        }
        
        .autocomplete-list2 {
            border: 1px solid #ccc;
            max-height: 150px;
            overflow-y: auto;
            position: absolute;
            background-color: white;
            z-index: 1000;
            width: 100%;
            margin-top: 35px;
        }

        .autocomplete-list {
            border: 1px solid #ccc;
            max-height: 150px;
            overflow-y: auto;
            position: absolute;
            background-color: white;
            z-index: 1000;
            width: 100%;
        }

        .autocomplete-item {
            padding: 8px;
            cursor: pointer;
        }

        .autocomplete-item:hover,
        .autocomplete-item.active {
            background-color: #98e6ed;
        }
    </style>

        <div class="main-container" style="padding-top: 80px;">
            <div class="container">
              
                <div class="card mb-4">
                    <form id="validation-form" method="post" enctype="multipart/form-data" action="save-distributer-stock.php">
                        <div class="card-body">
<div class="form-row">

 
    <div class="form-group col-md-12">
          <label>Distributers <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="DistName" id="DistName" placeholder="Search Distributer Name..." value="" autofocus onclick="this.select();">
          <div id="autocomplete-list2" class="autocomplete-list" style="display: none; position: absolute;"></div>
        </div>

        <!-- Vendor ID -->
        <div class="form-group col-md-6">
          <label>Distributer ID <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="DistId" id="DistId" value="<?php echo $row7['DistId']; ?>" readonly>
        </div>

    <div class="form-group col-md-12">
          <label>Product <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="ProdName" id="ProdName" placeholder="Search Product Name..." value="" autofocus onclick="this.select();">
          <div id="autocomplete-list" class="autocomplete-list" style="display: none; position: absolute;"></div>
        </div>

        <!-- Vendor ID -->
        <div class="form-group col-md-6 col-3">
          <label>Prod ID <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="ProdId" id="ProdId" value="<?php echo $row7['ProdId']; ?>" readonly>
        </div>

        <div class="form-group col-md-6 col-5">
          <label>Available Stock <span class="text-danger">*</span></label>
          <input type="text" class="form-control" name="AvailStock" id="AvailStock" value="<?php echo $row7['ProdId']; ?>" readonly>
        </div>

    <div class="form-group col-md-2 col-4">
<label class="form-label">Transfer Stock </label>
<input type="text" name="Qty" id="Qty" class="form-control" placeholder="" value="<?php echo $row7["Qty"]; ?>" autocomplete="off" >
<div class="clearfix"></div>
    </div>
    
   


    <input type="hidden" name="code" id="code" class="form-control" placeholder="" value="" autocomplete="off" readonly>
    <div class="form-group col-md-2 col-6">
    <button type="button" id="add" class="btn btn-success btn-finish" onclick="addToCart()">Add</button>
</div>

<div class="form-row">

    <div class="col-lg-12" id="showcart">
    
        
</div>

</div>

<div class="form-group col-md-6">
<label class="form-label">Date <span class="text-danger">*</span></label>
<input type="date" name="StockDate" id="StockDate" class="form-control" placeholder="" value="<?php echo date('Y-m-d'); ?>" autocomplete="off" required readonly>
<div class="clearfix"></div>
    </div>
    
<div class="form-group col-md-6">
<label class="form-label">Total Qty </label>
<input type="text" name="TotQty" id="TotQty" class="form-control" placeholder="" value="<?php echo $row7["TotQty"]; ?>" autocomplete="off" readonly>
<div class="clearfix"></div>
    </div> 

    
<div class="form-group col-md-12">
   <label class="form-label">Remark</label>
     <textarea name="Narration" id="Narration" class="form-control"  
                                                ><?php echo $row7['Narration']; ?></textarea>
    <div class="clearfix"></div>
 </div>
 


 </div>




<button type="submit" name="submit" id="submit" class="btn btn-primary btn-finish">Submit</button>
<span id="error_msg" style="color:red;"></span>
</div>
</form>
                    
                </div>


            </div>
        </div>
    </main>

<?php include 'footer.php';?>
  
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
 $(function() {
  $('.selectpicker').selectpicker();
});
</script>

<script>
let currentFocus = -1;

        $(document).ready(function() {
            $("#ProdName").on("input", function() {
                let ProdName = $(this).val();
                if (ProdName === '') {
    $('#ProdId').val('');   // properly clear hidden product id
    $('#PurchasePrice').val(''); 
     $('#SellPrice').val(''); 
    
    
}
                let CatId = $('#CatId').val();
                let SubCatId = $('#SubCatId').val();

                if (ProdName.length === 0) {
                    $("#autocomplete-list").hide();
                    return;
                }
                var action = "getGodownProdList";
                $.ajax({
                    url: "ajax_files/ajax_dropdown.php",
                    method: "POST",
                    data: {
                        action: action,
                        ProdName: ProdName,
                        CatId:CatId,
                        SubCatId:SubCatId
                    },
                    success: function(data) {
                        console.log(data);
                        $("#autocomplete-list").empty().show();
                        currentFocus = -1;

                        if (data.length === 0) {
                            $("#autocomplete-list").hide();
                            return;
                        }

                        data.forEach(function(item) {
                            $("#autocomplete-list").append(`<div class="autocomplete-item" onclick="getAvailProdStock(${item.id})">${item.ProductName} (${item.MinPrice})</div>`);
                        });

                        $(".autocomplete-item").on("click", function() {
                            $("#ProdName").val($(this).text());
                            $("#autocomplete-list").hide();
                        });
                    }
                });
            });

            $("#ProdName").on("keydown", function(e) {
                let items = $(".autocomplete-item");

                if (e.key === "ArrowDown") {
                    currentFocus++;
                    if (currentFocus >= items.length) currentFocus = 0;
                    setActive(items);
                    e.preventDefault();
                } else if (e.key === "ArrowUp") {
                    currentFocus--;
                    if (currentFocus < 0) currentFocus = items.length - 1;
                    setActive(items);
                    e.preventDefault();
                } else if (e.key === "Enter") {
                    e.preventDefault();
                    if (currentFocus > -1 && items[currentFocus]) {
                        items.eq(currentFocus).click();
                    }
                }
            });

            function setActive(items) {
                items.removeClass("active");
                if (currentFocus >= 0 && currentFocus < items.length) {
                    items.eq(currentFocus).addClass("active");
                    items.eq(currentFocus)[0].scrollIntoView({
                        block: "nearest"
                    });
                }
            }

            $(document).click(function(e) {
                if (!$(e.target).closest("#ProdName, #autocomplete-list").length) {
                    $("#autocomplete-list").hide();
                }
            });
        });



        let currentFocus2 = -1;

        $(document).ready(function() {
            $("#DistName").on("input", function() {
                let DistName = $(this).val();
                if (DistName === '') {
    $('#DistId').val('');   // properly clear hidden product id
    
    
    
}
               
                if (DistName.length === 0) {
                    $("#autocomplete-list2").hide();
                    return;
                }
                var action = "getDistributerList";
                $.ajax({
                    url: "ajax_files/ajax_dropdown.php",
                    method: "POST",
                    data: {
                        action: action,
                        DistName: DistName
                    },
                    success: function(data) {
                        console.log(data);
                        $("#autocomplete-list2").empty().show();
                        currentFocus2 = -1;

                        if (data.length === 0) {
                            $("#autocomplete-list2").hide();
                            return;
                        }

                        data.forEach(function(item) {
                            $("#autocomplete-list2").append(`<div class="autocomplete-item" onclick="getDistDetails(${item.id})">${item.Fname} (${item.Zone})</div>`);
                        });

                        $(".autocomplete-item").on("click", function() {
                            $("#DistName").val($(this).text());
                            $("#autocomplete-list2").hide();
                        });
                    }
                });
            });

            $("#DistName").on("keydown", function(e) {
                let items = $(".autocomplete-item");

                if (e.key === "ArrowDown") {
                    currentFocus2++;
                    if (currentFocus2 >= items.length) currentFocus2 = 0;
                    setActive(items);
                    e.preventDefault();
                } else if (e.key === "ArrowUp") {
                    currentFocus2--;
                    if (currentFocus2 < 0) currentFocus2 = items.length - 1;
                    setActive(items);
                    e.preventDefault();
                } else if (e.key === "Enter") {
                    e.preventDefault();
                    if (currentFocus2 > -1 && items[currentFocus2]) {
                        items.eq(currentFocus2).click();
                    }
                }
            });

            function setActive(items) {
                items.removeClass("active");
                if (currentFocus2 >= 0 && currentFocus2 < items.length) {
                    items.eq(currentFocus2).addClass("active");
                    items.eq(currentFocus2)[0].scrollIntoView({
                        block: "nearest"
                    });
                }
            }

            $(document).click(function(e) {
                if (!$(e.target).closest("#DistName, #autocomplete-list2").length) {
                    $("#autocomplete-list2").hide();
                }
            });
        });
        
         function getDistDetails(id){
    $('#DistId').val(id);
 }

 function addToCart(){
     var action = "addToCart";
     var code = $('#code').val();
     var ProdId = $('#ProdId').val();
     var quantity = $('#Qty').val();
     var PurchasePrice = $('#PurchasePrice').val();
     var SellPrice = $('#SellPrice').val();
     if(ProdId==''){
         alert("Please Select Product");
     }
     else if(quantity==''){
         alert("Please Enter Qty");
     }
     else{
            $.ajax({
                url: "ajax_files/ajax_production.php",
                method: "POST",
                data: {
                    action: action,
                    code: code,
                    quantity:quantity,
                    id:ProdId,
                    PurchasePrice:PurchasePrice,
                    SellPrice:SellPrice
                },
                beforeSend:function(){
     $('#add').attr('disabled','disabled');
     $('#add').text('Please Wait...');
    },
                success: function(data) {
                  //alert(data);
                  console.log(data);
                  displayCart();
                 $('#add').attr('disabled',false);
                 $('#add').text('Add');
                 $('#code').val('');
                 $('#ProdId').val(0).attr("selected",true);
                 $('#Qty').val('');
                 $('#PurchasePrice').val('');
                 $('#SellPrice').val('');
                 $('#AvailStock').val('');
                 $('#ProdName').val('');
                    
                }
            });
     }
 }
 
 function displayCart(){
     var action = "displayCart";
            $.ajax({
                url: "ajax_files/ajax_production.php",
                type: "POST",
                data: {
                    action: action
                },
                success: function(data) {
                    console.log(data);
                    $('#showcart').html(data);
                    calTotalQty();
                },

            });
 }
 
 function calTotalQty(){
      var action = "calTotalQty";
            $.ajax({
                url: "ajax_files/ajax_production.php",
                type: "POST",
                data: {
                    action: action
                },
                success: function(data) {
                    console.log(data);
                    $('#TotQty').val(data);
                },

            });
 }
 
  function delete_prod(code) {
            if (confirm("Are you sure you want to delete Record?")) {
                var action = "delete_cart_prod";
                $.ajax({
                    url: "ajax_files/ajax_production.php",
                    type: "POST",
                    data: {
                        action: action,
                        code: code
                    },
                    success: function(data) {
                        console.log(data);
                        displayCart();
                        
                    },

                });
            }
        }
 function getProdDetails(id){
      var action = "getProdDetails";
            $.ajax({
                url: "ajax_files/ajax_production.php",
                method: "POST",
                data: {
                    action: action,
                    id: id
                },
                success: function(data) {
                  //alert(data);
                  console.log(data);
                  var res = JSON.parse(data);
                    $('#PurchasePrice').val(res.PurchasePrice);
                    $('#SellPrice').val(res.MinPrice);
                    $('#code').val(res.code);
                    
                }
            });
 }


  function getAvailProdStock(id){
      $('#ProdId').val(id);
      getProdDetails(id);
     var action = "getAvailGodownProdStock";
            $.ajax({
                url: "ajax_files/ajax_raw_stock_2025.php",
                method: "POST",
                data: {
                    action: action,
                    id: id
                },
                success: function(data) {
                  //alert(data);
                  console.log(data);
                    $('#AvailStock').val(data);
                    
                }
            });
  }
    function getSubTotal(){
     var sum = 0;
      $(".txt").each(function() {
      if(!isNaN(this.value) && this.value.length!=0) {
        sum += parseFloat(this.value);
      }
   });
     $('#TotQty').val(sum);
   
    }

    $(document).ready(function(){
    //   var ProdId = $('#ProdId').val();
    //   getAvailProdStock(ProdId);


  }); 
</script>
   
</body>

</html>
