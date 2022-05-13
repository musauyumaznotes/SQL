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
    public partial class FrmUrun : Form
    {
        public FrmUrun()
        {
            InitializeComponent();
        }
        NpgsqlConnection baglanti = new NpgsqlConnection("server=localHost; port=5432; Database=dburunler; user Id=postgres; password=12345");
        private void btnListele_Click(object sender, EventArgs e)
        {
            string sorgu = "select * from urunler order by urunid";
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(sorgu,baglanti);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            dataGridView1.DataSource = dataSet.Tables[0]; 
        }

        private void FrmUrun_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("select * from kategoriler",baglanti);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            comboBoxKategori.DisplayMember = "kategoriad";
            comboBoxKategori.ValueMember = "kategoriid";
            comboBoxKategori.DataSource = dataTable;
            baglanti.Close();
        }

        private void btnEkle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut1 = new NpgsqlCommand("insert into urunler (urunid,urunad,stok,alisfiyat,satisfiyat,gorsel,kategori)" +
                " values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)",baglanti);
            komut1.Parameters.AddWithValue("@p1",int.Parse( txtUrunId.Text));
            komut1.Parameters.AddWithValue("@p2", txtUrunAd.Text);
            komut1.Parameters.AddWithValue("@p3",int.Parse (numericUpDownStok.Value.ToString()));
            komut1.Parameters.AddWithValue("@p4",double.Parse (txtAlisFiyat.Text));
            komut1.Parameters.AddWithValue("@p5",double.Parse (txtSatisFiyat.Text));
            komut1.Parameters.AddWithValue("@p6", txtGorsel.Text);
            komut1.Parameters.AddWithValue("@p7",int.Parse (comboBoxKategori.SelectedValue.ToString()));
            komut1.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Ürün Kaydı Başarılı Bir Şekilde Gerçekleşti","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut2 = new NpgsqlCommand("Delete From Urunler where urunid=@p1",baglanti);
            komut2.Parameters.AddWithValue("@p1",int.Parse(txtUrunId.Text));
            komut2.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Ürün Silme İşlemi Başarılı Bir Şekilde Gerçekleşti","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Stop);
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut3 = new NpgsqlCommand("update urunler set urunad=@p1 ,stok=@p2 , alisfiyat=@p3 ,satisfiyat=@p4 ,gorsel=@p5 ,kategori=@p6 where urunid=@p7",baglanti);
            komut3.Parameters.AddWithValue("@p1",txtUrunAd.Text);
            komut3.Parameters.AddWithValue("@p2", int.Parse(numericUpDownStok.Value.ToString()));
            komut3.Parameters.AddWithValue("@p3", double.Parse(txtAlisFiyat.Text));
            komut3.Parameters.AddWithValue("@p4", double.Parse(txtSatisFiyat.Text));
            komut3.Parameters.AddWithValue("@p5", txtGorsel.Text);
            komut3.Parameters.AddWithValue("@p6", int.Parse(comboBoxKategori.SelectedValue.ToString()));
            komut3.Parameters.AddWithValue("@p7", int.Parse(txtUrunId.Text));
            komut3.ExecuteNonQuery();
            baglanti.Close();
            MessageBox.Show("Ürün Güncelleme İşlemi Başarılı Bir Şekilde Gerçekleşti", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            NpgsqlCommand komut4 = new NpgsqlCommand("Select * from urunlistesi",baglanti);
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter(komut4);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            dataGridView1.DataSource = dataSet.Tables[0];
            baglanti.Close();
        }
    }
}
