<div>
    <?php
    // Kiểm tra xem 'action' có được đặt không trong URL
    if(isset($_GET['action'])){
        $tam = $_GET['action'];

        // Kiểm tra xem 'query' có được đặt không trong URL
        if(isset($_GET['query'])){
            $query = $_GET['query'];
        } else {
            $query = '';
        }
    } else {
        $tam = '';
        $query = '';
    }

    if ($tam =='xemthongtinlop'){
        include("modules/xemthongtinlop/chonlop.php");
    }elseif($tam =='xemdiemlop'){
        include("modules/xemdiemlop/xemdiemlop.php");
    }
    else {
        include("modules/dashboard.php");
    }
    ?>
</div>