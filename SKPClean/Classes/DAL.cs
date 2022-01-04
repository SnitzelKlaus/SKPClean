using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace SKPClean.Classes.Managers
{
    public class DAL
    {
        //Connection string
        private static string connection = @"Data Source=(Local)\MSSQLSERVER;Initial Catalog=MovieNight; Integrated Security=SSPI";

        public static void CreateRoom(string roomName, int departmentId)
        {
            //Database connection
            using (SqlConnection connect = new SqlConnection(connection))
            {
                connect.Open();

                //Sending command to db
                SqlCommand cmd = new SqlCommand($"EXEC dbo.spRoom_CreateRoom @Name = '{roomName}', @DepartmentId = {departmentId}", connect);
                
                connect.Close();
            }
        }

        public static void DeleteRoom(int roomId)
        {
            using(SqlConnection connect = new SqlConnection(connection))
            {
                connect.Open();

                //Sending command to db
                SqlCommand cmd = new SqlCommand($"DELETE FROM Room WHERE Id = ({roomId})", connect);

                connect.Close();
            }
        }

        public static void UpdateRoom(int roomId, string roomName, int departmentId)
        {
            using (SqlConnection connect = new SqlConnection(connection))
            {
                connect.Open();

                //Sending command to db
                SqlCommand cmd = new SqlCommand($"EXEC dbo.spRoom_UpdateRoom @Id = {roomId}, @Name = '{roomName}', @DepartmentId = {departmentId}", connect);

                connect.Close();
            }
        }

        public static List<Room> GetAllRooms(int departmentId)
        {
            List<Room> rooms = new List<Room>();

            //Database connection
            using (SqlConnection connect = new SqlConnection(connection))
            {
                connect.Open();

                //Sending command to db
                SqlCommand cmd = new SqlCommand($"EXEC dbo.spRoom_GetAllRooms @DepartmentId = {departmentId}", connect);

                //Collecting executed data
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    int Id = (int)rdr["Id"];
                    string Name = (string)rdr["Name"];
                    int DepartmentId = (int)rdr["DepartmentId"];

                    rooms.Add(new Room(Id, Name, DepartmentId));
                }
                connect.Close();
            }
            return rooms;
        }

        public static Room GetRoom(int roomId)
        {
            Room room = null;

            //Database connection
            using (SqlConnection connect = new SqlConnection(connection))
            {
                connect.Open();

                //Sending command to db
                SqlCommand cmd = new SqlCommand($"EXEC dbo.spRoom_GetRoom @Id = {roomId}", connect);

                //Collecting executed data
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    int Id = (int)rdr["Id"];
                    string Name = (string)rdr["Name"];
                    int DepartmentId = (int)rdr["DepartmentId"];

                    room = new Room(Id, Name, DepartmentId);
                }
                connect.Close();
            }
            return room;
        }

    }
}
