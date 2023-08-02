using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace Matrimony
{
    public class DBConnection
    {
        MySqlConnection connection = null;
        public DBConnection()
        {
            //connection = new MySqlConnection("Server=localhost;Database=rk2017;Uid=root;Pwd=1234;");  
            connection = new MySqlConnection("Server=localhost;Database=matrimony;Uid=root;Pwd=1234;");
            connection.Open();
            Console.WriteLine("Connection created");
        }
        public int executeQuery(string qry)
        {
            int result = 0;
            MySqlCommand cmd = new MySqlCommand(qry, connection);
            result = cmd.ExecuteNonQuery();
            //cmd.Cancel();
            return result;
        }
        public int login(String uname, String pass)
        {
            String u = "", p = "";
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM users order by username", connection);
            //SqlCommand cmd = new SqlCommand("SELECT * FROM Login", connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            //SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                u = reader["username"].ToString();
                p = reader["password"].ToString();

                if (uname.Equals(u) && pass.Equals(p))
                {
                    reader.Close();
                    cmd.Cancel();
                    return 1;
                }
            }
            reader.Close();
            //  cmd.Cancel();
            return 0;
        }
        public Object[][] getAllRecord(String qry)
        {
            Object[][] data = new Object[countRecord(qry)][];
            for (int i = 0; i < data.Length; i++)
                data[i] = new Object[countColumn(qry)];
            String[] name = columnName(qry);
            MySqlCommand cmd = new MySqlCommand(qry, connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            int k = 0;
            while (reader.Read())
            {
                for (int j = 0; j < data[k].Length; j++)
                    data[k][j] = reader[name[j]];
                k++;
            }
            reader.Close();
            //cmd.Cancel();
            return data;
        }
        public Object[] get1D(String qry)
        {
            Object[] data = new Object[countRecord(qry)];
            int i = 0;
            MySqlCommand cmd = new MySqlCommand(qry, connection);
            //cmd.CommandTimeout = 50;

            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                data[i] = reader[0];
                i++;
            }
            reader.Close();
            //cmd.Cancel();
            return data;
        }
        public int countColumn(String qry)
        {
            int cnt = 0;
            MySqlDataAdapter sd = new MySqlDataAdapter(qry, connection);
            DataSet ds = new DataSet();
            sd.Fill(ds);
            cnt = ds.Tables[0].Columns.Count;
            ds.Clear();

            return cnt;
        }
        public String[] columnName(String qry)
        {
            String[] name = new String[countColumn(qry)];
            MySqlCommand cmd = new MySqlCommand(qry, connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                for (int i = 0; i < reader.FieldCount; i++)
                    name[i] = reader.GetName(i);
            }
            reader.Close();
            //cmd.Cancel();
            return name;
        }
        public int countRecord(String qry)
        {
            int cnt = 0;
            MySqlCommand cmd = new MySqlCommand(qry, connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cnt++;
            }
            reader.Close();
            //cmd.Cancel();
            return cnt;
        }
    }
}