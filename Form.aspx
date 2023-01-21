<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebApplication7.WebForm2" %>

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
        <span class="fs-4">Zespół Szkół w Pcimiu Dolnym - Rekrutacja</span>
      <ul class="nav">
        <li class="nav-item"><a href="#" class="nav-link link-light px-2 active"><img src="Content/adminicon.png" /></a></li>
      </ul>
      </a>
    </div>
  </header>
    
    <div class="d-flex justify-content-center">
        <div class="w-75 p-4 bg-light d-flex justify-content-center">
            <form runat="server" class="row g-3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
              <fieldset class="row g-3">
                  <legend>Dane podstawowe</legend>
              <div class="col-md-4">
                <asp:label for="imie" class="form-label" runat="server">Imię</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="imie"></asp:TextBox>
              </div>
              <div class="col-md-4">
                <asp:label for="drugie_imie" class="form-label" runat="server">Drugie imię</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="drugie_imie"></asp:TextBox>
              </div>
              <div class="col-5">
                <asp:label runat="server" for="nazwisko" class="form-label">Nazwisko</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="nazwisko"></asp:TextBox>
              </div>
              <div class="col-7"></div>
              <div class="col-5">
                <asp:label runat="server" for="adres_ulica" class="form-label">Ulica</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="adres_ulica"></asp:TextBox>
              </div>
              <div class="col-2">
                <asp:label runat="server" for="adres_nrdomu" class="form-label">Numer domu</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="adres_nrdomu" TextMode="Number"></asp:TextBox>
              </div>
              <div class="col-2">
                <asp:label runat="server" for="adres_nrmieszkania" class="form-label">Numer mieszkania</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="adres_nrmieszkania" TextMode="Number"></asp:TextBox>
              </div>
              <div class="col-4">
                <asp:label runat="server" for="nr_telefonu" class="form-label">Numer telefonu</asp:label>
                <asp:TextBox runat="server" class="form-control" ID="nr_telefonu" TextMode="Number"></asp:TextBox>
              </div>
              <div class="col-4">
                <asp:label runat="server" for="email" class="form-label">Adres e-mail</asp:label>
                <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon1">@</span>
                <asp:TextBox runat="server" class="form-control" ID="email" TextMode="Email"></asp:TextBox>
              </div>
              </div>
                </fieldset>
                <fieldset class="row g-3">
                    <legend>Dane rodziców</legend>
                    <div class="form-text">W przypadku braku rodzica, należy wpisać dane opiekuna prawnego.</div>
                    <div class="col-4">
                        <asp:label runat="server" class="form-label" for="imie_matki">Imie matki</asp:label>
                        <asp:TextBox runat="server" class="form-control" ID="imie_matki"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:label runat="server" class="form-label" for="nrtel_matki">Numer telefonu matki</asp:label>
                        <asp:TextBox runat="server" class="form-control" ID="nrtel_matki" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="col-4"></div>
                    <div class="col-4">
                        <asp:label runat="server" class="form-label" for="imie_ojca">Imie ojca</asp:label>
                        <asp:TextBox runat="server" class="form-control" ID="imie_ojca"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:label runat="server" class="form-label" for="nrtel_ojca">Numer telefonu ojca</asp:label>
                        <asp:TextBox runat="server" class="form-control" ID="nrtel_ojca" TextMode="Number"></asp:TextBox>
                    </div>
                </fieldset>
                <fieldset class="row g-3">
                <legend>Wybierz kierunek</legend>
                <div class="col-4">
                    <asp:DropDownList class="form-select" ID="kierunek" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Wybierz...</asp:ListItem>
                        <asp:ListItem Value="informatyka">Informatyka</asp:ListItem>
                        <asp:ListItem Value="ekonomia">Ekonomia</asp:ListItem>
                        <asp:ListItem Value="mechanizacja">Mechanizacja</asp:ListItem>
                        <asp:ListItem Value="logistyka">Logistyka</asp:ListItem>
                    </asp:DropDownList>
                </div>
              </fieldset>
              <fieldset class="row g-3">
                  <legend>Wybierz język dodatkowy</legend>
                    <div class="col-4">
                        <asp:DropDownList class="form-select" ID="jezyk" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Wybierz...</asp:ListItem>
                        <asp:ListItem Value="angielski">Angielski</asp:ListItem>
                        <asp:ListItem Value="niemiecki">Niemiecki</asp:ListItem>
                        <asp:ListItem Value="francuski">Francuski</asp:ListItem>
                    </asp:DropDownList>
                    </div>
              </fieldset>
              <fieldset class="row g-3">
                  <legend>Wpisz oceny znajdujące się na świadectwie ukończenia szkoły podstawowej</legend>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="matematyka">Matematyka</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="matematyka" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="polski">Polski</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="polski" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
                  <p>Wpisz jeszcze 2 oceny z wybranych przez siebie przedmiotów. (W reszcie pozostaw 0)</p>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="angielski">J. angielski</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="angielski" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="niemiecki">J. niemiecki</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="niemiecki" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="fizyka">Fizyka</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="fizyka" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
                  <div class="col-1">
                      <asp:label runat="server" class="form-label" for="biologia">Biologia</asp:label>
                      <asp:TextBox runat="server" class="form-control" ID="biologia" TextMode="Number" min="0" max="6" value="0"></asp:TextBox>
                  </div>
              </fieldset>
              <fieldset class="row g-3">
                    <div class="mt-2 mb-2 form-text">Na podstawie art. 13 ust. 1 i 2 ogólnego rozporządzenia o ochronie danych osobowych z dnia 27 kwietnia 2016 r. (Dziennik Urzędowy Unii Europejskiej 2016/679) 
                        Dyrektor Zespołu Szkół w Pcimiu Dolnym jako administrator danych  osobowych informuje 
                        Panią/Pana, że są zbierane i przetwarzane dane osobowe Pana/Pani w zakresie dydaktyczno-wychowawczej 
                        działalności szkoły. Informuję, że przysługuje Pani/Panu prawo wglądu do swoich danych oraz uzupełniania, 
                        uaktualnienia czy sprostowania w razie stwierdzenia, że dane są niekompletne, nieaktualne lub nieprawdziwe. 
                    </div>
                    <div class="mb-2 form-text">
                        Wysłanie formularza rekrutacyjnego jest jednoznaczne z tym, że zapoznałem/am się z informacją dotyczącą zbierania i przetwarzania moich danych osobowych. Oświadczam, 
                        że wyrażam zgodę na zbieranie i przetwarzanie tych danych w zakresie spraw związanych z przebiegiem nauczania
                    </div>
                    
                    <asp:button runat="server" type="submit" class="me-1 col-1 btn btn-primary" onclick="Wyslij" Text="Wyślij"></asp:button>
                    <asp:button runat="server" class="me-1 col-1 btn btn-primary" onclick="Reset" Text="Reset"></asp:button>
                    
                    <input class="col-1 btn btn-primary" value="Pobierz" type="button" />
              </fieldset>
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
