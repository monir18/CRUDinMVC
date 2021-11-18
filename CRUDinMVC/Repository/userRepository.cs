using CRUDinMVC.DBManager;
using CRUDinMVC.Models;
using CRUDinMVC.viewModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CRUDinMVC.Repository
{
    public class userRepository
    {
        DAL dAL = new DAL();

        public List<UserRegModel> display()
        {
            List<UserRegModel> list = new List<UserRegModel>();
            DataTable dt = dAL.GetDataList("uSP_select");
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new UserRegModel
                {
                    id = Convert.ToInt32(dr["id"]),
                    emailid = Convert.ToString(dr["emailid"]),
                    password = Convert.ToString(dr["password"]),
                    name = Convert.ToString(dr["name"])
                });
            }
            return list;
        }
        public bool InsertData(UserRegModel urm)
        {
            List<KeyValue> keyValues = new List<KeyValue> { };
            keyValues.Add(new KeyValue() { key = "id", value = urm.id });
            keyValues.Add(new KeyValue() { key = "email", value = urm.emailid });
            keyValues.Add(new KeyValue() { key = "pwd", value = urm.password });
            keyValues.Add(new KeyValue() { key = "name", value = urm.name });
            return dAL.insert("uSP_insert", keyValues);
        }

        public bool UpdateData(UserRegModel urm)
        {
            List<KeyValue> keyValues = new List<KeyValue> { };
            keyValues.Add(new KeyValue() { key = "id", value = urm.id });
            keyValues.Add(new KeyValue() { key = "email", value = urm.emailid });
            keyValues.Add(new KeyValue() { key = "pwd", value = urm.password });
            keyValues.Add(new KeyValue() { key = "name", value = urm.name });
            return dAL.update("uSP_update", keyValues);
        }

        public bool DeleteData(UserRegModel urm)
        {
            List<KeyValue> keyValues = new List<KeyValue> { };
            keyValues.Add(new KeyValue() { key = "id", value = urm.id });
            return dAL.delete("uSP_delete", keyValues);
        }
    }
}