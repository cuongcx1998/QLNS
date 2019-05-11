<?php include('header.php'); ?>
<link rel="stylesheet" type="text/css" href="css/style2.css">
<div class="dashboard-top">
  <div class="row clearfix">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-pink hover-expand-effect">
                        <div class="icon">
                            <i class="glyphicon glyphicon-user"></i>
                        </div>
                        <div class="content">
                              <?php
                                include('connect.php');
                                 $permanent = $con->prepare("SELECT COUNT(*) FROM tbl_personnel where per_employee_status = 'Bien che'");
                                    $permanent->execute();
                                    $fetch = $permanent->fetchAll();

                                foreach($fetch as $key => $row) { 
                                   $total = $row['COUNT(*)'];

                                }?>
                            <div class="text">Biên chế</div>
                            <div class="number count-to"><?php echo $total; ?></div>
                        </div>
                    </div>
                </div>

                
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-orange hover-expand-effect">
                        <div class="icon">
                            <i class="glyphicon glyphicon-user"></i>
                        </div>
                        <div class="content">
                            <?php
                                include('connect.php');
                                 $jobOrder = $con->prepare("SELECT COUNT(*) FROM tbl_personnel where per_employee_status = 'Hop dong'");
                                    $jobOrder->execute();
                                    $fetch3 = $jobOrder->fetchAll();

                                foreach($fetch3 as $key => $row3) { 
                                   $total3 = $row3['COUNT(*)'];

                              }?>
                            <div class="text">Hợp đồng</div>
                            <div class="number count-to"><?php echo $total3; ?></div>
                        </div>
                    </div>
                </div>
            </div>
