using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DataAccess
{
    public class Acceso
    {
        public void IngresarPublicacion(int id, String user, String movie, String place_hall, DateTime hour)
        {
            string connectionString = Properties.Settings.Default.baseConnectionString; //@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Alexis\Desktop\DataAccess\DataAccess\base.mdf;Integrated Security=True;User Instance=True";
              SqlConnection cn = new SqlConnection(connectionString);
              
              string sql = "INSERT INTO " + "mv_Publicaciones" +
                "(mv_Publicaciones_ID_Publicacion, mv_Publicaciones_Pelicula, mv_Publicaciones_Lugar_Sala, mv_Publicaciones_Hora, mv_Publicaciones_Usuario) " +
                "VALUES " + "(@mv_Publicaciones_ID_Publicacion, @mv_Publicaciones_Pelicula, @mv_Publicaciones_Lugar_Sala, @mv_Publicaciones_Hora, @mv_Publicaciones_Usuario)";

              try
              {
                  cn.Open();
                  SqlCommand cmd = new SqlCommand(sql, cn);
                  cmd.Parameters.AddWithValue("@mv_Publicaciones_ID_Publicacion", id);
                  cmd.Parameters.AddWithValue("@mv_Publicaciones_Pelicula", movie);
                  cmd.Parameters.AddWithValue("@mv_Publicaciones_Lugar_Sala", place_hall);
                  cmd.Parameters.AddWithValue("@mv_Publicaciones_Hora", hour);
                  cmd.Parameters.AddWithValue("@mv_Publicaciones_Usuario", user);  
                  cmd.ExecuteNonQuery();
                  Console.WriteLine("Se ejecuto correctamente"); Console.ReadKey();
              }
              catch (SqlException e)
              {
                  string msg = "";
                  for (int i = 0; i < e.Errors.Count; i++)
                  {
                      msg += "Error #" + i + " Message: " + e.Errors[i].Message + "\n";
                  }
                  System.Console.WriteLine(msg);
                  Console.ReadKey();
              }
              finally
              {
                cn.Close();
              }              
        }

        public List<Publicacion> ObtenerPublicaciones()
        {
            List<Publicacion> lista = new List<Publicacion>();
            string connectionString = Properties.Settings.Default.baseConnectionString; //@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Alexis\Desktop\DataAccess\DataAccess\base.mdf;Integrated Security=True;User Instance=True";
            SqlConnection cn = new SqlConnection(connectionString);

            string sql = @"SELECT mv_Publicaciones_ID_Publicacion, mv_Publicaciones_Pelicula, mv_Publicaciones_Lugar_Sala, mv_Publicaciones_Hora, mv_Publicaciones_Usuario 
                           FROM mv_Publicaciones";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            SqlCommandBuilder scb = new SqlCommandBuilder(da);
            DataSet dataTable = new DataSet();            

              try
              {
                  cn.Open();
                  da.Fill(dataTable,"mv_Publicaciones");

                  if (dataTable.Tables["mv_Publicaciones"].Rows.Count != 0)
                  {
                      for (int i = 0; i < dataTable.Tables["mv_Publicaciones"].Rows.Count; i++)
                      {
                              lista.Add(new Publicacion(
                              Convert.ToInt32(dataTable.Tables["mv_Publicaciones"].Rows[i]["mv_Publicaciones_ID_Publicacion"]),
                              dataTable.Tables["mv_Publicaciones"].Rows[i]["mv_Publicaciones_Pelicula"].ToString(),
                              dataTable.Tables["mv_Publicaciones"].Rows[i]["mv_Publicaciones_Lugar_Sala"].ToString(),
                              Convert.ToDateTime(dataTable.Tables["mv_Publicaciones"].Rows[i]["mv_Publicaciones_Hora"]),
                              dataTable.Tables["mv_Publicaciones"].Rows[i]["mv_Publicaciones_Usuario"].ToString()));
                      }                                           
                  }
              }
              catch (SqlException e)
              {
                  string msg = "";
                  for (int i = 0; i < e.Errors.Count; i++)
                  {
                      msg += "Error #" + i + " Message: " + e.Errors[i].Message + "\n";
                  }
                  System.Console.WriteLine(msg);
              }
              finally
              {
                  cn.Close();                  
              }
            return lista;
        }
    }
}
