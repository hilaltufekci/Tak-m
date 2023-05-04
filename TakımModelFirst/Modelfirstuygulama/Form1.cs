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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Model1Container1 baglanti = new Model1Container1();

        public bool GirisYap(string ad, string sifre)
        {
            var query = from p in baglanti.KullaniciSet where p.KullaniciAdi == ad && p.Sifre == sifre select p;
            if (query.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            {
                if (GirisYap(textBox1.Text, textBox2.Text))
                {
                    MessageBox.Show("Başarılı birşekilde giriş yaptınız.");
                    Yonlendirme go = new Yonlendirme();
                    go.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Hatalı kullanıcı adı veya şifre.Tekrar deneyiniz.");
                    textBox1.Clear();
                    textBox2.Clear();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
           
            Yonlendirme go = new Yonlendirme();
            go.Show();
            this.Hide();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            groupBox2.Visible = false;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            groupBox2.Visible = true;
        }
    }
}
