<?php
  $page_title = 'Home Page';
  require_once('includes/load.php');
  if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
 <div class="col-md-12">
    <div class="panel">
      <div class="jumbotron text-center">
         <h1>BIENVENIDO A LA PAGINA DE INICIO</h1>
     
      </div>
    </div>
 </div>
</div>
<?php include_once('layouts/footer.php'); ?>
