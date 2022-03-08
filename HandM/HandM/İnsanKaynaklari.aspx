<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="İnsanKaynaklari.aspx.cs" Inherits="HandM.İnsanKaynaklari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 20px">
        <br />
        <h2>İnsan Kaynakları Başvuru Değerlendirme Formu</h2>
        <br />
        <table class="table table-bordered">
            <tr>
                <th>Adı Soyadı</th>
                <th>Cinsiyet</th>
                <th>Uyruk</th>
                <th>Doğum Tarihi</th>
                <th>Email</th>
                <th>Cep Telefonu</th>
                <th>Eğitim Durumu</th>
                <th>Değerlendirme</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("AdSoyad")%></td>
                        <td><%#Eval("Cinsiyet")%></td>
                        <td><%#Eval("UyrukID")%></td>
                        <td><%#Eval("DogumTarihi")%></td>
                        <td><%#Eval("Email")%></td>
                        <td><%#Eval("Telefon")%></td>
                        <td><%#Eval("EgitimDurumu")%></td>
                        <td><%#Eval("BasvuruSonucu")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"DetayGoster.aspx?ID="+Eval("ID")%>' runat="server" CssClass="btn btn-warning">DÜZENLE</asp:HyperLink></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </table>
    </div>
</asp:Content>
