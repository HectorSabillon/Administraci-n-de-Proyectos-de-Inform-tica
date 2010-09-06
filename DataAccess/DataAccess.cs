using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


using Chili.Opf3;
using Chili.Opf3.Storages;

namespace DataAccess
{

    public class DataAccess
    {

        private Chili.Opf3.Storages.MsSql.MsSqlStorage storage;
        private ObjectContext contexto;

        public DataAccess()
        {
            storage = new Chili.Opf3.Storages.MsSql.MsSqlStorage( Properties.Settings.Default.CineSAPDB );
            contexto = new ObjectContext( storage );
            contexto.ConcurrencyManager = new Chili.Opf3.Concurrency.Md5.Md5ConcurrencyManager();
        }

        public bool IngresarPublicacion( string pelicula, string hora, string lugar, int userId )
        {
            Publicacion publicacion = new Publicacion( pelicula, hora, lugar,userId );
            return IngresarPublicacion( publicacion );
        }

        public bool IngresarPublicacion( Publicacion publicacion )
        {
            Transaction tr = contexto.StartTransaction();
            try
            {
                contexto.PersistChanges<Publicacion>( publicacion );
                tr.Commit();
            }
            catch ( Exception )
            {
                tr.Rollback();
                return false;
                throw;
            }
            finally
            {
                tr.Dispose();
            }
            return true;
        }

        public bool IngresarComentario( int idPublicacion, string textoComentario, int userId )
        {
            Comentario nuevoComentario = new Comentario( textoComentario, userId );
            Publicacion publicacion = contexto.GetObject<Publicacion>( "IdPublicacion = {0}", idPublicacion );

            publicacion.Comentarios.Add( nuevoComentario );

            Transaction tr = contexto.StartTransaction();

            try
            {
                contexto.PersistChanges<Publicacion>( publicacion );
                tr.Commit();
            }
            catch
            {

            }
            finally
            {
                tr.Dispose();
            }


            return true;
        }


        public ObjectSet<Publicacion> ObtenerPublicaciones()
        {
            ObjectSet<Publicacion> listaPublicaciones = contexto.GetObjectSet<Publicacion>();
            return listaPublicaciones;
        }

    }
}
