using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AutoDeploy
{
    public partial class Form1 : Form
    {
        Dictionary<string, DateTime> fileStatus = new Dictionary<string, DateTime>();
        List<string> liMsg = new List<string>();

        public Form1()
        {
            InitializeComponent();
            txt_From.Text = @"C:\Users\Tony\AppData\Roaming\MetaQuotes\Terminal\5D02194F11DBA732CFA5803070C3CD1E\MQL4\EA";
            txt_To.Text = @"C:\Users\Tony\Desktop\MT4\E哥_IG\MQL4\Experts";
            lbl_TimerStatus.Text = timer1.Enabled.ToString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DirectoryInfo info = new DirectoryInfo(txt_From.Text);
            FileInfo[] files = info.GetFiles();
            foreach (FileInfo file in files)
            {
                if (!(file.Extension == ".ex4"))
                    continue;

                if (!fileStatus.ContainsKey(file.Name))
                {
                    File.Copy(file.FullName, txt_To.Text + "\\" + file.Name, true);
                    fileStatus.Add(file.Name, file.LastWriteTime);
                    SetLog(DateTime.Now.ToString() + " Copied " + file.Name);
                    continue;
                }

                if (fileStatus[file.Name] != file.LastWriteTime)
                {
                    File.Copy(file.FullName, txt_To.Text + "\\" + file.Name, true);
                    fileStatus[file.Name] = file.LastWriteTime;
                    SetLog(DateTime.Now.ToString() + " Copied " + file.Name);
                    continue;
                }
            }
        }

        private void btn_StartTimer_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
            lbl_TimerStatus.Text = timer1.Enabled.ToString();
        }

        private void btn_StopTimer_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            lbl_TimerStatus.Text = timer1.Enabled.ToString();
        }

        private void SetLog(string msg)
        {
            liMsg.Add(msg);

            string tmp = "";

            for(int i=0; i< liMsg.Count; i++)
            {
                tmp += liMsg[i] + "\r\n";
            }

            txt_Log.Text = tmp;

            if(liMsg.Count > 10)
            {
                liMsg = new List<string>();
            }
        }
    }
}
