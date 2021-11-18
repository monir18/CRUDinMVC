using CRUDinMVC.Models;
using CRUDinMVC.viewModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CRUDinMVC.DBManager
{
    public class DAL
    {
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString);
        public DataTable GetDataList(string spName)
        {
            SqlCommand cmd = new SqlCommand(spName, con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        public bool insert(string spname, List<KeyValue>keyValues)
        {
            int i;
            SqlCommand cmd = new SqlCommand(spname, con);
            if(keyValues.Count > 0)
            {
                for(int j = 0; j < keyValues.Count; j++)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(keyValues[j].key, keyValues[j].value);
                }
            }
            con.Open();
            i = cmd.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
                return true;
            else
                return false;
        }

        public bool update(string spname, List<KeyValue> keyValues)
        {
            int i;
            SqlCommand cmd = new SqlCommand(spname, con);
            if (keyValues.Count > 0)
            {
                for (int j = 0; j < keyValues.Count; j++)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(keyValues[j].key, keyValues[j].value);
                }
            }
            con.Open();
            i = cmd.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
                return true;
            else
                return false;

        }

        public bool delete(string spname, List<KeyValue> keyValues)
        {
            int i;
            SqlCommand cmd = new SqlCommand(spname, con);
            if (keyValues.Count > 0)
            {
                for (int j = 0; j < keyValues.Count; j++)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(keyValues[j].key, keyValues[j].value);
                }
            }
            con.Open();
            i = cmd.ExecuteNonQuery();
            con.Close();
            if (i >= 1)
                return true;
            else
                return false;
        }
    }
}