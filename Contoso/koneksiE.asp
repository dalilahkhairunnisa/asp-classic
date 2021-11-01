<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")
        CI=request.form("CourseID")
        SI=request.form("StudentID")
        G=request.form("Grade")
        ID=request.form("ID")

        if (trim(ID) = "") or (isnull(ID)) then ID = 0 end if

        if cint(ID) <> 0 then
            Conn.execute("Update Enrollment set CourseID='" & CI & "',StudentID='" & SI & "',Grade='" & G & "' where ID= " & ID )
            response.redirect("enrollment.asp")
        else

        Conn.execute("Insert Into Enrollment Values('" & CI & "','" & SI & "','" & G & "')")
        response.redirect("enrollment.asp")

        end if


        
%>