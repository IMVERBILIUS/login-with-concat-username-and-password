<?php
session_start();

require '../function.php';
$barang = query("SELECT * FROM pegawai_haikal order by nip")

?>


<?php

include '../layout/layoutpenjual.php';?>
        <div class="main1">
            <h3>Data Produk</h3>
            <a href="tampilan2.php" class="tambah"><i>tampilkan data 2</i></a>
            <table class="styled-table">
                <tr>
                    <td>No</td>
                    <th>nip</th>
                    <th>Nama depan</th>
                    <th>Nama belakang</th>
                    <th>JK</th>
                    <th>Alamat </th>
                    <th>Telp</th>
                    <th>jabatan</th>
                    <th>gaji</th>
                    <th>Nocab</th>
                    
                </tr>


                <?php $i = 1;?>
                <?php foreach($barang as $data) : ?>
                <tr>
                    <td><?= $i; ?></td>
                    
                    <td><?= $data['nip']; ?></td>
                    <td><?= $data['ndep']; ?></td>
                    <td><?= $data['nblk']; ?></td>
                    <td><?= $data['jk']; ?></td>
                    <td><?= $data['alamat']; ?></td>
                    <td><?= $data['telp']; ?></td>
                    <td><?= $data['jabatan']; ?></td>
                    <td><?= $data['gaji']; ?></td>
                    <td><?= $data['nocab']; ?></td>
                
              
                </tr>
                <?php $i++; ?>
                <?php endforeach;?>
            </table>
        </div>