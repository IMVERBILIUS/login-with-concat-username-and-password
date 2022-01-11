<?php

require 'proses.php';

if(isset($_POST["register"])){
    
    if(tambahUser($_POST) >0){
        echo "
        <script type='text/javascript'>
        alert('Register berhasil, Selamat berbelanja')
        window.location = '../login/index.php';
        </script>
        ";
    }else{
        echo "
        <script type='text/javascript'>
        alert('Mohon maaf, Pendaftaran gagal')
        window.location = 'index.php';
        </script>
        ";
    }
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="32style.css">
</head>
<body>
<div class="container-box">
       

<form action="" method="POST">
<h3>Register</h3>
        <label>nip</label>
        <input type="text" name="nip" class="form-control"><br /> <br/>

        <label>Nama depan</label>
        <input type="text" name="ndep" class="form-control"><br /> <br/>

        <label>Nama belakang</label>
        <input type="text" name="nblk" class="form-control"><br /> <br/>
        <label>jenis kelamin</label>
        <input type="text" name="jk" class="form-control"><br /> <br/>
        <label>alamat</label>
        <input type="text" name="alamat" class="form-control"><br /> <br/>
        <label>telp</label>
        <input type="text" name="telp" class="form-control"><br /> <br/>
        <label>jabatan</label>
        <input type="text" name="jabatan" class="form-control"><br /> <br/>
        <label>gaji</label>
        <input type="text" name="gaji" class="form-control"><br /> <br/>
        <label>nocab</label>
        <input type="text" name="nocab" class="form-control"><br /> <br/>


        <button type="submit" name="register">Register</button>

    </form>

    </div>
</body>
</html>