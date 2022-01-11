<?php
session_start();

require '../function.php';
$barang = query("SELECT * FROM v_login")

?>


<?php

include '../layout/layoutpenjual.php';?>
        <div class="main1">
            <h3>Data Produk</h3>
            <a href="index.php" class="tambah"><i>tampilkan data 1</i></a>
            <table class="styled-table">
                <tr>
                    <td>No</td>
                    <td>Nip</td>
                    <th>username</th>
                    <th>password</th>                   
                </tr>


                <?php $i = 1;?>
                <?php foreach($barang as $data) : ?>
                <tr>
                    <td><?= $i; ?></td>
                    
                    <td><?= $data['nip']; ?></td>
                    <td><?= $data['username']; ?></td>
                    <td><?= $data['password']; ?></td>
                
              
                </tr>
                <?php $i++; ?>
                <?php endforeach;?>
            </table>
        </div>