using HandM.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandM
{
    public partial class DetayGoster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                var x = Baglanti.db.Basvuru.Where(n => n.ID == id).FirstOrDefault();
                TxtAdSoyad.Text = x.AdSoyad;
            }
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var x = Baglanti.db.Basvuru.Where(n => n.ID == id).FirstOrDefault();
            x.BasvuruSonucu = RadioButtonList1.SelectedValue;
            Baglanti.db.SaveChanges();
        }
    }
}