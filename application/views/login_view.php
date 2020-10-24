<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Login</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/base/css/bootstrap.min.css");?>">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/custom/css/style.css");?>">
    <script type="text/javascript" src="<?php echo base_url("assets/base/js/jquery-1.12.4.js");?>"></script>
  </head>
  </head>
</head>
<body>
	<div class="container">
      <div class="card login-card p-4">
        <div class="row no-gutters">
          <div class="col-md-6"></div>
          <div class="col-md-6">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="https://www.bootstrapdash.com/demo/login-template-free-2/assets/images/logo.svg" alt="logo" class="logo">
              </div>
              <p class="login-card-description">Sign into your account</p>
              <?php if(isset($message)){ ?>
              	<div><?php echo $message; ?></div>
              <?php } ?>
              <form method="post" action="<?php echo base_url('user/login'); ?>">
                  <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <input type="text" name="email" id="email" class="form-control" placeholder="Email address">
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                  </div>
                  <input type="submit" name="login" id="login" class="btn btn-block login-btn mb-4"  value="Login">
                </form>
                <a href="#!" class="forgot-password-link">Forgot password?</a>
                <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
                <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

</body>
</html>