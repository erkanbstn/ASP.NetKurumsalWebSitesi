<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="DetayGoster.aspx.cs" Inherits="HandM.DetayGoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <form runat="server" class="form-control">
        <div class="form-group">
            <asp:TextBox ID="TxtAdSoyad" ReadOnly="true" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1">Olumlu</asp:ListItem>
                <asp:ListItem Value="2">Olumsuz</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form-group">
            <asp:Button ID="BtnKaydet" CssClass="btn btn-primary" runat="server" Text="Güncelle" OnClick="BtnKaydet_Click" />
        </div>
    </form>
</asp:Content>
