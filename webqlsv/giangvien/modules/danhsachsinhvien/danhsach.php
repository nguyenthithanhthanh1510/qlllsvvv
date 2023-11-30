<form method ="POST" action ="">
<p class ="tieudethemgv">NHẬP DANH SINH VIÊN</p>
<input type="text" autocomplete = "off" value ="" name ="malophocphan">
<input type="submit" value ="OK" name ="gui">
</form>
<?php
$lop = isset($_POST['lop']) ? $_POST['lop'] : '';
$malophocphan = isset($_POST['malophocphan']) ? $_POST['malophocphan'] : '';
?>
<?php
   $sql_lietke_danhsachsinhvien = "SELECT sv.masinhvien, sv.tensinhvien, lhp.tenlophocphan, gv.emailsv
   FROM sinhvien sv
   JOIN giangvien gv ON sv.masinhvien = gv.masinhvien
   JOIN lop gv ON gv.lop = gv.lop
   WHERE sv.lop = '$lop' AND gv.lop = '$lop'";
$query_lietke_danhsachsinhvien = mysqli_query($mysqli, $sql_lietke_danhsachsinhvien);
?>
<p class ="tieudethemgv">Danh Sách Sinh Viên: <?php echo $lop   ?></p>
<table width="50%" border="1" style="border-collapse: collapse;">
    <form method="" action="">
        <tr>
            <td>STT</td>
            <td>Mã Sinh Viên</td>
            <td>Tên Sinh Viên</td>
            <td>Tên Lớp Học Phần</td>
            <td>Email</td>
        </tr>
        <?php
        $i = 0;
        while ($row = mysqli_fetch_array($query_lietke_danhsachsinhvien)) {
            $i++;
        ?>
            <tr>
                <td><?php echo $i ?></td>
                <td><?php echo $row['masinhvien'] ?></td>
                <td><?php echo $row['tensinhvien'] ?></td>
                <td><?php echo $row['tenlophocphan'] ?></td>
                <td><?php echo $row['emailsv'] ?></td>
        <?php
        };
        ?>
    </form>
</table>