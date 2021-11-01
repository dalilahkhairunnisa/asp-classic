<% 
    Set Conn = Server.CreateObject("ADODB.Connection")
    Set Rec = Server.CreateObject("ADODB.recordset")
        Conn.open("Provider=SQLOLEDB; Data Source=LAPTOP-SKOTDA7R; initial catalog=vbs; User ID=sa;password=dalilah554")

    ID = Request.QueryString("ID")

    if trim(ID) = "" or isnull(ID) or trim(ID) = "0" then 
    
    end if

    Conn.execute("delete from Enrollment where ID = " & ID)

    response.redirect("enrollment.asp")
%>