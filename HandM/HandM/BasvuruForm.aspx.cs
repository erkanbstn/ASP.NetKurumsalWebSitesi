using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HandM.Entity;
using System.Data.SqlClient;
using System.Data;

namespace HandM
{
    public partial class BasvuruForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Session["AdSoyad"] = "";

                if (Session["AdSoyad"].ToString() != "")
                {
                    TxtAdSoyad.Text = "";
                }
                else
                {
                    TxtAdSoyad.Text = Session["AdSoyad"].ToString();
                }


                DropUni.Enabled = false;
                DropUlke.Items.Insert(0, "Seçiniz");
                DropUlke2.Items.Insert(0, "Seçiniz");
                DropIl.Items.Insert(0, "Seçiniz");
                DropLise.Items.Insert(0, "Seçiniz");
                DropUni.Items.Insert(0, "Seçiniz");

                DropEgitim.Items.Insert(0, "Lise");
                DropEgitim.Items.Insert(1, "Üniversite");


                Baglanti.bgl.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Ulke", Baglanti.bgl);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropUlke.Items.Add(dr["UlkeAdi"].ToString());
                    DropUlke2.Items.Add(dr["UlkeAdi"].ToString());
                }
                dr.Close();
                Baglanti.bgl.Close();





                Baglanti.bgl.Open();
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM Sehir where UlkeID=@p1 ", Baglanti.bgl);
                cmd2.Parameters.AddWithValue("@p1", DropUlke2.SelectedIndex.ToString());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    DropIl.Items.Add(dr2["SehirAdi"].ToString());
                }
                dr2.Close();
                Baglanti.bgl.Close();



                Baglanti.bgl.Open();
                SqlCommand cmd3 = new SqlCommand("SELECT * FROM Lise", Baglanti.bgl);
                SqlDataReader dr3 = cmd3.ExecuteReader();
                while (dr3.Read())
                {
                    DropLise.Items.Add(dr3["LiseAdi"].ToString());
                }
                dr3.Close();
                Baglanti.bgl.Close();


                Baglanti.bgl.Open();
                SqlCommand cmd4 = new SqlCommand("SELECT * FROM Universite", Baglanti.bgl);
                SqlDataReader dr4 = cmd4.ExecuteReader();
                while (dr4.Read())
                {
                    DropUni.Items.Add(dr4["UniversiteAdi"].ToString());
                }
                dr3.Close();
                Baglanti.bgl.Close();


            }
        }
        int ulke;

        protected void DropUlke2_SelectedIndexChanged(object sender, EventArgs e)
        {
            ulke = DropUlke2.SelectedIndex;
            Baglanti.bgl.Open();
            SqlCommand cmd4 = new SqlCommand("SELECT * FROM Sehir Where UlkeID=@p1", Baglanti.bgl);
            cmd4.Parameters.AddWithValue("@p1", ulke);
            SqlDataAdapter ad = new SqlDataAdapter(cmd4);
            DataTable t = new DataTable();
            ad.Fill(t);
            DropIl.DataSource = t;
            DropIl.DataTextField = "SehirAdi";
            DropIl.DataValueField = "ID";
            DropIl.DataBind();
            Baglanti.bgl.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!CheckBox1.Checked)
                TxtBitTarih.Enabled = true;
            else
                TxtBitTarih.Enabled = false;
        }

        protected void DropEgitim_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropEgitim.Text == "Lise")
            {
                DropLise.Enabled = true;
                DropUni.Enabled = false;
            }

            else
            {
                DropLise.Enabled = false;
                DropUni.Enabled = true;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox2.Checked)
            {
                Basvuru b = new Basvuru();
                Session["AdSoyad"] = TxtAdSoyad.Text;
                b.AdSoyad = TxtAdSoyad.Text;
                b.Cinsiyet = RadioList.SelectedValue;
                b.UyrukID = DropUlke.SelectedIndex;
                b.DogumTarihi = Convert.ToDateTime(TxtDogumT.Text);
                b.Sehir = DropIl.SelectedIndex + 1;
                b.Email = TxtEmail.Text;
                b.Telefon = TxtTelefon.Text;
                b.Aciklama = TxtKariyer.Text;

                if (DropEgitim.SelectedValue == "Lise")
                {
                    b.EgitimDurumu = "L";
                }
                else
                {
                    b.EgitimDurumu = "U";
                }
                b.EgitimBasTarih = Convert.ToDateTime(TxtBasTarih.Text);
                if (CheckBox1.Checked)
                {
                    b.DevamDurumu = "E";
                }
                else
                {
                    b.DevamDurumu = "H";
                    b.EgitimBitTarih = Convert.ToDateTime(TxtBitTarih.Text);
                }
                if (DropLise.Enabled)
                {
                    b.LiseAdi = DropLise.SelectedIndex + 1;
                }
                else
                {
                    b.UniversiteAdi = DropUni.SelectedIndex + 1;
                }

                try
                {
                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath($"uploads/{DateTime.Now}_{FileUpload1.FileName}"));
                        b.OzGecmisDosyaAd = $"uploads/{DateTime.Now}_{FileUpload1.FileName}";
                    }
                }
                catch (Exception)
                {
                    System.IO.File.Delete(Server.MapPath($"uploads/{DateTime.Now}_{FileUpload1.FileName}"));
                    FileUpload1.SaveAs(Server.MapPath($"uploads/{DateTime.Now}_{FileUpload1.FileName}"));
                    b.OzGecmisDosyaAd = $"uploads/{DateTime.Now}_{FileUpload1.FileName}";
                }
                Baglanti.db.Basvuru.Add(b);
                Baglanti.db.SaveChanges();



            }
            else
            {
                Response.Write("<script>alert('KVKK Metnini Kabul Etmek Zorundasınız.')</script>");
            }
        }
    }
}