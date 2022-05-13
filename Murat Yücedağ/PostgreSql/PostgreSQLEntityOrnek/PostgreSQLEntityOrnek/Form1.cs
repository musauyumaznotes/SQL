using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PostgreSQLEntityOrnek
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Context c = new Context();
        private void btnListele_Click(object sender, EventArgs e)
        {
            
            var degerler = c.Birims.OrderBy(b=>b.birimid).ToList();
            dataGridView1.DataSource = degerler;
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            Birim b = new Birim();
            b.birimad = txtBirimAdi.Text;
            c.Birims.Add(b);
            c.SaveChanges();
            MessageBox.Show("Birim Eklendi");
        }

        private void btnSil_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtBirimId.Text);
            var x = c.Birims.Find(id);
            c.Birims.Remove(x);
            c.SaveChanges();
            MessageBox.Show("Birim Başarılı Şekilde Silindi");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtBirimId.Text);
            var x = c.Birims.Find(id);
            x.birimad = txtBirimAdi.Text;
            c.SaveChanges();
            MessageBox.Show("Birim Başarılı Bir Şekilde Güncellendi");
        }
    }
}
