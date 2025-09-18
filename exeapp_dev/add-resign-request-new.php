<?php session_start();
require_once 'config.php';
require_once 'auth.php';
$PageName = "Resign Request";
$UserId = $_SESSION['User']['id']; ?>
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
    <link href="css/toastr.min.css" rel="stylesheet">
      <script src="js/jquery.min3.5.1.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/toastr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay">
   


    <!-- Begin page content -->
    <main class="flex-shrink-0 main">
        <!-- Fixed navbar -->
        <?php include_once 'back-header.php'; ?> 
        
      <?php 
        
$id = $_GET['id'];
$sql7 = "SELECT * FROM tbl_resign_request WHERE id='$id'";
$res7 = $conn->query($sql7);
$row7 = $res7->fetch_assoc();
$CurrDate = date('Y-m-d');
$start_date = strtotime($JoinDate);
$end_date = strtotime($CurrDate);
$interval = ($end_date - $start_date)/60/60/24;
if($interval > 180){
    $noticeperiod = "1 Month";
}
else{
   $noticeperiod = "15 Days"; 
}
?>


        <div class="main-container">
            <div class="container">
               
                <div class="card">
                  <form id="validation-form" method="post" enctype="multipart/form-data">
   <div class="card-body">
                                    <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>" id="userid">
                                    <input type="hidden" name="action" value="saveResignRequest" id="action">
                                 
                         
                        
                      <h5>Employee Information</h5>

<div class="row">
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="text" name="name" class="form-control" readonly value="<?php echo $FullName;?>">
            <label class="form-control-label">Name</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="text" name="employee_id" class="form-control" readonly>
            <label class="form-control-label">Employee ID</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="text" name="position" class="form-control">
            <label class="form-control-label">Position</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="text" name="location_branch" class="form-control">
            <label class="form-control-label">Location/Branch</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="date" name="date_of_exit" class="form-control">
            <label class="form-control-label">Date of Exit</label>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group float-label active">
            <input type="text" name="interviewer" class="form-control">
            <label class="form-control-label">Interviewer</label>
        </div>
    </div>
</div>

<hr>
 <div class="form-group float-label active">
                            <textarea class="form-control" id="Narration" name="Narration" ></textarea>
                            <label class="form-control-label">Why you Resign? Please Mension</label>                            
                        </div>

                     
                        
                        <div class="form-group float-label active">
                            <select class="form-control" id="NoticePeriod" name="NoticePeriod" required="">
                                                <!--<option selected="" disabled="" value="">Select Status</option>-->
                                                <option value="1 Month">1 Month</option>
                                                <option value="15 Days">15 Days</option>
                                            </select>
                            <label class="form-control-label">Notice Period</label>                            
                        </div>
                        
                        <div class="form-group float-label active">
                            <input type="date" class="form-control" name="LastWorkingDay" id="LastWorkingDay" value="" required>
                            <label class="form-control-label">Last Working Day</label>                            
                        </div>
                        

<hr>
<h5>Section 1: Employment Experience</h5>

<div class="form-group float-label active">
    <select name="employment_duration" class="form-control">
        <option>Less than 6 months</option>
        <option>6 months – 1 year</option>
        <option>1–2 years</option>
        <option>More than 2 years</option>
    </select>
    <label class="form-control-label">How long have you worked with us?</label>
</div>

<div class="form-group float-label active">
    <textarea class="form-control" name="motivation"></textarea>
    <label class="form-control-label">What motivated you to join?</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="enjoyed_most"></textarea>
    <label class="form-control-label">What did you enjoy most?</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="job_challenges"></textarea>
    <label class="form-control-label">What was most challenging?</label>
</div>

<hr>
<h5>Section 2: Work Environment</h5>

<div class="form-group float-label active">
    <select name="work_culture" class="form-control">
        <option>Excellent</option><option>Good</option><option>Fair</option><option>Poor</option>
    </select>
    <label class="form-control-label">Work Culture</label>
