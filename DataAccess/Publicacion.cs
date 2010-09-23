using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess
{
    public class Publicacion
    {
        public Publicacion(int idpub, String movie, String placehall, DateTime hora, String Usuario)
        {
        }

        private int id_publicacion;

        public int Id_publicacion
        {
            get { return id_publicacion; }
            set { id_publicacion = value; }
        }
        private String Pelicula;

        public String Pelicula1
        {
            get { return Pelicula; }
            set { Pelicula = value; }
        }
        private String lugarsala;

        public String LugarSala
        {
          get { return lugarsala; }
          set { lugarsala = value; }
        }

        
        private DateTime hora;

        public DateTime Hora
        {
            get { return hora; }
            set { hora = value; }
        }
        private String usuario;

        public String Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

       

    }
}
