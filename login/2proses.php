
<?php
    require '../koneksi.php';

    $username =$_POST['username'];
    $password =$_POST['password'];

    $query =mysqli_query($conn, "SELECT * FROM v_login where username ='$username' AND password = '$password'");
    $cek=mysqli_num_rows($query);
    if($query){
        header('location:../tampilan/index.php');
    }      
?>