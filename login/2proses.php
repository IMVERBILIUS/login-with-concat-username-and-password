
<?php
    require '../koneksi.php';

    $username =$_POST['username'];
    $password =$_POST['password'];

    $query =mysqli_query($conn, "SELECT * FROM v_login where username ='$username' AND password = '$password'");
    $cek=mysqli_num_rows($query);
    if($cek > 0 ){
        $data = mysqli_fetch_array($query);

        if ($data['username'] == "$username")
        {
            session_start();
            $_SESSION['username'] = $data['username'];
            $_SESSION['name'] = $data['name'];
            $_SESSION['role'] = $data['role'];
            $_SESSION['price'] = $data['price'];
            header("Location: ../tampilan/index.php");

        }else if ($data['password'] == "$password")
        {
            session_start();
            $_SESSION['price'] = $data['price'];
            $_SESSION['username'] = $data['username'];
            $_SESSION['id_user']=$data['id_user'];
            $_SESSION['name'] = $data['name'];
            $_SESSION['role'] = $data['role'];
            header("Location: ../user2/sasa.php");

        }
    }else 
    {
        echo "
        <script type='text/javascript'>
            alert('Mohon maaf, salah pw atau user gagal!')
            window.location = 'index.php';
        </script>
        ";}      
?>