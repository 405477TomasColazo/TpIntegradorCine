﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CineFrontEnd.Formularios
{
    public partial class FrmFuncionesSeleccionar : Form
    {
        int id = -1;
        public FrmFuncionesSeleccionar()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FrmFuncionesSeleccionar_Load(object sender, EventArgs e)
        {

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (id != -1)
            {


                DialogResult = MessageBox.Show("¿Seguro desea editar la funcion?");

                if (DialogResult == DialogResult.OK || DialogResult == DialogResult.Yes)
                {
                    FrmFuncion x = new FrmFuncion(id, "editar");
                }
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (id != -1)
            {


                DialogResult = MessageBox.Show("¿Seguro desea Eliminar la funcion?");

                if (DialogResult == DialogResult.OK || DialogResult == DialogResult.Yes)
                {
                   
                }
            }
        }
    }
}
