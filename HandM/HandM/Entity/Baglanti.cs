using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace HandM.Entity
{
    public  static class Baglanti
    {
        public static HandMDBEntities db = new HandMDBEntities();
        public static SqlConnection bgl = new SqlConnection("data source=GEOPC\\SQLEXPRESS;initial catalog=HandMDB;integrated security=True;MultipleActiveResultSets=True;");
    }
}