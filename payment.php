<?php 
include './db/config.php';
        if(isset($_POST['submit'])){
            $name = $_POST['name'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $products = $_POST['products'];
            $product_name = $_POST['product_name'];
            $qty = $_POST['qty'];
            $price = $_POST['price'];
            $grand_total = $_POST['grand_total'];
            $address = $_POST['address'];
            $pmode = $_POST['pmode'];
            if($pmode == 'cod'){
                $pmode = 'Cash On Delivry';
            } elseif ($pmode == 'netbanking') {
                $pmode = 'Net Banking';
            } elseif ($pmode == 'cards') {
                $pmode = 'Debit/Credit Card';
            }
           
            $_SESSION['name'] = $name;
            $_SESSION['email'] = $email;
            $_SESSION['phone'] = $phone;
            $_SESSION['products'] = $products;
            $_SESSION['product_name'] = $product_name;
            $_SESSION['qty'] = $qty;
            $_SESSION['price'] = $price;
            $_SESSION['grand_total'] = $grand_total;
            $_SESSION['address'] = $address;
            $_SESSION['address'] = $address;
            $_SESSION['pmode'] = $pmode;

        }

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
  <link rel="stylesheet" href="./partials/style.css">
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

  <!-- Displaying Products Start -->
  <div class="container">
  <form id="paymentForm">
  <div class="form-submit">
  <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/visa-logo-download-png-21.png" width="200" alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold" for="">**** 0976 **** 2237</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>9/11</span></small>
                        <small><span class="fw-bold">Name:</span><span>oluranti</span></small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/mastercard-png/file-mastercard-logo-svg-wikimedia-commons-4.png"
                           width="200"  alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** 56** **** 2457</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
                        <small><span class="fw-bold">Name:</span><span>Damilotun</span></small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/discover-png-logo/credit-cards-discover-png-logo-4.png"
                         width="200"    alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** 3476 **** 1060</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/4</span></small>
                        <small><span class="fw-bold">Name:</span><span>Aluko</span></small>
                    </div>
                </div>
            </div>
            
          
            <!-- / -->
            <div class="col-12">
                <div class="btn btn-primary payment">
                  <button type="submit" class="btn text-white"  onclick="payWithPaystack()"> Make a payment! </button>
                </div>
            </div>
        </div>
    </div>
  </div>
</form>
<script src="https://js.paystack.co/v1/inline.js"></script> 

<script>
const paymentForm = document.getElementById('paymentForm');
paymentForm.addEventListener("submit", payWithPaystack, false);
function payWithPaystack(e) {
  e.preventDefault();
  let handler = PaystackPop.setup({
    key: 'pk_test_7ba65dbdaea9c3d512f58fb964f48fa80ee14bb7', // Replace with your public key
    email: '<?php echo $email; ?>',
    amount: <?php echo $grand_total * 100; ?>,
    ref: 'TD'+ Math.floor((Math.random() * 1000000000) + 1), // generates a pseudo-unique reference. Please replace with a reference you generated. Or remove the line entirely so our API will generate one for you
    // label: "Optional string that replaces customer email"
    first_name: "<?php echo $name; ?>",
    address: "<?php echo $address; ?>",
    metadata: {
      custom_fields: [
        {
          display_name: "<?php echo $name; ?>",
          variable_name: "<?php echo $address; ?>",
          value: "<?php echo $phone; ?>",
        }
      ]
    },
   
    callback: function(response){
      const message = ' ' + response.reference;
      // alert(message);
      window.location.href='action.php?successfullypaid='+ message;
    },
    onClose: function(){
      alert('Window closed.');
    }
  });
  handler.openIframe();
}
</script>

  </div>
  <!-- Displaying Products End -->

  <!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script> -->

  

</body>

</html>