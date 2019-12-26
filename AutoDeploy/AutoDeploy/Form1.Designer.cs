namespace AutoDeploy
{
    partial class Form1
    {
        /// <summary>
        /// 設計工具所需的變數。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清除任何使用中的資源。
        /// </summary>
        /// <param name="disposing">如果應該處置 Managed 資源則為 true，否則為 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 設計工具產生的程式碼

        /// <summary>
        /// 此為設計工具支援所需的方法 - 請勿使用程式碼編輯器修改
        /// 這個方法的內容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_To = new System.Windows.Forms.TextBox();
            this.txt_From = new System.Windows.Forms.TextBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btn_StopTimer = new System.Windows.Forms.Button();
            this.btn_StartTimer = new System.Windows.Forms.Button();
            this.lbl_TimerStatus = new System.Windows.Forms.Label();
            this.txt_Log = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(31, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(30, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "From";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 110);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(18, 12);
            this.label2.TabIndex = 1;
            this.label2.Text = "To";
            // 
            // txt_To
            // 
            this.txt_To.Location = new System.Drawing.Point(33, 136);
            this.txt_To.Name = "txt_To";
            this.txt_To.Size = new System.Drawing.Size(479, 22);
            this.txt_To.TabIndex = 2;
            // 
            // txt_From
            // 
            this.txt_From.Location = new System.Drawing.Point(33, 49);
            this.txt_From.Name = "txt_From";
            this.txt_From.Size = new System.Drawing.Size(479, 22);
            this.txt_From.TabIndex = 3;
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 4000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // btn_StopTimer
            // 
            this.btn_StopTimer.Location = new System.Drawing.Point(114, 173);
            this.btn_StopTimer.Name = "btn_StopTimer";
            this.btn_StopTimer.Size = new System.Drawing.Size(75, 23);
            this.btn_StopTimer.TabIndex = 4;
            this.btn_StopTimer.Text = "Stop Timer";
            this.btn_StopTimer.UseVisualStyleBackColor = true;
            this.btn_StopTimer.Click += new System.EventHandler(this.btn_StopTimer_Click);
            // 
            // btn_StartTimer
            // 
            this.btn_StartTimer.Location = new System.Drawing.Point(33, 173);
            this.btn_StartTimer.Name = "btn_StartTimer";
            this.btn_StartTimer.Size = new System.Drawing.Size(75, 23);
            this.btn_StartTimer.TabIndex = 5;
            this.btn_StartTimer.Text = "Start Timer";
            this.btn_StartTimer.UseVisualStyleBackColor = true;
            this.btn_StartTimer.Click += new System.EventHandler(this.btn_StartTimer_Click);
            // 
            // lbl_TimerStatus
            // 
            this.lbl_TimerStatus.AutoSize = true;
            this.lbl_TimerStatus.Location = new System.Drawing.Point(219, 173);
            this.lbl_TimerStatus.Name = "lbl_TimerStatus";
            this.lbl_TimerStatus.Size = new System.Drawing.Size(33, 12);
            this.lbl_TimerStatus.TabIndex = 6;
            this.lbl_TimerStatus.Text = "label3";
            // 
            // txt_Log
            // 
            this.txt_Log.Location = new System.Drawing.Point(33, 202);
            this.txt_Log.Multiline = true;
            this.txt_Log.Name = "txt_Log";
            this.txt_Log.Size = new System.Drawing.Size(479, 349);
            this.txt_Log.TabIndex = 7;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(611, 595);
            this.Controls.Add(this.txt_Log);
            this.Controls.Add(this.lbl_TimerStatus);
            this.Controls.Add(this.btn_StartTimer);
            this.Controls.Add(this.btn_StopTimer);
            this.Controls.Add(this.txt_From);
            this.Controls.Add(this.txt_To);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_To;
        private System.Windows.Forms.TextBox txt_From;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Button btn_StopTimer;
        private System.Windows.Forms.Button btn_StartTimer;
        private System.Windows.Forms.Label lbl_TimerStatus;
        private System.Windows.Forms.TextBox txt_Log;
    }
}

