<?php 
require './db/config.php';

$grand_total = 0;
$allItems = '';
$items = [];

$sql = "SELECT CONCAT(product_name, '(',qty,')') AS ItemQty, total_price FROM cart";
$stmt = $conn->prepare($sql);
$stmt->execute();
$result = $stmt->get_result();
while ($row = $result->fetch_assoc()) {
  $grand_total += $row['total_price'];
  $items[] = $row['ItemQty'];
//   print_r($items);
}
$allItems = implode(', ', $items);
// echo $allItems;
// echo '<br>' . $grand_total;
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="author" content="Sahil Kumar">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Shopping Cart System</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
  <!-- Navbar start -->
  <nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="index"><i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;Mobile Store</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index"><i class="fas fa-mobile-alt mr-2"></i>Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-th-list mr-2"></i>Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="checkout"><i class="fas fa-money-check-alt mr-2"></i>Checkout</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart"><i class="fas fa-shopping-cart"></i> <span id="cart-item" class="badge badge-danger"></span></a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- Navbar end -->

  <?php 
  if(empty($allItems)){
    ?>
    <div class="col-lg-12 px-4 pb-4" id="order">
    <h4 class="text-center text-info p-2">Complete your order!</h4>
    <div class="jumbotron p-3 mb-2 text-center">
      <h6 class="lead"><b> NO ITEM! </b></h6>
    </div>
    <?php
  } else {
    ?>
    
<!-- Displaying Products Start -->
<div class="container">
  <div class="row justify-content-center">
      <div class="col-lg-6 px-4 pb-4" id="order">
        <h4 class="text-center text-info p-2">Complete your order!</h4>
        <div class="jumbotron p-3 mb-2 text-center">
          <h6 class="lead"><b>Product(s) : </b><?= $allItems; ?></h6>
          <h6 class="lead"><b>Delivery Charge : </b>Free</h6>
          <h5><b>Total Amount Payable : </b><?= number_format($grand_total,2) ?></h5>
        </div>

        <?php  
        // if(isset($_GET['ids'])){
            $sql2 = "SELECT * FROM cart";
            $result = mysqli_query($conn, $sql2);
            if($result){
                while (($row = mysqli_fetch_assoc($result)))  {
                    $product_name =  $row['product_name'];
                    $qty =  $row['qty'];
                    $price =  $row['product_price'];
                  
               } 
              
            }
        // }
           ?>

        <form action="payment.php" method="post" id="placeOrder">
          <input type="hidden" name="products" value="<?= $allItems; ?>">
          <input type="hidden" name="grand_total" value="<?= $grand_total; ?>">
          <input type="hidden" name="product_name" value="<?= $product_name; ?>">
          <input type="hidden" name="qty" value="<?= $qty; ?>">
          <input type="hidden" name="price" value="<?= $price; ?>">
          <div class="form-group">
            <input type="text" name="name" class="form-control" placeholder="Enter Name" required>
          </div>
          <div class="form-group">
            <input type="email" name="email" class="form-control" placeholder="Enter E-Mail" required>
          </div>
          <div class="form-group">
            <input type="tel" name="phone" class="form-control" placeholder="Enter Phone" required>
          </div>
          <div class="form-group">
            <textarea name="address" class="form-control" rows="3" cols="10" placeholder="Enter Delivery Address Here..."></textarea>
          </div>
          <h6 class="text-center lead">Select Payment Mode</h6>
          <div class="form-group">
            <select name="pmode" class="form-control">
              <option value="" selected disabled>-Select Payment Mode-</option>
              <option value="cod">Cash On Delivery</option>
              <option value="netbanking">Net Banking</option>
              <option value="cards">Debit/Credit Card</option>
            </select>
          </div>
          <div class="form-group">
            <input type="submit" name="submit" onclick="payWithPaystack()" value="Place Order" class="btn btn-danger btn-block">
          </div>
        </form>
       

      </div>
    </div>
  </div>
  <!-- Displaying Products End -->

        <?php
  }
?>
  
  <script src="https://js.paystack.co/v1/inline.js"></script> 
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>

  <script type="text/javascript">
  $(document).ready(function() {

        // Sending Form data to the server
    // $("#placeOrder").submit(function(e) {
    //   e.preventDefault();
    //   $.ajax({
    //     url: 'action.php',
    //     method: 'post',
    //     data: $('form').serialize() + "&action=order",
    //     success: function(response) {
    //       $("#order").html(response);
    //     }
    //   });
    // });

    // Load total no.of items added in the cart and display in the navbar
    load_cart_item_number();

    function load_cart_item_number() {
      $.ajax({
        url: 'action.php',
        method: 'get',
        data: {
          cartItem: "cart_item"
        },
        success: function(response) {
          $("#cart-item").html(response);
        }
      });
    }
  });
  </script>
</body>

</html>