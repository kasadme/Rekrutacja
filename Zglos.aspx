<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zglos.aspx.cs" Inherits="WebApplication7.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body style="background-color: #CCCCCC">
    <header class="py-3" style="background-color:#77a548">
    <div class="container d-flex flex-wrap justify-content-center">
      <a href="#" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-light text-decoration-none">
        <span class="fs-4">Zespół Szkół w Pcimiu Dolnym - Zgłoś Błąd</span>
      <ul class="nav">
        <li class="nav-item"><a href="#" class="nav-link link-light px-2 active"><img src="Content/adminicon.png" /></a></li>
      </ul>
      </a>
    </div>
  </header>
    
    <div class="d-flex justify-content-center">
        <div class="w-75 p-4 bg-light d-flex justify-content-center">
            <form runat="server" class="row g-3">
            <asp:Label runat="server" ID="poprawne"></asp:Label>
            <div class="mb-3">
              <label for="zgloszenie_email" class="form-label">Wpisz email:</label>
              <asp:TextBox runat="server" class="form-control" ID="zgloszenie_email"></asp:TextBox>
            </div>
            <div class="mb-3">
              <label for="zgloszenie_tresc" class="form-label">Treść zgłoszenia:</label>
              <asp:TextBox runat="server" class="form-control" ID="zgloszenie_tresc" TextMode="MultiLine"></asp:TextBox>
            </div>
                <asp:button runat="server" type="submit" class="me-1 col-2 btn btn-primary" onclick="Wyslij_zgloszenie" Text="Wyślij"></asp:button>
            </form>
      </div>
   </div>
   
  <footer style="background-color:#77a548" class="d-flex flex-wrap justify-content-between align-items-center ps-5 pe-5 pt-4 pb-4 border-top">
    <ul class="nav col-md-4 justify-content-start">
      <li class="nav-item"><a href="#" class="nav-link px-2 text-light">Deklaracja Dostępności</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-light">RODO</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-light">BIP</a></li>
    </ul>

      <p class="col-md-4 mb-0 text-light">© 2022 Zespół Szkół w Pcimiu Dolnym</p>    
      <a href="/" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
    </a>
  </footer>

</body>
</html>