</div>
    <div class="pie-report" style="float: right;">
        <script src="js/jquery.min.js"></script>
        <?php include('script.php'); ?> 

        
        <?php
          include('connect.php');
          $date = date("Y", strtotime("+ 8 HOURS"));
          $qtalisay = $con->prepare("SELECT COUNT('per_campus') FROM `tbl_personnel` WHERE `per_campus` = 'Cong nghe phan mem'") or die(mysqli_error());
          $qtalisay->execute();
          $talisay = $qtalisay->fetchAll();
          foreach($talisay as $key => $row) { 
           $total = $row["COUNT('per_campus')"];

            }?>



          <?php
          $qalijis = $con->query("SELECT COUNT('per_campus') FROM `tbl_personnel` WHERE `per_campus` = 'Khoa hoc may tinh'") or die(mysqli_error());
          $qalijis->execute();
          $alijis = $qalijis->fetchAll();
          foreach($alijis as $key => $row) { 
           $total1 = $row["COUNT('per_campus')"];

            }?>


          <?php
          $qbinalbagan = $con->query("SELECT COUNT('per_campus') FROM `tbl_personnel` WHERE `per_campus` = 'Ki thuat may tinh'") or die(mysqli_error());
          $qbinalbagan->execute();
          $binalbagan = $qbinalbagan->fetchAll();
          foreach($binalbagan as $key => $row) { 
           $total2 = $row["COUNT('per_campus')"];

            }?>



          <?php
          $qftown = $con->prepare("SELECT COUNT('per_campus') FROM `tbl_personnel` WHERE `per_campus` = 'He thong thong tin'") or die(mysqli_error());
          $qftown->execute();
          $fortunetowne = $qftown->fetchAll();
          foreach($fortunetowne as $key => $row) { 
           $total3 = $row["COUNT('per_campus')"];

            }?>
        
        

            <!-- Educational Qualification -->
            <!-- CNPM -->
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Cong nghe phan mem' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $cnpmgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Cong nghe phan mem' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Pho giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $cnpmpgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Cong nghe phan mem' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Tien si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $cnpmts = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Cong nghe phan mem' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Thac si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $cnpmths = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>

            <!-- KHMT -->
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Khoa hoc may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $khmtgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Khoa hoc may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Pho giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $khmtpgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Khoa hoc may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Tien si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $khmtts = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Khoa hoc may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Thac si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $khmtths = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>

            <!-- KTMT -->
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Ki thuat may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $ktmtgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Ki thuat may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Pho giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $ktmtpgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Ki thuat may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Tien si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $ktmtts = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'Ki thuat may tinh' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Thac si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $ktmtths = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>

            <!-- HTTT -->
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'He thong thong tin' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $htttgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'He thong thong tin' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Pho giao su'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $htttpgs = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'He thong thong tin' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Tien si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $htttts = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            <?php
                include('connect.php');
                 $display = $con->prepare("SELECT COUNT(tbl_academic_rank.rank_id)FROM `tbl_personnel`,`tbl_academic_rank` WHERE tbl_personnel.per_campus = 'He thong thong tin' and tbl_personnel.per_id<>0 AND tbl_personnel.rank_id = tbl_academic_rank.rank_id and tbl_academic_rank.rank_name='Thac si'");
                    $display->execute();
                    $fetch = $display->fetchAll();

                foreach($fetch as $key => $row) { 
                   $htttths = $row['COUNT(tbl_academic_rank.rank_id)'];
            }?>
            
        <script src="js/jquery.canvasjs.min.js"></script>
            <script type="text/javascript"> 
              window.onload = function() { 
                $("#chartContainer").CanvasJSChart({ 
                  title: { 
                    
                  }, 
                  axisY: { 
                    title: "Teachers" 
                  }, 
                  legend :{ 
                    verticalAlign: "center", 
                    horizontalAlign: "left" 
                  }, 
                  data: [ 
                  { 
                    type: "pie", 
                    showInLegend: true, 
                    toolTipContent: "{label} <br/> {y}", 
                    indexLabel: "{y}", 
                    dataPoints: [ 
                      { label: "CNPM",  y: 
                        <?php 
                          if($talisay == ""){
                              echo 0;
                          }else{
                            echo $total;
                          }
                        ?>, legendText: "Công nghệ phần mềm"}, 
                      { label: "KHMT",  y: 
                        <?php 
                          if($alijis == ""){
                            echo 0;
                          }else{
                            echo $total1;
                          } 
                        ?>, legendText: "Khoa học máy tính"},
                      { label: "KTMT",  y: 
                        <?php 
                          if($binalbagan == ""){
                            echo 0;
                          }else{
                            echo $total2;
                          } 
                        ?>, legendText: "Kĩ thuật máy tính"},
                      { label: "HTTT",  y: 
                        <?php 
                          if($fortunetowne == ""){
                            echo 0;
                          }else{
                          echo $total3;
                          }
                        ?>, legendText: "Hệ thống thông tin"}
                    ] 
                  } 
                  ] 
                });
           


        // Educational Qualification
        var chart1 = new CanvasJS.Chart("bar2chartContainer",
            {
              title:{
                text: ""
              },
              animationEnabled: true,
              legend: {
                cursor:"pointer",
                itemclick : function(e) {
                  if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                      e.dataSeries.visible = false;
                  }
                  else {
                      e.dataSeries.visible = true;
                  }
                  chart1.render();
                }
              },
              axisY: {
                title: ""
              },
              toolTip: {
                shared: true,  
                content: function(e){
                  var str = '';
                  var total = 0 ;
                  var str3;
                  var str2 ;
                  for (var i = 0; i < e.entries.length; i++){
                    var  str1 = "<span style= 'color:"+e.entries[i].dataSeries.color + "'> " + e.entries[i].dataSeries.name + "</span>: <strong>"+  e.entries[i].dataPoint.y + "</strong> <br/>" ; 
                    total = e.entries[i].dataPoint.y + total;
                    str = str.concat(str1);
                  }
                  str2 = "<span style = 'color:DodgerBlue; '><strong>"+e.entries[0].dataPoint.label + "</strong></span><br/>";
                  str3 = "<span style = 'color:Tomato '>Total: </span><strong>" + total + "</strong><br/>";
                  
                  return (str2.concat(str)).concat(str3);
                }

              },
              data: [
              {        
                type: "bar",
                showInLegend: true,
                name: "Giáo sư",
                color: "#779ECB",
                dataPoints: [
                { y: <?php echo $ktmtgs; ?>, label: "KTMT"},        
                { y: <?php echo $khmtgs; ?>, label: "KHMT"},              
                { y: <?php echo $htttgs; ?>, label: "HTTT"},
                { y: <?php echo $cnpmgs; ?>, label: "CNPM"}
                ]
              },
              {        
                type: "bar",
                showInLegend: true,
                name: "Phó Giáo Sư",
                color: "#FF6961",          
                dataPoints: [
                { y: <?php echo $ktmtpgs; ?>, label: "KTMT"},        
                { y: <?php echo $khmtpgs; ?>, label: "KHMT"},         
                { y: <?php echo $htttpgs; ?>, label: "HTTT"},
                { y: <?php echo $cnpmpgs; ?>, label: "CNPM"}
                ]
              },
              {        
                type: "bar",
                showInLegend: true,
                name: "Tiến sĩ",
                color: "#77DD77",
                dataPoints: [
                { y: <?php echo $ktmtts; ?>, label: "KTMT"},    
                { y: <?php echo $khmtts; ?>, label: "KHMT"},              
                { y: <?php echo $htttts; ?>, label: "HTTT"},
                { y: <?php echo $cnpmts; ?>, label: "CNPM"}
                ]
              },
              {        
                type: "bar",
                showInLegend: true,
                name: "Thạc sĩ",
                color: "brown",
                dataPoints: [
                { y: <?php echo $ktmtths; ?>, label: "KTMT"},    
                { y: <?php echo $khmtths; ?>, label: "KHMT"},              
                { y: <?php echo $htttths; ?>, label: "HTTT"},
                { y: <?php echo $cnpmths; ?>, label: "CNPM"}
                ]
              }
              
              

              ]
            });

        chart1.render();
              }
            </script>
        </div>
    <div id = "content" style="margin-bottom: 15px !important;">
        <br />
        <br />
        <br />
        <div class = "">
        <div id="chartContainer" style="height: 400px; width: 75%; float: right; margin-right: 10px; margin-top: 43px;"></div> 
        </div>
        
        <div id="bar2chartContainer" style="height: 300px; width: 75%; float: right; margin-top: 20px; margin-right: 10px;">
        </div>
    </div>
        </body>
</html>