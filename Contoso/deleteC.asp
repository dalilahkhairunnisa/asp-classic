<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")

    courseid = Request.QueryString("ID")

    if trim(courseid) = "" or isnull(courseid) or trim(courseid) = "0" then 
    
    end if

    Conn.execute("delete from Course where ID = " & courseid)

    response.redirect("course.asp")
%>