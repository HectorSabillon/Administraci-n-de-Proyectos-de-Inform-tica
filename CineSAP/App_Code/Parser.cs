using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DataAccess;

/// <summary>
/// Summary description for Parser
/// </summary>
public static class Parser
{
    public static Publicacion DesCifrar( string publicacion )
    {
        string[] args = publicacion.Split( new[] { ',' }, 4 );
        Publicacion nuevaPublicacion = new Publicacion( args[ 0 ], args[ 1 ], args[ 2 ], int.Parse( args[ 3 ] ) );
        return nuevaPublicacion;
    }
}