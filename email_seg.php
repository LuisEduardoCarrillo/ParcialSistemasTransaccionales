<?php
 $conex=mysqli_connect ("localhost","root","123456") or die ("servidor");
 mysqli_select_db ($conex, "videoaula") or die ("BD");
$username = $_POST['username'];
$sql= "SELECT * FROM usuarios WHERE email='".$username."'"; 
$result=mysqli_query($conex,$sql);
 $recorset=mysqli_num_rows($result);
  if ($recorset==1)
   {?>

<script>$("#coe").html("<input type='hidden' id='dato' value='1'><div id='aler' class='alert alert-dismissible alert-danger'><button type='button' class='close' data-dismiss='alert'>&times;</button><span class='icon-cross'></span> "+username+" No Esta Disponible...</div>");</script>
 <?php }else{ ?>
<script>$("#coe").html("<input type='hidden' id='dato' value='0'> <div id='aler' class='alert alert-dismissible alert-danger'><button type='button' class='close' data-dismiss='alert'>&times;</button><span class='icon-checkmark'></span> "+username+" Esta Disponible...</div>");</script>
<?php  } ?>


