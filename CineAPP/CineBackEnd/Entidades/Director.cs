﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CineBackEnd.Entidades
{
    
    public class Director
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int Edad { get; set; }
        public Pais Nacionalidad { get; set; }
        public Director()
        {
            ID = 0;
            Nombre = "";
            Apellido = "";
            Edad = 0;
            Nacionalidad = new Pais();
             
        }
        public override string ToString()
        {
            return $"{Nombre} {Apellido}";
        }
    }
}
