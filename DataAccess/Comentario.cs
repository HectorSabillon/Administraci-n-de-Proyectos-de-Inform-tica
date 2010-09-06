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
    [Persistent("mvComentarios")]
    public class Comentario
    {

        #region Campos
        int _idComentario;
        int _idPublicacion;
        string _textoComentario;
        int _userId;
        #endregion

        #region Relaciones
        [Relation("IdPublicacion = IdPublicacion",PersistRelationship=PersistRelationships.ChildFirst)]
        private ObjectHolder<Publicacion> _publicacion = new ObjectHolder<Publicacion>();

        [XmlIgnore]
        public Publicacion Publicacion
        {
            get { return _publicacion.InnerObject; }
            set { _publicacion.InnerObject = value; }
        }
        #endregion

        #region Propiedades
        [Field("UserId", AllowDBNull = false)]
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }

        [Field("TextoComentario", AllowDBNull = false)]
        public string TextoComentario
        {
            get { return _textoComentario; }
            set { _textoComentario = value; }
        }

        [Field("IdPublicacion", AllowDBNull = false)]
        public int IdPublicacion
        {
            get { return _idPublicacion; }
            private set { _idPublicacion = value; }
        }

        [Field("IdComentario", AllowDBNull = false, Identifier = true, AutoNumber = true)]
        public int IdComentario
        {
            get { return _idComentario; }
            set { _idComentario = value; }
        }
        #endregion

        public Comentario( string textoComentario, int userId )
        {
            // TODO: Complete member initialization
            this.TextoComentario = textoComentario;
            this.UserId = userId;
        }
    }
}
