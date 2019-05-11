<?php 
include("header.php");
?>
 <section class="content">

        <div class="container-fluid">
            <!-- Exportable Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class = "panel panel-primary">
                            <div class = "panel-heading">
                                <h4>Danh sách tất cả Nhân sự</h4>
                                <a href="add_personnel.php">
                                    <input type="button" value="Thêm Nhân Sự" class="print btn-default" style="margin-right: 80px; width: auto;">
                                </a>
                                <a href="print_all_campus.php">
                                    <input type="button" value="Print" class="print">
                                </a>
                            </div>
                        </div>
                        <div id="print">
                            <div class = "scroll">
                            <div class="body">
                                <table id = "example" class = "stripe" cellspacing = "0" >
                                <thead>
                                    <tr>
                                        <td class="hidden">ID</td>
                                        <td>Họ Tên</td>
                                        <td>Chức vụ</td>
                                        <td>Trình độ</td>
                                        <td>Trường đã học</td>
                                        <td>Tuổi</td>
                                        <td>Giới tính</td>
                                        <td>Tình trạng hôn nhân</td>
                                        <td>Địa chỉ</td>
                                        <td>Ngày sinh</td>
                                        <td>Nơi sinh</td>
                                        <td>SĐT</td>
                                        <td>Ngày bổ nhiệm</td>
                                        <td>Bằng cử nhân</td>
                                        <td>Bằng thạc sĩ</td>
                                        <td>Bằng tiến sĩ</td>
                                        <td>Others</td>
                                        <td>Thâm niên</td>
<!--                                        <td>Eligibility</td>
                                        <td>Plantilla Number</td>-->
                                        <td>Trạng thái công việc</td>
<!--                                        <td>Tin Number</td>-->
<!--                                        <td>Pag-ibig Number</td>-->
<!--                                        <td>GSIS Number</td>-->
                                        <td>Bộ môn</td>
<!--                                        <td>Action</td>-->
                                    </tr>
                                </thead>
                                <tbody>
                                
                                  <?php
                                    include('connect.php');
                                    $display = $con->prepare("SELECT * FROM tbl_personnel LEFT JOIN tbl_position ON tbl_personnel.pos_id =tbl_position.pos_id "
                                            . "LEFT JOIN tbl_gass_rank ON tbl_personnel.gass_id = tbl_gass_rank.gass_id LEFT JOIN tbl_academic_rank ON tbl_personnel.rank_id = tbl_academic_rank.rank_id "
                                            . "LEFT JOIN tbl_department ON tbl_personnel.dept_id = tbl_department.dept_id ORDER BY per_id ASC");
                                    $display->execute();
                                    $fetch = $display->fetchAll();                               

                                      foreach($fetch as $key => $row) { 
                                        $pos_id = $row['pos_id'];
                                        $gass_id = $row['gass_id'];
                                        $rank_id = $row['rank_id'];
                                        $bday = $row["per_date_of_birth"];
                                        $dooa = $row["per_date_of_original_appointment"];
                                        $date = new DateTime($bday);
                                        $date1 = new DateTime($dooa);
                                        $now = new DateTime();


                                        $difference = $date->diff($now)->format('%y');
                                        $length = $date1->diff($now)->format('%y');


                                  ?>
                                  <tr>
                                  <td class="hidden"><?php echo $row['per_id']; ?></td>
                                  <td><?php echo $row['per_lastname']." ".$row['per_firstname']." ".$row['per_middlename']; ?></td>
                                  <td values="<?php echo $row['gass_id']; ?>"><?php echo $row['gass_name']; ?></td>
                                  <td values="<?php echo $row['rank_id']; ?>"><?php echo $row['rank_name']; ?></td>
                                  <td values="<?php echo $row['dept_id']; ?>"><?php echo $row['dept_name']; ?></td>
                                  <td><?php echo $difference;?></td>
                                  <td><?php echo $row['per_gender']; ?></td>
                                  <td><?php echo $row['per_status']; ?></td>
                                  <td><?php echo $row['per_address']; ?></td>
                                  <td><?php echo $row['per_date_of_birth']; ?></td>
                                  <td><?php echo $row['per_place_of_birth']; ?></td>
                                  <td><?php echo $row['per_contact_no']; ?></td>
                                  <td><?php echo $row['per_date_of_original_appointment']; ?></td>
                                  <td><?php echo $row['bs_name']; ?></td>
                                  <td><?php echo $row['ms_name']; ?></td>
                                  <td><?php echo $row['dr_name']; ?></td>
                                  <td><?php echo $row['other_degree']; ?></td>
                                  <td><?php echo $length?></td>
                                  
       
                                  <td><?php echo $row['per_employee_status']; ?></td>
                  
                                  <td><?php echo $row['per_campus'];?></td>
                                  <td>     
                                    <a class="btn btn-success btn-sm" href="edit_personnel.php?per_id=<?php echo $row['per_id']?>">
                                      <span class = "glyphicon glyphicon-pencil" aria-hidden = "true">Edit</span>
                                    </a>                                 
                                  </td>
                                </tr>                           
                                     <?php 
                                     } ?>
                                </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                </div>
             </div>
         </div>
    </div>
</section>

   <script>
    function printDiv() {
        //Get the HTML of div
        var divElements = document.getElementById("print").innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;
        //Reset the page's HTML with div's HTML only
        document.body.innerHTML = "<table></table>" + divElements;
        //Print Page
        window.print();
        //Restore orignal HTML
        document.body.innerHTML = oldPage;

    }
    </script>
<script src="plugins/js/jquery-1.js"></script>
<script src="plugins/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
<?php 
include("script.php");
?>