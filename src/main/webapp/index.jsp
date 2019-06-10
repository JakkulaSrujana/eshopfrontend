<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
 </head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <div class = "navbar-header">
      <a class = "navbar-brand" href = "#">ESHOP</a>
   </div>
   
  <div class = "navbar-header">
      <a class = "navbar-brand" href = "#">ABOUTUS</a>
   </div>
    <div class = "navbar-header">
      <a class = "navbar-brand" href = "#">CONTACTUS</a>
   </div>
 
 <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
      Catagory
      </a>
      <div class="dropdown-menu">
       
        <a class="dropdown-item" href="addcatagory">AddCatagory</a>
         <a class="dropdown-item" href="showcatagory">ShowCatagory</a>
      </div>
    </li> 
     <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
      Supplier
      </a>
      <div class="dropdown-menu">
       
        <a class="dropdown-item" href="addsupplier">AddSupplier</a>
         <a class="dropdown-item" href="showsupplier">ShowSupplier</a>
      </div>
    </li> 
     <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
      Product
      </a>
      <div class="dropdown-menu">
       
        <a class="dropdown-item" href="addproduct">AddProduct</a>
         <a class="dropdown-item" href="showproduct">ShowProduct</a>
      </div>
    </li> 
     <div class = "navbar-header">
      <a class = "navbar-brand" href = "cart">Cart</a>
   </div>   
 
     </nav>
     
<br>

 </body>
</html>
