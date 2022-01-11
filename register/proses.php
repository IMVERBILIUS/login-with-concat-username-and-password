<?php

require '../koneksi.php';

function tambahUser($data){

    global $conn;
    
    $nip = htmlspecialchars($data["nip"]);
    $ndep = htmlspecialchars($data["ndep"]);
    $nblk = htmlspecialchars($data["nblk"]);
    $jk = htmlspecialchars($data["jk"]);
    $alamat = htmlspecialchars($data["alamat"]);
    $telp = htmlspecialchars($data["telp"]);
    $jabatan = htmlspecialchars($data["jabatan"]);
    $gaji = htmlspecialchars($data["gaji"]);
    $nocab = htmlspecialchars($data["nocab"]);

    

    $query = "INSERT INTO pegawai_haikal VALUES('$nip', '$ndep', '$nblk', '$jk','$alamat','$telp','$jabatan','$gaji','$nocab')";
    mysqli_query($conn, $query);

return mysqli_affected_rows($conn);


}



?>