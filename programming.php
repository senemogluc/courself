<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href="css/style.css">
    <link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">

    <title> COURSELF</title>

</head>
<body>
<?php include 'Navbar.php'?>
<section id="courses">
        <div class="container">
            <style>
                .card{
                    width: 320px;
                    height: 600px;
                    border: 1px solid #fff;
                    padding: 0;
                    display: inline-block;
                }
            </style>
            <h3>Programming Courses</h3>
            <?php
                require_once 'connect.php';
                $sql = "SELECT instructors.IName, courses.cName, courses.lvl, courses.Price, courses.numOfStudents, courses.Duration FROM gives, courses, instructors where instructors.ID=gives.InstructorID and courses.ID=gives.CourseID and courses.Category='Programming'";
                $result=$db->query($sql);

                //Courses
                while($row=$result->fetch_assoc()){
                    $CName = $row['cName'];
                    $IName = $row['IName'];
                    $lvl = $row['lvl'];
                    $price = $row['Price'];
                    $num = $row['numOfStudents'];
                    $duration = $row['Duration'];
            ?>
            
                <article class='card'>
                    <img src='images/programming.png' alt='' class='img-fluid'>
                    <strong> <?php echo $CName; ?> </strong> <br>
                    <?php echo $lvl; ?></br>
                    <?php echo "<strong>Price: </strong>$" . $price; ?><br></br>
                    <?php echo "<strong>Duration: </strong>" . $duration; ?></br>
                    <?php echo "<strong>Created by: </strong>" . $IName; ?></br>
                    <?php echo "<strong>Enrolled students: </strong>" . $num; ?></br>
                </article>
            
            <?php } ?>

        </div>
    </section>
    <div class="bottom-container">
        <p>© COURSELF.</p>
      </div>
</body>