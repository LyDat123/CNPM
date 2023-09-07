 <?php
  $customer = New customer;
  $res = $customer->single_customer($_SESSION['CUSID']);
 
  ?>  
<h3>Tài khoản của bạn</h3>
  <form  class="form-horizontal span6" action="customer/controller.php?action=edit" onsubmit="return personalInfo();" name="personal" method="POST" enctype="multipart/form-data"> 
          <div class="row">
             <div class="col-lg-6">
            <div class="form-group">
              <div class="col-md-12">
                <label class="col-md-4 control-label" for=
                "FNAME">Tên:</label>
                  <div class="col-md-8">
                   <input class="form-control input-sm" id="FNAME" name="FNAME" placeholder=
                      "Tên" type="text" value="<?php echo $res->FNAME; ?>">
                </div>
              </div>
            </div>
           </div>   
           
           <div class="col-lg-6"> 
            <div class="form-group">
              <div class="col-md-12">
                <label class="col-md-4 control-label" for=
                "LNAME">Họ:</label>

                <div class="col-md-8">
                   <input class="form-control input-sm" id="LNAME" name="LNAME" placeholder=
                      "Họ" type="text" value="<?php echo $res->LNAME; ?>">
                </div>
              </div>
            </div>
           </div>   

         
            <div class="col-lg-6">
             
             <div class="form-group">
              <div class="col-md-12">
                <label class="col-md-4 control-label" for=
                "CITYADD">Tỉnh/Thành Phố:</label>

                <div class="col-md-8">
                   <input class="form-control input-sm" id="CITYADD" name="CITYADD" placeholder=
                      "Tỉnh/Thành Phố" type="text" value="<?php echo $res->CITYADD; ?>">
                </div>
              </div>
            </div>

           </div>  


       
  

            <div class="col-lg-6"> 
                <div class="form-group">
                <div class="col-md-12">
                  <label class="col-md-4 control-label" for=
                  "PHONE">Số Liên Lạc:</label>

                  <div class="col-md-8">
                     <input class="form-control input-sm" id="PHONE" name="PHONE" placeholder=
                        "Số Liên Lạc" type="text" value="<?php echo $res->PHONE; ?>">
                  </div>
                </div>
              </div> 
           </div> 

             <div class="col-lg-6">
              <div class="form-group">
                <div class="col-md-12">
                  <label class="col-md-4 control-label" for=
                  "CUSUNAME">Tên Tài Khoản:</label>

                  <div class="col-md-8">
                     <input class="form-control input-sm" id="CUSUNAME" name="CUSUNAME" placeholder=
                        "Tên Tài Khoản" type="text" value="<?php echo $res->CUSUNAME; ?>">
                  </div>
                </div>
              </div> 
           </div>  
     <div class="col-lg-6">
          <div class="form-group">
            <div class="col-md-12">
              <label class="col-md-4 control-label" for=
              "GENDER">Giới tính:</label>

              <div class="col-lg-8"> 
                <input  id="GENDER" name="GENDER"  type="radio" <?php echo ($res->GENDER=='Male') ? 'CHECKED' : '' ;  ?>   value="Male" /><b> Nam </b>
                    <input   id="GENDER"   name="GENDER"   type="radio" <?php echo ($res->GENDER=='Female') ? 'CHECKED' : '' ; ?> value="Female" /> <b> Nữ </b>
              </div>
            </div>
          </div>
          </div>
      
          </div>
          
           

          <div class="col-lg-6"> 
              <div class="form-group">
                <div class="col-md-12">
                   <label class="col-md-4" align = "right"for=
                  "btn"></label>
                  <div class="col-md-8">
                    <input type="submit"  name="save"  value="Save"  class="submit btn btn-primary btn-lg"  />
                      
                </div>
              </div>
            </div>
         </div>     
  </form>   
  
   
                
 
                  

                               
                





 
              








                   
        
        </form>