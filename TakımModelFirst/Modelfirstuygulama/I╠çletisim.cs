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
    public partial class İletisim : Form
    {
        public İletisim()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Yonlendirme go = new Yonlendirme();
            go.Show();
            this.Hide();
        }
    }
}
