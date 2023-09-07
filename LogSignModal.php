 <!-- sign up modal -->
 <div class="modal fade" id="smyModal" tabindex="-1">
 
 <div class="modal-dialog" >
  <div class="modal-content">
    <div class="modal-header">
     
      <div class="modal-body">
         
              <!-- Nav tabs -->

              <ul class="nav nav-pills">
                  <li class="active"><a class="btn btn-default check_out" href="#home" data-toggle="tab">Đăng Nhặp</a>
                  </li>
                  <li><a class="btn btn-default check_out" href="#profile" data-toggle="tab">Đăng Ký</a>
                  </li>
                  
              </ul>

              <!-- Tab panes  login panel-->
              <div class="tab-content">
                  <div class="tab-pane fade in active" id="home">
                      <!-- <h4>Login Tab</h4>  -->
                       <div class="panel panel-pup">
                        <div class="panel-heading">
                            Thông tin đăng nhập
                        </div>
                        <div class="panel-body">

                           <form class="form-horizontal span6" name=""  action="login.php" method="POST">
                              <input class="proid" type="hidden" name="proid" id="proid" value="">
                                <div class="form-group">
                                  <div class="col-md-10">
                                    <label class="col-md-4 control-label" for=
                                    "U_USERNAME">Tên tài khoản:</label>
                                    
                                    <div class="col-md-8">
                                       <input   id="U_USERNAME" name="U_USERNAME" placeholder="Tên tài khoản" type="text" class="form-control input-sm" > 
                             
                                    </div>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <div class="col-md-10">
                                    <label class="col-md-4 control-label" for=
                                    "U_PASS">Mật khẩu:</label>
                                    
                                    <div class="col-md-8">
                                     <input name="U_PASS" id="U_PASS" placeholder="Mật khẩu" type="password" class="form-control input-sm">
                            
                                    </div>
                                  </div>
                                </div>

                                  <div class="form-group">
                                  <div class="col-md-10">
                                    <label class="col-md-4 control-label" for=
                                    "FIRSTNAME"> </label>
                                    
                                    <div class="col-md-8">
                                    <button type="submit" id="modalLogin" name="modalLogin" class="btn btn-pup"><span class="glyphicon glyphicon-log-in "></span>Đăng nhập</button> 
                                     <button class="btn btn-default" data-dismiss="modal" type="button">Tắt</button> 
                                    </div>
                                  </div>
                                </div>

 
                            </form>

                       </div>
                        <div class="panel-footer">
                             <p align="left">&copy; <a href="#">NPIF Source Code</a></p>
                        </div>
                    </div> 
                  </div>
                  <!-- end login panel -->

                  <!-- sign in panel -->
                  <div class="tab-pane fade" id="profile">
                      <!-- <h4>Customer Details</h4>  --> 

                           <form  class="form-horizontal span6" action="customer/controller.php?action=add" onsubmit="return personalInfo();" name="personal" method="POST" enctype="multipart/form-data">
                                <div class="panel panel-pup">
                                    <div class="panel-heading">
                                       Thông tin khách hàng
                                    </div>
                                     <div class="panel-body">
                                      <input class="proid" type="hidden" name="proid" id="proid" value="">
                                      <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "FNAME">Tên:</label>
                                          <!-- <input  id="CUSTOMERID" name="CUSTOMERID"  type="HIDDEN" value="<?php echo $res->AUTO; ?>">  -->
                                          <div class="col-md-8">
                                             <input class="form-control input-sm" id="FNAME" name="FNAME" placeholder=
                                                "Nhập tên" type="text" value="">
                                          </div>
                                        </div>
                                      </div>

                                      <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "LNAME">Họ:</label>

                                          <div class="col-md-8">
                                             <input class="form-control input-sm" id="LNAME" name="LNAME" placeholder=
                                                "Họ" type="text" value="">
                                          </div>
                                        </div>
                                      </div>

                                       <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "GENDER">Giới tính:</label>

                                          <div class="col-md-8">
                                            <input  id="GENDER" name="GENDER" placeholder=
                                                "Gender" type="radio" checked="true" value="Male"><b> Nam </b>
                                                <input   id="GENDER" name="GENDER" placeholder=
                                                "Gender" type="radio" value="Female"> <b> Nữ </b>
                                          </div>
                                        </div>
                                      </div>

                                       <div class="form-group">
                                            <div class="col-md-10">
                                              <label class="col-md-4 control-label" for=
                                              "CITYADD">Tỉnh/Thành Phố:</label>

                                              <div class="col-md-8">
                                                 <input class="form-control input-sm" id="CITYADD" name="CITYADD" placeholder=
                                                    "Tỉnh/Thành Phố" type="text" value="">
                                              </div>
                                            </div>
                                          </div>
 
                                  
                                      <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "CUSUNAME">Tên tài khoản:</label>

                                          <div class="col-md-8">
                                             <input class="form-control input-sm" id="CUSUNAME" name="CUSUNAME" placeholder=
                                                "Tên tài khoản" type="text" value="">
                                          </div>
                                        </div>
                                      </div> 
                                      
                                       <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "CUSPASS">Mật Khẩu:</label>

                                          <div class="col-md-8">
                                             <input class="form-control input-sm" id="CUSPASS" name="CUSPASS" placeholder=
                                                "Mật khẩu" type="password" value=""><span></span>
                                          </div>
                                        </div>
                                      </div>

                                      <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "PASS"></label>

                                          <div class="col-md-8">
                                          <p>Chú Ý</p>
                                            Mật khẩu phải ít nhất từ 8 đến 15 kí tự. Chỉ chữ cái, chữ số, dấu gạch dưới và ký tự đầu tiên phải là một chữ cái.
                                         </div> 
                                        </div>
                                      </div> 
 
                                      <div class="form-group">
                                        <div class="col-md-10">
                                          <label class="col-md-4 control-label" for=
                                          "PHONE">Số điện thoại liên lạc:</label>

                                          <div class="col-md-8">
                                             <input class="form-control input-sm" id="PHONE" name="PHONE" placeholder=
                                                "+84 " type="number" value="">
                                          </div>
                                        </div>
                                      </div>

                          
                                      
                                       <div class="form-group">
                                        <div class="col-md-10">
                                           <label class="col-md-4" align = "right"for=
                                          "image"></label>
                                          <div class="col-md-8">
                                        <p>  Tôi <input type="checkbox" id="conditionterms" name="conditionterms" value="checkbox" />
                                           <small>Đồng ý <a class="toggle-modal"  onclick=" OpenPopupCenter('terms.php','Terms And Codition','600','600')"  ><b>TERMS AND CONDITION</b></a> of NPIF Source Code.</small>
                                           
                                          </div>
                                        </div>
                                      </div> 

                                      <div class="form-group">
                                        <div class="col-md-10">
                                           <label class="col-md-4" align = "right"for=
                                          "image"></label>
                                          <div class="col-md-8">
                                            <input type="submit"  name="submit"  value="Sign Up"  class="submit btn btn-pup"  />
                                             <button class="btn btn-default" data-dismiss="modal" type=
                                                "button">Tắt</button> 
                                          </div>
                                        </div>
                                      </div> 

                                        

                                     </div>
                                    <div class="panel-footer">
                                        <p align="left">&copy; <a href="#">NPIF Source Code</a></p>
                                    </div> 
                            </div> 
                            <!-- end panel sign up -->
                        </form>  
                   </div> 
              </div>
         
              
          </div> <!-- /.modal-body -->
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
  </div>
  </div>
<!-- end sign up modal -->





<script language="javascript" type="text/javascript">
        function OpenPopupCenter(pageURL, title, w, h) {
            var left = (screen.width - w) / 2;
            var top = (screen.height - h) / 4;  // for 25% - devide by 4  |  for 33% - devide by 3
            var targetWin = window.open(pageURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
        } 
    </script>