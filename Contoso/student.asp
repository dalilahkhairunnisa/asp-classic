<%
    id = Request.QueryString("ID")
    Dim Data1
    Set Conn = Server.CreateObject("ADODB.Connection")
    Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")
    if (trim(id) = "") or (isnull(id)) then id = 0 end if

    if (cint(id) <> 0) then 
        Set Data1 = Conn.execute("Select * from Student where ID = " & id)
        if not Data1.EOF then
            ID = Data1("ID")
            LastName = Data1("LastName")
            FirstMidName = Data1("FirstMidName")
            EnrollmentDate = Data1("EnrollmentDate")

            Set Data1 = nothing
        end if
    end if
%>

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

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" 
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

    <title>Student</title>

    <style>
        body {
            background-image: linear-gradient(to right, #7ed6df, #dff9fb);
        }

        .navbar {
            background-image: linear-gradient(to right, #7ed6df, #dff9fb);
        }

        .text1 {
            font-family: 'Zen Antique Soft', serif;
        }

        .container {
            margin-left: 350px;
        }

        .btn4 {
            margin-left: 238px;
        }
    </style>
</head>

<body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-5">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.asp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="student.asp">Student</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="course.asp">Course</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="enrollment.asp">Enrollment Date</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar close -->

    <!-- title -->
    <div class="text1">
        <h1 class="text-center mt-4"><i class="fas fa-user-circle"></i> Student</h1>
    </div>
    <!-- title close -->


    <!-- input -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-7">
                <form class="row g-3" method="POST" action="koneksiS.asp">
                    <div class="col-md-6">
                        <label>Last Name</label>
                        <input type="text" class="form-control" name="last" value="<%=LastName%>">
                    </div>
                    <div class="col-md-6">
                        <label>First Mid Name</label>
                        <input type="text" class="form-control" name="first" value="<%=FirstMidName%>">
                    </div>
                    <div class="col-md-12">
                        <label>Enrollment Date</label>
                        <input type="date" class="form-control" name="enrollment" value="<%=EnrollmentDate%>">
                    </div>
                    <div class="col-md-10">
                        <input type="hidden" class="form-control" name="id" value="<%=ID%>">
                    </div>

                    <!-- action -->
                    <div class="d-grid gap-2 col-2">
                        <button type="submit" class="btn btn-success mt-2 me-2">Create</button>
                    </div>
                    <!-- action close -->

                    <!-- table -->
                    <table class="table table-bordered border-dark table-light table-striped table-hover mt-4">
                        <% 
                                        Dim Data 
                                        Set Conn = Server.CreateObject("ADODB.Connection")
                                        Set Rec = Server.CreateObject("ADODB.recordset")
                                        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")

                                        Set Data = Conn.execute("Select * from Student")
                                    %>
                        <thead>
                                <tr>
                                    <th scope="col" style="background-color:  #2d3436;color:  white;" class="text-center">
                                        ID</th>
                                    <th scope="col" style="background-color:  #2d3436;color:  white;" class="text-center">
                                        Last Name</th>
                                    <th scope="col" style="background-color:  #2d3436;color:  white;" class="text-center">
                                        First Mid Name</th>
                                    <th scope="col" style="background-color:  #2d3436;color:  white;" class="text-center">
                                        Enrollment Date</th>
                                    <th scope="col" style="background-color:  #2d3436;color:  white;" class="text-center">
                                        action</th>
                                </tr>         
                        </thead>
                        <form method="post" action="deleteS.asp?id=<%=Data("ID")%>" id="del">

                        </form>
                        <tbody>
                            <%
                                do while not Data.EOF
                            %>
                            <tr>
                                <td class="text-center"><%=Data("id")%></td>
                                <td class="text-center"><%=Data("LastName")%></td>
                                <td class="text-center"><%=Data("FirstMidName")%></td>
                                <td class="text-center"><%=Data("EnrollmentDate")%></td>
                                <td class="text-center">
                                    <a href="student.asp?id=<%=Data("id")%>" class="btn btn-warning btn-sm"><i class="far fa-edit"></i></a>
                                    <a href="deleteS.asp?Id=<%=Data("id")%>" class="btn btn-danger btn-sm"><i class="far fa-trash-alt"></i></a>
                                </td>
                                </tr>
                            <%
                                Data.MoveNext()
                                Loop
                            %>
                        </tbody>             
                </form>
            </div>
        </div>
        <!-- input close -->


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