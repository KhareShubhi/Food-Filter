<?php
include('connect.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="styles.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css">
    </head>
    <body>
        <script type="text/javascript">
            function show()
            {
                window.location="showdata.php";
            }
        </script>
        <div class="backimg">
            <div class="logohead">
                <a href="help.htm">Help!</a>
                <a href="aboutus.htm">About Us</a>
                <a href="home.php">Home</a>
            </div>
            <div class="logo">
                <h2>The Food Filter</h2>
                <p>Discover all the food information at one place!</p>
            </div>
            <div class="searchBox">
                
                    <?php 
                    $query="SELECT * FROM locations";
                    $result=mysqli_query($connection,$query);
                    ?>
                    <form method="POST">
                    <select name="locations" id="locations" class="chosen">
                        <option value="selected" selected>Select Location</option>
                    <?php

                    if(mysqli_num_rows($result)>0){
                        while($row=mysqli_fetch_assoc($result)){
                    ?>
                            <option value="<?php echo $row["City"] ?>"><?php echo $row["City"] ?> | <?php echo $row["Country"] ?></option>
                            <?php } ?>
                        </select>
                    <?php }?>
                <!--<button onclick="show()">Find Store</button>-->
                <input type="submit" name="submit" value="Find Stores">
                        </form>
                
            </div>
        </div>
<script type="text/javascript">
    $('.chosen').chosen();

</script>

        <div id="slider">
            <figure>
                <img src="Veg.png">
                <img src="NonVeg.png">
                <img src="Vegan.png">
            </figure>
        </div>
        <div class="footer">
            <hr>
            <p>Discover all the food information at one place!</p>
            <hr>
            <a href="home.php">Home</a>
            <a href="aboutus.htm">About Us</a>
            <a href="help.htm">Help!</a>
        </div>

        <?php
            if(isset($_POST['submit']))
            {
                $locval=$_POST['locations'];
                if($locval == "selected")
                {
                    header("Location: home.php");
                }
                else
                {
                    $_SESSION["sel_location"] = $locval;
                    header("Location: showdata.php");
                }
            }

        ?>

    </body>
</html>
