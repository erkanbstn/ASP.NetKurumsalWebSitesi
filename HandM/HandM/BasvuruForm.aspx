<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="BasvuruForm.aspx.cs" Inherits="HandM.BasvuruForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <head>
        <title>Organic Food Agriculture Category Bootstrap Responsive Web Template | Contact Us :: W3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Organic Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <link rel="stylesheet" href="SiteWeb/css/bootstrap.css">
        <link rel="stylesheet" href="SiteWeb/css/style.css" type="text/css" media="all" />
        <link href="SiteWeb/css/font-awesome.min.css" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Mada:200,300,400,500,600,700,900&amp;subset=arabic" rel="stylesheet">
    </head>
    <body>
        <section class="contact py-5">
            <form runat="server" class="form-control">
                <div class="container py-xl-5 py-lg-3">
                    <h3 class="title-w3 mb-5 font-weight-bold">Başvuru Formu<span>Bize Gönderin</span></h3>
                    <div class="row">
                        <!-- contact form -->
                        <div class="col-lg-6 contact-us1-bottom w3layouts-w3ls">
                            <div class="form-group">
                                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" placeholder="Ad Soyad" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:RadioButtonList CssClass="btn btn-warning" ID="RadioList" runat="server">
                                    <asp:ListItem Value="E">Erkek</asp:ListItem>
                                    <asp:ListItem Value="K">Kadın</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropUlke" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtDogumT" runat="server" type="date" CssClass="form-control" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email" CssClass="form-control" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtTelefon" runat="server" placeholder="Telefon" CssClass="form-control" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropUlke2" AutoPostBack="true" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropUlke2_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropIl" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtKariyer" runat="server" TextMode="MultiLine" placeholder="Kariyer Hedefleriniz" CssClass="form-control" required=""></asp:TextBox>
                            </div>

                            <br />
                            <br />

                            <h3>EĞİTİM BİLGİLERİ</h3>

                            <div class="form-group">
                                <asp:DropDownList ID="DropEgitim" CssClass="form-control" AutoPostBack="true" required="" runat="server" OnSelectedIndexChanged="DropEgitim_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtBasTarih" runat="server" type="date" CssClass="form-control" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtBitTarih" runat="server" type="date" CssClass="form-control" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Devam Ediyorum" CssClass="form-control" AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" />
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropLise" runat="server" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="DropUni" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                            </div>
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Site Kurallarını Ve KVKK Koşullarını Kabul Ediyorum." CssClass="form-control" />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Gönder" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </form>
        </section>
    </body>
</asp:Content>
