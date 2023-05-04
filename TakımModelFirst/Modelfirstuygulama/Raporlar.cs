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
    public partial class Raporlar : Form
    {
        
        public Raporlar()
        {
            InitializeComponent();
        }
        Model1Container1 baglan = new Model1Container1();
        private void button6_Click(object sender, EventArgs e)
        {
            Yonlendirme go = new Yonlendirme();
            go.Show();
            this.Hide();
        }
       
        private void button1_Click(object sender, EventArgs e)
        {
            var query = from oyuncu in baglan.OyuncuSet orderby oyuncu.Adi descending select oyuncu;
            dataGridView1.DataSource = query.ToList();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var query = from oyuncu in baglan.UlkeSet  orderby oyuncu.UlkeAdi select oyuncu;
            dataGridView1.DataSource = query.ToList();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var query = from oyuncu in baglan.OyuncuSet orderby oyuncu.Maas descending  select oyuncu;
            dataGridView1.DataSource = query.ToList();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            var query = baglan.OyuncuSet.Where(oyuncu => oyuncu.Ulke == "Türkiye");
            dataGridView1.DataSource = query.ToList();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            var query = baglan.OyuncuSet.Where(o => o.Ulke == "Türkiye" && o.Yas >25);
            dataGridView1.DataSource = query.ToList();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            
            var query = from o in baglan.OyuncuSet
                        join t in baglan.TakimSet on o.TakimNo equals t.TakimNo
                        select new
                        {
                            o.Adi,
                            o.Soyadi,
                            o.Yas,
                            t.TakimAdi,

                        };
            dataGridView1.DataSource = query.ToList();
        }

        private void button8_Click(object sender, EventArgs e)
        {
              var query = baglan.OyuncuSet .Where(a => a.Ulke == "Türkiye").GroupBy(a => a.Yas);
           dataGridView1.DataSource = query.ToList();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            var query = from t in baglan.TakimSet 
                        join o in baglan.OyuncuSet  on t.TakimNo  equals o.TakimNo 
                        join m in baglan.MevkiSet  on o.MevkiNo  equals m.MevkiNo 
                        select new
                        {
                           t.TakimAdi,
                           o.Adi,
                           o.Soyadi,
                           o.Yas,
                           o.Ulke,
                           m.MevkiAdi
                        };
            dataGridView1.DataSource = query.ToList();
        }
       

    }
}
