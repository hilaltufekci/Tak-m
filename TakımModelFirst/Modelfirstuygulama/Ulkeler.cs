using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Modelfirstuygulama
{
    public partial class Ulkeler : Form
    {
        public Ulkeler()
        {
            InitializeComponent();
        }
        Model1Container1 baglanti = new Model1Container1();

        public void Listele()
        {
            dataGridView1.DataSource = baglanti.UlkeSet.ToList();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            Listele();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int UlkeNo = Convert.ToInt32(textBox1.Tag);
            var yenile = baglanti.UlkeSet.Where(x => x.UlkeNo == UlkeNo).FirstOrDefault();
            yenile.UlkeAdi = textBox1.Text;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Ulke save = new Ulke();
            save.UlkeAdi = textBox1.Text;
            baglanti.UlkeSet.Add(save);
            baglanti.SaveChanges();
            Listele();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int UlkeNo = Convert.ToInt32(textBox1.Tag);
            var sil = baglanti.UlkeSet.Where(x => x.UlkeNo == UlkeNo).FirstOrDefault();
            baglanti.UlkeSet.Remove(sil);
            baglanti.SaveChanges();
            Listele();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = baglanti.UlkeSet .Where(s => s.UlkeAdi.Contains(textBox1.Text)).ToList();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {

            DataGridViewRow satir = dataGridView1.CurrentRow;
            textBox1.Tag = satir.Cells["UlkeNo"].Value.ToString();
            textBox1.Text = satir.Cells["UlkeAdi"].Value.ToString();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Yonlendirme go = new Yonlendirme();
            go.Show();
            this.Hide();
        }
    }
}
