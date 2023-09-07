  
<?php 
  if (!isset($_SESSION['CUSID'])){
      redirect("index.php");
     }

 
$query = "SELECT * FROM `tblsummary` s ,`tblcustomer` c 
    WHERE   s.`CUSTOMERID`=c.`CUSTOMERID` and ORDEREDNUM='".$_SESSION['ORDEREDNUM']."'";
    $mydb->setQuery($query);
    $cur = $mydb->loadSingleResult();

?>
  
 
    <table>
      <tr>
        <td align="center"> 
        <img src="<?php echo web_root; ?>images/bg2.jpg"  height="90px" style="-webkit-border-radius:5px; -moz-border-radius:5px;" alt="Image">
            </td>
        <td width="87%" align="center">
        <h3 >NPIF Shop</h3> 
        </td>
      </tr>
    </table>
    
     
  <!--  <div class="modal-body">  -->
  <h5>Đơn đặt hàng của bạn đang được xử lý. Vui lòng kiểm tra hồ sơ của bạn để biết thông báo xác nhận.</h5>
 
<hr/> 
 <h4><strong>Thông Tin Đặt Hàng</strong></h4>
    <table id="table" class="table">
      <thead>
        <tr>
          <th>SẢN PHẨM</th>
          <th>GIÁ</th>
          <th>SỐ LƯỢNG</th>
          <th>GIÁ TỔNG</th>
          <th></th> 
        </tr>
        </thead>
        <tbody>
 
        <?php
         
          $query = "SELECT * 
              FROM  `tblproduct` p, tblcategory ct,  `tblcustomer` c,  `tblorder` o,  `tblsummary` s
              WHERE p.`CATEGID` = ct.`CATEGID` 
              AND p.`PROID` = o.`PROID` 
              AND o.`ORDEREDNUM` = s.`ORDEREDNUM` 
              AND s.`CUSTOMERID` = c.`CUSTOMERID` 
              AND o.`ORDEREDNUM`=".$_SESSION['ORDEREDNUM'];
              $mydb->setQuery($query);
              $cur = $mydb->loadResultList(); 
            foreach ($cur as $result) {
              echo '<tr>';  
              echo '<td>'. $result->PROMODEL . ' <br/>'. $result->PRONAME .' '. $result->CATEGORIES. ' <br/>' .$result->PRODESC.'</td>';
              echo '<td> &#8369 '. number_format($result->PROPRICE,2).' </td>';
              echo '<td align="center" >'. $result->ORDEREDQTY.'</td>';
              ?>
               <td> &#8369 <output><?php echo  number_format($result->ORDEREDPRICE,2); ?></output></td> 
              <?php
              
              echo '</tr>';
         
        }
        ?> 
      </tbody>
    <tfoot >
    <?php 
         $query = "SELECT * FROM `tblsummary` s ,`tblcustomer` c 
        WHERE   s.`CUSTOMERID`=c.`CUSTOMERID` and ORDEREDNUM=".$_SESSION['ORDEREDNUM'];
    $mydb->setQuery($query);
    $cur = $mydb->loadSingleResult();

    if ($cur->PAYMENTMETHOD=="Cash on Delivery") {
      # code...
      $price = 25.00;
    }else{
      $price = 0.00;
    }


    $tot =   $cur->PAYMENT  - 25.00;
    ?>

   </tfoot>
       </table> <hr/>
    <div class="row">
        <div class="col-md-6 pull-left">
         <div>Ngày Đặt Hàng : <?php echo date_format(date_create($cur->ORDEREDDATE),"M/d/Y h:i:s"); ?></div> 
          <div>Phương Thức Thanh Toán : <?php echo $cur->PAYMENTMETHOD; ?></div>

        </div>
        <div class="col-md-6 pull-right">
          <p align="right">Tổng Gía : &#8369 <?php echo number_format($tot,2);?></p>
          <p align="right">Phí Giao Hàng : &#8369 <?php echo number_format($price,2); ?></p>
          <p align="right">Gía Tổng Thể : &#8369 <?php echo number_format($cur->PAYMENT,2); ?></p>
        </div>
      </div>
     

<?php  unset($_SESSION['ORDEREDNUM']); ?>