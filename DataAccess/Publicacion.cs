using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using Chili.Opf3;
using Chili.Opf3.Relations;
using System.Xml.Serialization;

namespace DataAccess
{
    [Serializable]
    [Persistent( "mvPublicaciones" )]
    public class Publicacion
    {

        #region Campos

        int _idPublicacion;
        string _pelicula;
        string _hora;
        string _lugar;
        private int _userId;
        #endregion


        #region Relaciones

        [Relation( "IdPublicacion = IdPublicacion" )]
        private ObjectSetHolder<Comentario> _comentarios = new ObjectSetHolder<Comentario>();



        [XmlIgnore]
        public ObjectSet<Comentario> Comentarios
        {
            get { return _comentarios.InnerObject; }
        }

        #endregion


        #region Propiedades

        [Field( "IdPublicacion", AllowDBNull = false, Identifier = true, AutoNumber = true )]
        public int IdPublicacion
        {
            get { return _idPublicacion; }
            private set { _idPublicacion = value; }
        }

        [Field( "Pelicula", AllowDBNull = false )]
        public string Pelicula
        {
            get { return _pelicula; }
            set { _pelicula = value; }
        }

        [Field( "Hora", AllowDBNull = false )]
        public string Hora
        {
            get { return _hora; }
            set { _hora = value; }
        }

        [Field( "Lugar", AllowDBNull = false )]
        public string Lugar
        {
            get { return _lugar; }
            set { _lugar = value; }
        }

        [Field( "UserId", AllowDBNull = false )]
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }


        #endregion


        public Publicacion( string pelicula, string hora, string lugar, int userId )
        {
            // TODO: Complete member initialization
            this.Pelicula = pelicula;
            this.Hora = hora;
            this.Lugar = lugar;
            this.UserId = userId;
        }
    }
}
