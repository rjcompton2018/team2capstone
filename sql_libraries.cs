      //==========================================================
        // Basic functionality
        //==========================================================
        public void writeStackTrace(string s, Exception ex)
        {
            if (!File.Exists(@"" + Server.MapPath("~/Debug/StackTrace.txt")))
            {
                File.Create(@"" + Server.MapPath("~/Debug/StackTrace.txt"));
            }
            using (StreamWriter file = new StreamWriter(@"" + Server.MapPath("~/Debug/StackTrace.txt"), true))
            {
                file.WriteLine(Date.Today + "\n" + s + "\n" + ex);
                file.Close();
            }
        }

        private void openDBConnection()
        {
            objConn = objConn ?? new SqlConnection(Constants.LOCAL_TO_SERVER_CONNECTION_STRING);
        }

        public void killConnections()
        {
            if (reader != null)
            {
                reader.Close();
                reader.Dispose();
            }

            objConn.Close();
        }


      private object sqlExecuter(object o, SqlTypes type)
        {
            openDBConnection();
            if (objConn.State == ConnectionState.Closed)
                objConn.Open();
            SqlCommand cmd;
            object returnVal = null;
            switch (type)
            {
                case SqlTypes.DataReader:
                    cmd = (SqlCommand)o;
                    cmd.Connection = objConn;
                    reader = cmd.ExecuteReader();
                    break;
                case SqlTypes.VoidQuery:
                    cmd = (SqlCommand)o;
                    cmd.Connection = objConn;
                    returnVal = cmd.ExecuteNonQuery();
                    objConn.Close();
                    break;
                default:
                    object[] adapterAndDataSet = (object[])o;
                    SqlDataAdapter objAdapter = (SqlDataAdapter)adapterAndDataSet[0];
                    objAdapter.SelectCommand.Connection = objConn;
                    DataSet objDataSet = (DataSet)adapterAndDataSet[1];
                    objAdapter.Fill(objDataSet);
                    returnVal = objDataSet;
                    objConn.Close();
                    break;
            }

            return returnVal;
        }

        //==========================================================
        // Execute a query with no return value
        //==========================================================
        private object executeVoidSQLQuery(SqlCommand cmd)
        {
            cmd.Parameters.Add("@ReturnVal", SqlDbType.Int).Direction = ParameterDirection.Output;
            sqlExecuter(cmd, SqlTypes.VoidQuery);
            return cmd.Parameters["@ReturnVal"].Value;
        }

        public object executeVoidSQLQuery(string command, object parameter = null)
        {
            SqlCommand objCmd = new SqlCommand(command, this.objConn);

            if (null != parameter)
            {
                objCmd.Parameters.AddWithValue("@value1", parameter);
            }
            return sqlExecuter(objCmd, SqlTypes.VoidQuery);
        }

        public object executeVoidSQLQuery(string command, object[] parameters)
        {
            SqlCommand objCmd = new SqlCommand(command, this.objConn);

            for (int i = 1; i <= parameters.Length; i++)
            {
                objCmd.Parameters.AddWithValue("@value" + i, parameters[i - 1]);
            }

            return executeVoidSQLQuery(objCmd);
        }

        //==========================================================
        // Return datatable
        //==========================================================
        private System.Data.DataTable getDataTable(SqlCommand cmd)
        {
            SqlDataAdapter objAdapter = new SqlDataAdapter();
            DataSet objDataSet = new DataSet();
            objAdapter.SelectCommand = cmd;
            object[] o = { objAdapter, objDataSet };
            objDataSet = (DataSet)sqlExecuter(o, SqlTypes.DataTable);

            return objDataSet.Tables[0];
        }

        public System.Data.DataTable getDataTable(string command, object parameter = null)
        {
            SqlCommand cmd = new SqlCommand(command, objConn);
            if (null != parameter)
                cmd.Parameters.AddWithValue("@value1", parameter);
            return getDataTable(cmd);
        }

        public System.Data.DataTable getDataTable(string command, object[] parameters)
        {
            SqlCommand cmd = new SqlCommand(command, objConn);
            int i = 1;
            foreach (object s in parameters)
            {
                cmd.Parameters.AddWithValue("@value" + i, s);
                i++;
            }

            return getDataTable(cmd);
        }

        //==========================================================
        // Returns data reader
        //==========================================================
        public void getReader(string query, object parameters = null)
        {
            SqlCommand cmd = new SqlCommand(query);
            if (parameters != null)
            {
                cmd.Parameters.AddWithValue("@value1", parameters);
            }
            sqlExecuter(cmd, SqlTypes.DataReader);
        }

        public void getReader(string query, object[] parameters)
        {
            SqlCommand cmd = new SqlCommand(query);
            int i = 1;
            foreach (object o in parameters)
            {
                cmd.Parameters.AddWithValue("@value" + i, o);
                i++;
            }
            sqlExecuter(cmd, SqlTypes.DataReader);
        }
    }