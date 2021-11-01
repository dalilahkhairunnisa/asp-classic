<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- gfont -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Antique+Soft&display=swap" rel="stylesheet">

    <title>Home</title>
    <style>
        body {
            background-image: linear-gradient(to right, #7ed6df, #dff9fb);
        }

        .navbar {
            background-image: linear-gradient(to right, #7ed6df, #dff9fb);
        }

        #hero {
            padding-top: 2%;
            background-image: linear-gradient(to right, #7ed6df, #dff9fb);
        }

        #hero img {
            height: 330px;
        }

        .text1 {
            font-family: 'Zen Antique Soft', serif;
        }

    </style>
</head>

<body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="text1 navbar-brand fw-bold text-dark" href="index.asp">ContosoUniv</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active text-dark" aria-current="page" href="index.asp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-dark" href="student.asp">Student</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-dark" href="course.asp">Course</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-dark" href="enrollment.asp">Enrollment Date</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- tutup navbar -->

    <!-- hero image -->
    <section id="hero">
        <div class="container mt-5">
            <div class="row">
                <!-- colom text -->
                <div class="col-md-7 text-dark pt-5">
                    <h1 class="text1 fw-bold">Contoso University</h1>
                    <P class="fw-light mt-4">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem quae saepe <br>
                         quos debitis in, suscipit aliquam commodi temporibus repellendus possimus <br>
                        beatae modi, quo non neque voluptates inventore quod et, quis alias reiciendis. <br>
                        Rerum quam cumque beatae accusamus asperiores quis quaerat culpa id sint <br>
                        aliquid explicabo totam, corporis a inventore recusandae ab reiciendis nemo <br> 
                        obcaecati aut sit. Ducimus, omnis voluptas aut ea porro officiis animi voluptatem <br> 
                        incidunt voluptates deserunt deleniti quidem.</P>
                </div>
                <!-- colom image -->
                <div class="col-md-5">
                    <img src="https://cdn-icons.flaticon.com/png/512/2997/premium/2997331.png?token=exp=1635218689~hmac=7997b5c0ab1c2b8d090f0d8130a26e4d" alt="" class="img-fluid ms-5">
                </div>
            </div>
        </div>

    </section>
    <!-- tutup hero image -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>