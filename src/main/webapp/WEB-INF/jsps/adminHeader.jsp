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
<div class = "navbar-header">
      <a class = "navbar-brand" href = "Home">ESHOP</a>
   </div>
   <div class = "navbar-header">
      <a class = "navbar-brand" href = "userHome">UserHome</a>
   </div>
   <div class = "navbar-header">
      <a class = "navbar-brand" href = "AdminHome"> AdminHome</a>
   </div>
<div class = "navbar-header">
      <a class = "navbar-brand" href = "aboutUs"> AboutUs</a>
   </div>
    <div class = "navbar-header">
      <a class = "navbar-brand" href = "contactUs"> ContactUs</a>
   </div>
   
 <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Catagories
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="addcatagory">AddCatagory</a>
        <a class="dropdown-item" href="showcatagory">ShowCatagory</a>
        
        
      </div>
    </li>
   
     <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Suppliers
      </a>
      <div class="dropdown-menu">
       
        <a class="dropdown-item" href="addsupplier">AddSupplier</a>
        <a class="dropdown-item" href="showsupplier">ShowSupplier</a>
        
      </div>
    </li>
  
         <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Product
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="addproduct">AddProduct</a>
        <a class="dropdown-item" href="showproduct">ShowProduct</a>
        
        
      </div>
    </li>
    
  </ul>
</nav>



 </body>
</html>
