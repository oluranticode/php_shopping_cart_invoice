<?php
	require './db/config.php';

	// Add products into the cart table
	if (isset($_POST['pid'])) {
	  $pid = $_POST['pid'];
	  $pname = $_POST['pname'];
	  $pprice = $_POST['pprice'];
	  $pimage = $_POST['pimage'];
	  $pcode = $_POST['pcode'];
	  $pqty = $_POST['pqty'];
	  $total_price = $pprice * $pqty;

	  $stmt = $conn->prepare('SELECT product_code FROM cart WHERE product_code=?');
	  $stmt->bind_param('s',$pcode);
	  $stmt->execute();
	  $res = $stmt->get_result();
	  $r = $res->fetch_assoc();
	  $code = $r['product_code'] ?? '';

	  if (!$code) {
	    $query = $conn->prepare('INSERT INTO cart (product_name,product_price,product_image,qty,total_price,product_code) VALUES (?,?,?,?,?,?)');
	    $query->bind_param('ssssss',$pname,$pprice,$pimage,$pqty,$total_price,$pcode);
	    $query->execute();

	    echo '<div class="alert alert-success alert-dismissible mt-2">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  <strong>Item added to your cart!</strong>
						</div>';
	  } else {
	    echo '<div class="alert alert-danger alert-dismissible mt-2">
						  <button type="button" class="close" data-dismiss="alert">&times;</button>
						  <strong>Item already added to your cart!</strong>
						</div>';
	  }
	}

	// Get no.of items available in the cart table
	if (isset($_GET['cartItem']) && isset($_GET['cartItem']) == 'cart_item') {
	  $stmt = $conn->prepare('SELECT * FROM cart');
	  $stmt->execute();
	  $stmt->store_result();
	  $rows = $stmt->num_rows;

	  echo $rows;
	}

	// Remove single items from cart
	if (isset($_GET['remove'])) {
	  $id = $_GET['remove'];

	  $stmt = $conn->prepare('DELETE FROM cart WHERE id=?');
	  $stmt->bind_param('i',$id);
	  $stmt->execute();

	  $_SESSION['showAlert'] = 'block';
	  $_SESSION['message'] = 'Item removed from the cart!';
	  header('location:cart.php');
	}

	// Remove all items at once from cart
	if (isset($_GET['clear'])) {
	  $stmt = $conn->prepare('DELETE FROM cart');
	  $stmt->execute();
	  $_SESSION['showAlert'] = 'block';
	  $_SESSION['message'] = 'All Item removed from the cart!';
	  header('location:cart.php');
	}

	// Set total price of the product in the cart table
	if (isset($_POST['qty'])) {
	  $qty = $_POST['qty'];
	  $pid = $_POST['pid'];
	  $pprice = $_POST['pprice'];

	  $tprice = $qty * $pprice;

	  $stmt = $conn->prepare('UPDATE cart SET qty=?, total_price=? WHERE id=?');
	  $stmt->bind_param('isi',$qty,$tprice,$pid);
	  $stmt->execute();
	}

    if(isset($_GET['successfullypaid'])) {
    $reference = $_GET["successfullypaid"];
    $name = $_SESSION['name'];
    $email = $_SESSION['email'];  
    $phone = $_SESSION['phone'];
    $products = $_SESSION['products'];
    $product_name = $_SESSION['product_name'];
    $qty = $_SESSION['qty'];
    $price = $_SESSION['price'];
    $grand_total = $_SESSION['grand_total'];
    $address = $_SESSION['address'];
    $pmode = $_SESSION['pmode'];

      if($pmode == 'cod'){
        $pmode = 'Cash On Delivry';
    } elseif ($pmode == 'netbanking') {
        $pmode = 'Net Banking';
    } elseif ($pmode == 'cards') {
        $pmode = 'Debit/Credit Card';
    };

	  $data = '';

	  $stmt = $conn->prepare('INSERT INTO orders (name,email,phone,address,reference,pmode,products,amount_paid)VALUES(?,?,?,?,?,?,?,?)');
	  $stmt->bind_param('ssssssss',$name,$email,$phone,$address,$reference,$pmode,$products,$grand_total);
	  $stmt->execute();
     
      if($product_name=''){
        $data .= '<div class="text-center">
								  <h1 class="display-4 mt-2 text-danger">No Item!</h1>	
								  <h4> <a href="index.php" class="btn btn-success"><i class="fas fa-cart-plus"></i>&nbsp;&nbsp;Go back to Shop</a></h4>							 
							</div>';
      }else{
	require './partials/header.php';
        $date =  date("Y/m/d");
        $time = date("h:i:sa");
        $grand_total = number_format($grand_total,2);
     
     ?>

        <div class="page-content container" id="HTMLtoPDF">
    <div class="page-header text-blue-d2">
        <h1 class="page-title text-secondary-d1">
            Invoice
            <small class="page-info">
                <i class="fa fa-angle-double-right text-80"></i>
                : <?php echo $reference ?>
            </small>
        </h1>

        <div class="page-tools">
            <div class="action-buttons">
               
                <button id="download" class="btn btn-danger" onclick="HTMLtoPDF()">Download your Receipt</button>
            </div>
        </div>
    </div>

    <div class="container px-0">
        <div class="row mt-4">
            <div class="col-12 col-lg-12">

                <hr class="row brc-default-l1 mx-n1 mb-4" />

                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">To:</span>
                            <span class="text-600 text-110 text-blue align-middle"><?php echo $name ?></span>
                        </div>
                        <div class="text-grey-m2">
                            <div class="my-1"> <span class="text-sm text-grey-m2 align-middle">Location:</span>
                            <?php echo $address ?>
                            </div>
                            <div class="my-1"><i class="fa fa-phone fa-flip-horizontal text-secondary"></i> <b class="text-600"><?php echo $phone ?></b></div>
                        </div>
                    </div>
                   

                    <div class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
                        <hr class="d-sm-none" />
                        <div class="text-grey-m2">
                            <div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
                                Invoice
                            </div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">ID:</span> <?php echo $reference ?></div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Issue Date:</span> <?php echo $date ?></div>
                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Time:</span> <?php echo $time ?></div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Status:</span> <span class="badge badge-success badge-pill px-25">PAID</span></div>
                        </div>
                    </div>
                   
                </div>

                <div class="mt-4">
                    <div class="row text-600 text-white bgc-default-tp1 py-25">
                        <div class="d-none d-sm-block col-1">S/N</div>
                        <div class="col-9 col-sm-5">Products</div>
                        <div class="d-none d-sm-block col-4 col-sm-2">Qty</div>
                        <div class="d-none d-sm-block col-sm-2">Price</div>
                        <div class="col-2">Delivery Fee</div>
                    </div>

                    <?php 
                    $sql = "SELECT * FROM cart";
                    $res = mysqli_query($conn, $sql);
                    if($res){
                        $n=0;
                        while ($row = mysqli_fetch_assoc($res)) {
                            $price = number_format($row['product_price'], 2);
                            $product_name = $row['product_name'];
                            $qty = $row['qty'];
                            $n++;
                            $stmt2 = $conn->prepare('DELETE FROM cart');
                            $stmt2->execute()
                           ?> 
                         
                    <div class="text-95 text-secondary-d3">
                        <div class="row mb-2 mb-sm-0 py-25">
                            <div class="d-none d-sm-block col-1"><?php echo $n; ?></div>
                            <div class="col-9 col-sm-5"><?php echo $product_name ?></div>
                            <div class="d-none d-sm-block col-2"><?php echo $qty ?></div>
                            <div class="d-none d-sm-block col-2 text-95"><i class="fas fa-naira-sign"></i>&nbsp;&nbsp;<?php echo $price ?></div>
                            <div class="col-2 text-secondary-d2">Free</div>
                        </div>
                                
                        <?php 
                        if($product_name == '' && $qty == '' && $price == ''){
                            header("Location:index.php");
                        }
                        ?>
                    </div>
                    <?php
               
                }
            }
            ?>

                    <div class="row border-b-2 brc-default-l2"></div>

                    <div class="row mt-3">
                        <div class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
                            Payment Method : <h5> <?php echo $pmode ?></h5>
                        </div>

                        <div class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">
                            <div class="row my-2">
                                <div class="col-7 text-right">
                                    SubTotal
                                </div>
                                <div class="col-5">
                                    <span class="text-120 text-secondary-d1"><i class="fas fa-naira-sign"></i>&nbsp;&nbsp;<?php echo $grand_total ?></span>
                                </div>
                            </div>

                            <div class="row my-2 align-items-center bgc-primary-l3 p-2">
                                <div class="col-7 text-right">
                                    Total Amount
                                </div>
                                <div class="col-5">
                                    <span class="text-150 text-success-d3 opacity-2"><i class="fas fa-naira-sign"></i>&nbsp;&nbsp;<?php echo $grand_total ?></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr />

                    <div>
                        <span class="text-secondary-d1 text-105">Thank you for your business</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

  <?php
	require './partials/footer.php';
   
      }
	  
	  echo $data;
      
    }
	// }

?>