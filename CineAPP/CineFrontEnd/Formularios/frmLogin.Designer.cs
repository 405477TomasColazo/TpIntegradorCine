﻿namespace CineFrontEnd
{
    partial class frmLogin
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            txtUsuario = new TextBox();
            txtContrasenia = new TextBox();
            btnLogin = new Button();
            cboxContrasenia = new CheckBox();
            panel1 = new Panel();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            btnCerrar = new Button();
            pictureBox1 = new PictureBox();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // txtUsuario
            // 
            txtUsuario.BackColor = Color.FromArgb(15, 15, 15);
            txtUsuario.BorderStyle = BorderStyle.None;
            txtUsuario.Font = new Font("Arial", 12F, FontStyle.Regular, GraphicsUnit.Point);
            txtUsuario.ForeColor = Color.DimGray;
            txtUsuario.Location = new Point(300, 84);
            txtUsuario.Margin = new Padding(3, 4, 3, 4);
            txtUsuario.Name = "txtUsuario";
            txtUsuario.Size = new Size(357, 23);
            txtUsuario.TabIndex = 0;
            txtUsuario.Text = "USUARIO";
            txtUsuario.TextChanged += txtUsuario_TextChanged;
            txtUsuario.Enter += txtUsuario_Enter;
            txtUsuario.Leave += txtUsuario_Leave;
            // 
            // txtContrasenia
            // 
            txtContrasenia.BackColor = Color.FromArgb(15, 15, 15);
            txtContrasenia.BorderStyle = BorderStyle.None;
            txtContrasenia.Font = new Font("Arial", 12F, FontStyle.Regular, GraphicsUnit.Point);
            txtContrasenia.ForeColor = Color.DimGray;
            txtContrasenia.Location = new Point(300, 146);
            txtContrasenia.Margin = new Padding(3, 4, 3, 4);
            txtContrasenia.Name = "txtContrasenia";
            txtContrasenia.PasswordChar = '*';
            txtContrasenia.Size = new Size(357, 23);
            txtContrasenia.TabIndex = 1;
            txtContrasenia.Text = "CONTRASEÑA";
            txtContrasenia.TextChanged += txtContrasenia_TextChanged;
            txtContrasenia.Enter += txtContrasenia_Enter;
            txtContrasenia.Leave += txtContrasenia_Leave;
            // 
            // btnLogin
            // 
            btnLogin.BackColor = Color.FromArgb(40, 40, 40);
            btnLogin.FlatAppearance.BorderSize = 0;
            btnLogin.FlatAppearance.MouseDownBackColor = Color.FromArgb(28, 28, 28);
            btnLogin.FlatAppearance.MouseOverBackColor = Color.FromArgb(64, 64, 64);
            btnLogin.FlatStyle = FlatStyle.Flat;
            btnLogin.ForeColor = Color.LightGray;
            btnLogin.Location = new Point(292, 212);
            btnLogin.Margin = new Padding(3, 4, 3, 4);
            btnLogin.Name = "btnLogin";
            btnLogin.Size = new Size(448, 41);
            btnLogin.TabIndex = 4;
            btnLogin.Text = "INGRESAR";
            btnLogin.UseVisualStyleBackColor = false;
            btnLogin.Click += btnLogin_Click;
            // 
            // cboxContrasenia
            // 
            cboxContrasenia.AutoSize = true;
            cboxContrasenia.FlatStyle = FlatStyle.Flat;
            cboxContrasenia.Font = new Font("Nirmala UI", 8F, FontStyle.Bold, GraphicsUnit.Point);
            cboxContrasenia.ForeColor = Color.DimGray;
            cboxContrasenia.Location = new Point(292, 294);
            cboxContrasenia.Margin = new Padding(3, 4, 3, 4);
            cboxContrasenia.Name = "cboxContrasenia";
            cboxContrasenia.Size = new Size(157, 23);
            cboxContrasenia.TabIndex = 5;
            cboxContrasenia.Text = "Mostrar contraseña";
            cboxContrasenia.UseVisualStyleBackColor = true;
            cboxContrasenia.CheckedChanged += cboxContrasenia_CheckedChanged;
            // 
            // panel1
            // 
            panel1.BackColor = Color.FromArgb(51, 51, 51);
            panel1.Controls.Add(pictureBox1);
            panel1.Dock = DockStyle.Left;
            panel1.Location = new Point(0, 0);
            panel1.Name = "panel1";
            panel1.Size = new Size(250, 330);
            panel1.TabIndex = 6;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BorderStyle = BorderStyle.FixedSingle;
            label1.ForeColor = Color.DimGray;
            label1.Location = new Point(292, 84);
            label1.Name = "label1";
            label1.Size = new Size(2, 22);
            label1.TabIndex = 7;
            label1.Click += label1_Click_1;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.BorderStyle = BorderStyle.FixedSingle;
            label2.ForeColor = Color.DimGray;
            label2.Location = new Point(292, 146);
            label2.Name = "label2";
            label2.Size = new Size(2, 22);
            label2.TabIndex = 8;
            label2.Click += label2_Click;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 15F, FontStyle.Bold, GraphicsUnit.Point);
            label3.ForeColor = Color.FromArgb(229, 9, 20);
            label3.Location = new Point(476, 9);
            label3.Name = "label3";
            label3.Size = new Size(92, 35);
            label3.TabIndex = 9;
            label3.Text = "LOGIN";
            label3.Click += label3_Click;
            // 
            // btnCerrar
            // 
            btnCerrar.FlatAppearance.BorderSize = 0;
            btnCerrar.FlatStyle = FlatStyle.Flat;
            btnCerrar.ForeColor = Color.White;
            btnCerrar.Location = new Point(742, 0);
            btnCerrar.Name = "btnCerrar";
            btnCerrar.Size = new Size(37, 31);
            btnCerrar.TabIndex = 0;
            btnCerrar.Text = "X";
            btnCerrar.UseVisualStyleBackColor = true;
            btnCerrar.Click += btnCerrar_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = Properties.Resources.cineedit;
            pictureBox1.Location = new Point(-18, 41);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(268, 239);
            pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // frmLogin
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(15, 15, 15);
            ClientSize = new Size(780, 330);
            Controls.Add(btnCerrar);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(panel1);
            Controls.Add(cboxContrasenia);
            Controls.Add(btnLogin);
            Controls.Add(txtContrasenia);
            Controls.Add(txtUsuario);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(3, 4, 3, 4);
            Name = "frmLogin";
            Opacity = 0.8D;
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Login";
            Load += frnPrincipal_Load;
            panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox txtUsuario;
        private TextBox txtContrasenia;
        private Button btnLogin;
        private CheckBox cboxContrasenia;
        private Panel panel1;
        private Label label1;
        private Label label2;
        private Label label3;
        private Button btnCerrar;
        private PictureBox pictureBox1;
    }
}