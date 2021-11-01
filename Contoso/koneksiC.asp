<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")
        T=request.form("title")
        C=request.form("credits")
        ID=request.form("ID")

        if (trim(ID) = "") or (isnull(ID)) then ID = 0 end if

        if cint(ID) <> 0 then
            Conn.execute("Update Course set title='" & T & "',credits='" & C & "' where ID= " & ID )
            response.redirect("Course.asp")
        else

        Conn.execute("Insert Into Course Values('" & T & "','" & C & "')")
        response.redirect("course.asp")

        end if
             
%>