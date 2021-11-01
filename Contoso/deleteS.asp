<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")

    id = Request.QueryString("ID")

    if trim(id) = "" or isnull(id) or trim(id) = "0" then 
    
    end if

    Conn.execute("delete from Student where ID = " & id)

    response.redirect("student.asp")
%>