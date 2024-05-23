<?php
include ('connect.php');
session_start();
if($_SESSION["sel_location"] == null)
{
  header("Location: home.php");
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Main</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        
        <body>
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
                </div>
              </nav>
              
              <form method="POST">
                <div class="options">
                  <select name="category">
                    <option selected>Choose</option>
                    <option value="veg">Veg</option>
                    <option value="nonveg">Non-Veg</option>
                    <option value="vegan">Vegan</option>
                    <option value="pureveg">Pure Veg</option>
                    <option value="purevegan">Pure Vegan</option>
                    <option value="purenonveg">Pure Non-Veg</option>
                    <option value="vegvegan">Veg/Vegan</option>
                    <option value="pureveganrest">Pure Vegan Restaurants</option>
                  </select>
                </div>
                <div class="btnsubmit">
                  <input type="submit" name="submit" value="Select"/>
                </div>
              </form>
        
              <style>
                form{
                  display: flex;
                  width: 100%;
                  padding:20px;
                }
                .options{
                  width: 80%;
                }
                .options select{
                  width: 100%;
                  height: 40px;
                  border-radius: 10px;
                  border: 1px solid grey;
                  background-color: white;
                  padding: .375rem 2.25rem .375rem .75rem;
                  font-size: 1rem;
                  font-weight: 400;
                }
                .btnsubmit{
                  width: 20%;
                }
                .btnsubmit input{
                  width: 100%;
                  border-radius: 10px;
                  border: 1px solid grey;
                  background-color: white;
                  cursor: pointer;
                  float:  right;
                  height:  40px;
                }
              </style>


        <main>        
          <h4 id ="show" class="show" > </h4>
          <div class="album py-5 bg-body-tertiary">
            
            <div class="container">
            
              <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php
        $loc_sel=$_SESSION["sel_location"];
        $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `Restaurant`='NO'";
        
       
        if(isset($_POST['submit']))
        {
          $food_category=$_POST['category'];
          
        if($food_category == "veg") { 
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEG` = 'YES' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for veg";
          </script>
          <?php
        }
        else if($food_category == "nonveg") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `NON-VEG` = 'YES' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for non-veg";
          </script>
          <?php
        }
         else if($food_category == "vegan") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEGAN` = 'YES' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for vegan";
          </script>
          <?php
         } 
         else if($food_category == "pureveg") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEG` = 'YES' AND `NON-VEG` = 'NO' AND `VEGAN` = 'NO' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for pure veg";
          </script>
          <?php
         }
         else if($food_category == "purevegan") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEG` = 'NO' AND `NON-VEG` = 'NO' AND `VEGAN` = 'YES' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for pure vegan";
          </script>
          <?php
         }
         else if($food_category == "purenonveg") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEG` = 'NO' AND `NON-VEG` = 'YES' AND `VEGAN` = 'NO' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for pure non-veg";
          </script>
          <?php
         }
         else if($food_category == "vegvegan") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEG` = 'YES' AND `NON-VEG` = 'NO' AND `VEGAN` = 'YES' AND `Restaurant`='NO'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for veg/vegan";
          </script>
          <?php
         }
         else if($food_category == "pureveganrest") {
          $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `VEGAN` = 'YES' AND `Restaurant`='YES'";
          ?>
          <script>
            document.getElementById("show").innerHTML="Showing results for Pure Vegan Restaurants";
          </script>
          <?php
         }
         else {
            $query="SELECT * from shop WHERE `CITY` = '$loc_sel' AND `Restaurant`='NO'";
         }
        }

        $cnt=mysqli_query($connection,$query);
        if(mysqli_num_rows($cnt)>0)
        {
          while($result=mysqli_fetch_array($cnt))
          {
            $sn=$result["SHOP NAME"];
            $ad=$result["ADDRESS"];
        ?>
                <div class="col">
                  <div class="card shadow-sm">
                    
                    <div class="card-body">

                      <p class="card-text"> <?php echo $result["SHOP NAME"] ?> </p>
                      <p class="card-text"> <?php echo $result["ADDRESS"] ?> </p>
                      <p class="card-text"> <?php echo $result["CITY"] ?> | <?php echo $result["COUNTRY"] ?> </p>
                      
                      <div class="d-flex justify-content-between align-items-center">
                        <div class="btn-group">
                          <a href="view.php?name=<?php echo $sn ?>&address=<?php echo $ad ?>"><button type="button" class="btn btn-sm btn-outline-secondary" >View</button></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <?php
          }
        } 
        else
        {
                ?>
                <p>No Data Found!</p>
                <?php
        }
                ?>
                
              </div>
            </div>
          </div>
        
        </main>
        <style>
          .show{
            margin:20px;
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
        </style>
        
        <div class="footer">
            <hr>
            <p>Discover all the food information at one place!</p>
            <hr>
            <a href="home.htm">Home</a>
            <a href="aboutus.htm">About Us</a>
            <a href="">Help!</a>
        </div>
       
              
          
        
        </body>
    </body>
</html>