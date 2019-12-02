using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace QuanLyBanHang
{
    public class SqlHelper
    {
        public static string strConnection = Properties.Settings.Default.ChuoiKetNoi;

        public static SqlCommand pubCmd = new SqlCommand();
        public static SqlDataAdapter pubDA = new SqlDataAdapter();

        private static SqlConnection _myConn = new SqlConnection(strConnection);
        public static SqlConnection MyConn()
        {
            if (_myConn.State != ConnectionState.Open)
            {
                _myConn.Open();
            }
            return _myConn;
        }

        private static Hashtable parasCache = Hashtable.Synchronized(new Hashtable());
        public static void ConvertReaderToObject(SqlDataReader reader, object model)
        {
            if (reader != null && reader.Read())
            {
                foreach (var item in model.GetType().GetProperties())
                {
                    model.GetType().GetProperty(item.Name).SetValue(model, reader[item.Name], null);
                }

            }
            reader.Close();
        }
        public static void ConvertDataRowViewToObject(DataRowView view, object model)
        {
            if (view != null)
                foreach (var item in model.GetType().GetProperties())
                {
                    model.GetType().GetProperty(item.Name).SetValue(model, Convert.ChangeType(view[item.Name], model.GetType().GetProperty(item.Name).PropertyType), null);
                }

        }
        public static void ExecuteNonQuery(CommandType cmdCommandType, string cmdCommandString, params SqlParameter[] cmdParameters)
        {
            SqlCommand cmdCommand = new SqlCommand();
            try
            {
                PrepareCommand(cmdCommand, cmdCommandType, cmdCommandString, cmdParameters);
                cmdCommand.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                //  MessageBox.Show(ex.Data.ToString());
                throw ex;
            }
            
        }

        public static DataTable ExecuteData(CommandType cmdCommandType, string cmdCommandString, params SqlParameter[] cmdParameters)
        {
            SqlCommand cmdCommand = new SqlCommand();
            try
            {
                DataTable dtTopic = new DataTable();
                SqlDataAdapter dataTopic = new SqlDataAdapter(cmdCommand);
                PrepareCommand(cmdCommand,  cmdCommandType, cmdCommandString, cmdParameters);
                cmdCommand.ExecuteNonQuery();
                dataTopic.Fill(dtTopic);
                return dtTopic;
            }
            catch (SqlException ex)
            {
                //Return Nothing
                throw ex;

            }
            
        }

        public static SqlDataReader ExecuteReader(CommandType cmdCommandType, string cmdCommandString, params SqlParameter[] cmdParameters)
        {
            SqlCommand cmdCommand = new SqlCommand();
            try
            {
                PrepareCommand(cmdCommand, cmdCommandType, cmdCommandString, cmdParameters);
                SqlDataReader datrDataReader = cmdCommand.ExecuteReader(CommandBehavior.CloseConnection);
                return datrDataReader;
            }
            catch //(SqlException ex)
            {
              
                //throw ex;
                return null;
            }
        }

        private static void PrepareCommand(SqlCommand cmdCommand, SqlConnection connConnection, SqlTransaction trasTransaction, CommandType cmdCommandType, string cmdCommandString, SqlParameter[] cmdParameters)
        {
            if (connConnection.State != ConnectionState.Open)
            {
                connConnection.Open();
            }
            cmdCommand.Connection = connConnection;
            cmdCommand.CommandText = cmdCommandString;
            if (trasTransaction != null)
            {
                cmdCommand.Transaction = trasTransaction;
            }

            cmdCommand.CommandType = cmdCommandType;
            if (cmdParameters != null)
            {
                foreach (SqlParameter para in cmdParameters)
                {
                    cmdCommand.Parameters.Add(para);
                }
            }
        }

        public static void PrepareCommand(SqlCommand cmdCommand, CommandType cmdCommandType, string cmdCommandString, SqlParameter[] cmdParameters)
        {

            cmdCommand.Connection = MyConn();
            cmdCommand.Parameters.Clear();
            cmdCommand.CommandType = cmdCommandType;
            cmdCommand.CommandText = cmdCommandString;
            if (cmdParameters != null)
            {
                foreach (SqlParameter para in cmdParameters)
                {
                    cmdCommand.Parameters.Add(para);
                }
            }
        }

        public static object ExecuteScalar(CommandType cmdCommandType, string cmdCommandString, params SqlParameter[] cmdParameters)
        {
            SqlCommand cmdCommand = new SqlCommand();
            try
            {
                PrepareCommand(cmdCommand, cmdCommandType, cmdCommandString, cmdParameters);
                object datrScalar = cmdCommand.ExecuteScalar();
                return datrScalar;
            }
            catch //(SqlException ex)
            {

                //throw ex;
                return null;
            }
        }

        public static void UpdateTB(DataTable tb, CommandType cmdCommandType, string cmdCommandString, params SqlParameter[] cmdParameters)
        {
            SqlCommand cmdCommand = new SqlCommand();
            try
            {
                SqlDataAdapter dataTopic = new SqlDataAdapter(cmdCommand);
                PrepareCommand(cmdCommand,  cmdCommandType, cmdCommandString, cmdParameters);
                cmdCommand.ExecuteNonQuery();
                SqlCommandBuilder cb = new SqlCommandBuilder(dataTopic);

                dataTopic.Update(tb);
            }
            catch (SqlException ex)
            {

                throw ex;
            }
            
        }

    }

}