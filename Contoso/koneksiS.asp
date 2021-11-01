<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")
        L=request.form("last")
        F=request.form("first")
        E=request.form("enrollment")
        ID=request.form("id")

        if (trim(id) = "") or (isnull(id)) then id = 0 end if

        if cint(id) <> 0 then
            Conn.execute("Update Student set LastName='" & L & "',FirstMidName='" & F & "',EnrollmentDate='" & E & "' where id= " & id )
            response.redirect("Student.asp")
        else

        Conn.execute("Insert Into Student Values('" & L & "','" & F & "','" & E & "')")
        response.redirect("Student.asp")

        end if


        
%>