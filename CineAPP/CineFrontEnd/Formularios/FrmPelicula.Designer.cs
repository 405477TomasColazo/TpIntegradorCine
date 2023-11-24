﻿namespace CineFrontEnd.Formularios
{
    partial class FrmPelicula
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            cboGenero = new ComboBox();
            cboClasificacion = new ComboBox();
            cboProductora = new ComboBox();
            txtTitulo = new TextBox();
            txtDuracion = new TextBox();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            dtpEstreno = new DateTimePicker();
            label6 = new Label();
            btnGuardar = new Button();
            btnClose = new Button();
            SuspendLayout();
            // 
            // cboGenero
            // 
            cboGenero.FormattingEnabled = true;
            cboGenero.Location = new Point(34, 239);
            cboGenero.Name = "cboGenero";
            cboGenero.Size = new Size(151, 28);
            cboGenero.TabIndex = 3;
            // 
            // cboClasificacion
            // 
            cboClasificacion.FormattingEnabled = true;
            cboClasificacion.Location = new Point(219, 239);
            cboClasificacion.Name = "cboClasificacion";
            cboClasificacion.Size = new Size(151, 28);
            cboClasificacion.TabIndex = 4;
            // 
            // cboProductora
            // 
            cboProductora.FormattingEnabled = true;
            cboProductora.Location = new Point(411, 239);
            cboProductora.Name = "cboProductora";
            cboProductora.Size = new Size(151, 28);
            cboProductora.TabIndex = 5;
            // 
            // txtTitulo
            // 
            txtTitulo.Location = new Point(34, 91);
            txtTitulo.Name = "txtTitulo";
            txtTitulo.Size = new Size(125, 27);
            txtTitulo.TabIndex = 0;
            txtTitulo.TextChanged += textBox1_TextChanged;
            // 
            // txtDuracion
            // 
            txtDuracion.Location = new Point(219, 91);
            txtDuracion.Name = "txtDuracion";
            txtDuracion.Size = new Size(125, 27);
            txtDuracion.TabIndex = 1;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(34, 67);
            label1.Name = "label1";
            label1.Size = new Size(56, 20);
            label1.TabIndex = 5;
            label1.Text = "TITULO";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(219, 67);
            label2.Name = "label2";
            label2.Size = new Size(84, 20);
            label2.TabIndex = 6;
            label2.Text = "DURACION";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(219, 216);
            label3.Name = "label3";
            label3.Size = new Size(112, 20);
            label3.TabIndex = 7;
            label3.Text = "CLASIFICACION";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(34, 216);
            label4.Name = "label4";
            label4.Size = new Size(66, 20);
            label4.TabIndex = 8;
            label4.Text = "GENERO";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(411, 216);
            label5.Name = "label5";
            label5.Size = new Size(104, 20);
            label5.TabIndex = 9;
            label5.Text = "PRODUCTORA";
            // 
            // dtpEstreno
            // 
            dtpEstreno.Location = new Point(411, 88);
            dtpEstreno.Name = "dtpEstreno";
            dtpEstreno.Size = new Size(314, 27);
            dtpEstreno.TabIndex = 2;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(411, 65);
            label6.Name = "label6";
            label6.Size = new Size(72, 20);
            label6.TabIndex = 11;
            label6.Text = "ESTRENO";
            // 
            // btnGuardar
            // 
            btnGuardar.Location = new Point(607, 235);
            btnGuardar.Name = "btnGuardar";
            btnGuardar.Size = new Size(119, 36);
            btnGuardar.TabIndex = 6;
            btnGuardar.Text = "Save";
            btnGuardar.UseVisualStyleBackColor = true;
            btnGuardar.Click += btnGuardar_Click;
            // 
            // btnClose
            // 
            btnClose.Location = new Point(704, 391);
            btnClose.Name = "btnClose";
            btnClose.Size = new Size(72, 37);
            btnClose.TabIndex = 14;
            btnClose.Text = "Close";
            btnClose.UseVisualStyleBackColor = true;
            btnClose.Click += btnClose_Click;
            // 
            // FrmPelicula
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 451);
            Controls.Add(btnClose);
            Controls.Add(btnGuardar);
            Controls.Add(label6);
            Controls.Add(dtpEstreno);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtDuracion);
            Controls.Add(txtTitulo);
            Controls.Add(cboProductora);
            Controls.Add(cboClasificacion);
            Controls.Add(cboGenero);
            Name = "FrmPelicula";
            Text = "Pelicula";
            Load += FrmPelicula_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ComboBox cboGenero;
        private ComboBox cboClasificacion;
        private ComboBox cboProductora;
        private TextBox txtTitulo;
        private TextBox txtDuracion;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private DateTimePicker dtpEstreno;
        private Label label6;
        private Button btnGuardar;
        private Button btnClose;
    }
}