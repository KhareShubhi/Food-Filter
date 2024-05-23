<?php
include('connect.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Details</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <?php
        $shop_name=$_GET['name'];
        $address=$_GET['address'];
        $loc=$_SESSION["sel_location"];

        $query="SELECT * FROM shop WHERE `SHOP NAME`='$shop_name' AND `ADDRESS`='$address'";
        $conn=mysqli_query($connection,$query);
        if(mysqli_num_rows($conn)>0)
        {
            while($rst=mysqli_fetch_array($conn))
            {
                $map_code=$rst['Map-Code'];
                $city=$rst['CITY'];
                $state=$rst['STATE'];
                $country=$rst['COUNTRY'];
            }
        }
        $loc_query="SELECT * FROM shop WHERE `CITY`='$loc' AND NOT `SHOP NAME`='$shop_name'";
        $cn=mysqli_query($connection,$loc_query);
        

        ?>
        <h2 style="font-size:xx-large;font-family: Snell Roundhand, cursive;margin:50px">The Food Filter</h2>   
        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.htm">About US</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="help.htm">Contact US</a>
                    </li>
                </ul>
                <span class="navbar-text">
                    All about Food!!!   
                </span>
            </div>
        </nav>
        <div class="view">
            <div class="detail">
                <h2><?php echo $shop_name ?></h2>
                <p><?php echo $address ?></p>
                <b><p><?php echo $city ?> | <?php echo $state ?> | <?php echo $country ?></p></b>
                <iframe src="<?php echo $map_code ?>" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="items">
                <h5>Check out other stores in the same locations-</h5>
                <?php
                if(mysqli_num_rows($cn)>0)
                {
                    while($r=mysqli_fetch_array($cn))
                    {
                        $sn=$r['SHOP NAME'];
                        $ad=$r['ADDRESS'];
                        ?>
                        <p><li><a href="view.php?name=<?php echo $sn ?>&address=<?php echo $ad ?>"><?php echo $sn ?></a></li></p>
                        <?php
                    }
                }
                ?>
            </div>
        </div>

        <div class="footer">
            <hr>
            <p>Discover all the food information at one place!</p>
            <hr>
            <a href="home.htm">Home</a>
            <a href="aboutus.htm">About Us</a>
            <a href="">Help!</a>
        </div>
        <style>
            .view{
                display:flex;
            }
            .items{
                margin-left: 35%;
                margin-top:2%;
            }
            .items h5{
                font-style:italic;
            }
            .items li{
                margin-left:20%;
            }
            .items a{
                color:black;
                
            }
            .footer{
                height: 150px;
                margin-top: 50px;
                background-color: black;
                color: white;
                text-align: center;
                font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            }
            .footer p{
                margin: 30px;
            }
            .footer a{
                padding: 15px;
                color: white;
            }
            .footer a:hover{
                color: bisque;
            }
            .view{
                margin:50px;
            }
        </style>


    </body>
</html>