</div>
<div class="form-group float-label active">
    <select name="relation_manager" class="form-control">
        <option>Excellent</option><option>Good</option><option>Fair</option><option>Poor</option>
    </select>
    <label class="form-control-label">Relationship with Manager</label>
</div>
<div class="form-group float-label active">
    <select name="relation_team" class="form-control">
        <option>Excellent</option><option>Good</option><option>Fair</option><option>Poor</option>
    </select>
    <label class="form-control-label">Relationship with Team</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="training_support"></textarea>
    <label class="form-control-label">Did you feel supported with training?</label>
</div>

<hr>
<h5>Section 3: Compensation & Benefits</h5>

<div class="form-group float-label active">
    <select name="salary_satisfaction" class="form-control">
        <option>Yes</option><option>No</option>
    </select>
    <label class="form-control-label">Salary Satisfaction</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="meals_fair"></textarea>
    <label class="form-control-label">Meals, shifts, breaks managed fairly?</label>
</div>

<hr>
<h5>Section 4: Reason for Leaving</h5>

<div class="form-group float-label active">
    <select name="reason_for_leaving" class="form-control">
        <option>Better pay elsewhere</option>
        <option>Career growth opportunity</option>
        <option>Work-life balance issues</option>
        <option>Manager / Team concerns</option>
        <option>Relocation / Personal reason</option>
        <option>Other</option>
    </select>
    <label class="form-control-label">Reason for Leaving</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="retain_suggestion"></textarea>
    <label class="form-control-label">What could we have done to retain you?</label>
</div>

<hr>
<h5>Section 5: Suggestions</h5>

<div class="form-group float-label active">
    <textarea class="form-control" name="improve_employee_satisfaction"></textarea>
    <label class="form-control-label">Suggestions for Employee Satisfaction</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="improve_operations"></textarea>
    <label class="form-control-label">Suggestions for Store Operations</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="improve_customer_service"></textarea>
    <label class="form-control-label">Suggestions for Customer Service</label>
</div>

<hr>
<h5>Section 6: Final Remarks</h5>

<div class="form-group float-label active">
    <select name="rejoin_future" class="form-control">
        <option>Yes</option><option>No</option>
    </select>
    <label class="form-control-label">Would you consider rejoining us?</label>
</div>
<div class="form-group float-label active">
    <textarea class="form-control" name="final_comments"></textarea>
    <label class="form-control-label">Any additional comments?</label>
</div>

        
                                     
                      

                   

                       
                        
                        
                                    
                                    <input type="hidden" id="Status" name="Status" value="0">
                                  

<div class="card-footer">
                        <button class="btn btn-block btn-default rounded" type="submit" name="submit" id="submit">Submit</button>
                    </div>
  </div>
                                   
                                </form>
                </div>
            </div>
        </div>
    </main>
<br><br><br><br>
    <!-- footer-->
    
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
      $(document).ready(function() {
     $('#validation-form').on('submit', function(e){
      e.preventDefault();    
     
     $.ajax({  
                url :"ajax_files/ajax_resign_request.php",  
                method:"POST",  
                data:new FormData(this),  
                contentType:false,  
                processData:false,  
                 beforeSend:function(){
     $('#submit').attr('disabled','disabled');
     $('#submit').text('Please Wait...');
    },
                success:function(data){ 
                    //alert(data);exit();
                // console.log(data);exit();
                     
                    if(data == 1){
                    setTimeout(function () { 
swal({
  title: "Thank you",
  text: "Your resign request successfully submitted.",
  type: "success",
  confirmButtonText: "OK"
},
function(isConfirm){
  if (isConfirm) {
          window.location.href="view-resign-request.php";
  }
}); });
                        
                     }
                    
                    
                     
                      $('#submit').attr('disabled',false);
                    $('#submit').text('Update');
                }  
           })
     });

            
        });
    </script>
   
</body>

</html>
