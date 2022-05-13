using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PostgreUrunProje
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        NpgsqlConnection baglanti = new NpgsqlConnection("server=localHost; port=5432; Database=dburunler; user Id=postgres; password=12345");

        private void btnListele_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from kategoriler";
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(sorgu, baglanti);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            dataGridView1.DataSource = dataSet.Tables[0];
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("insert into kategoriler(kategoriid,kategoriad) values(@p1,@p2)",baglanti);
            komut1.Parameters.AddWithValue("@p1",int.Parse( txtKategoriId.Text));
            komut1.Parameters.AddWithValue("@p2",txtKategoriAd.Text);
            komut1.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Kategori Ekleme İşlemi Başarılı Bir Şekilde Gerçekleşti");


        }
    }
}
