<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员查找学生</title>
    <link href="style/css/foundation.min.css" rel="stylesheet">
    <link href="style/css/custom.css" rel="stylesheet" />
</head>
<body>
<nav class="top-bar" data-topbar role="navigation">
    <ul class="title-area">
        <li class="name">
            <h1><a href="login.html">Home</a></h1>
        </li>
    </ul>
    <section class="top-bar-section">
        <!-- Left Nav Section -->
        <ul>
            <li><a href="add_stu.html">Add Student</a></li>
            <li><a href="query_stu.html">Query Student</a></li>
            <li><a href="query_all_stu.php">Query All Student</a></li>
        </ul>
        <!-- Right Nav Section -->
        <ul class="right">
            <li><a href="https://github.com/zhibai123">Fork me on GitHub</a></li>
        </ul>
    </section>
</nav>
<header>
    <div class="row">
        <div class="large-12 columns">
            <h2>查询结果</h2>
        </div>
    </div>
</header>
<div class="row">
    <table class="large-12">
        <thead>

        <?php

        $serve = 'localhost:3306';
        $username = 'root';
        $password = 'xnxnxn12';
        $dbname = 'PXSCJ2';
        $con = new Mysqli($serve,$username,$password,$dbname);
        if($con->connect_error){
            die('connect error:'.$mysqli->connect_errno);
        }
        $sql="select * from student";
        $array1 = mysqli_query($con,$sql);


        while($row=mysqli_fetch_row($array1)){
            list($a,$b,$c,$d,$e,$f,$g)=$row;
            ?>
            <tr>
                <td align="center"><?php echo $a ?></td>
                <td align="center"><?php   echo $b ?></td>
                <td align="center"><?php echo $c ?></td>
                <td align="center"><?php   echo $d ?></td>
                <td align="center"><?php echo $e?></td>
                <td align="center"><?php  echo $f ?></td>
                <td align="center"><?php echo $g ?></td>

            </tr>
        <?php }?>


        </thead>

    </table>
</div>
</body>
</html>
