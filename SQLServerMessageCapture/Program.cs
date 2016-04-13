using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;
using System.Diagnostics;
using System.IO;

namespace SQLServerMessageCapture
{
    class Program
    {
        static void Main(string[] args)
        {
            string sqlConnectionString = @"Data Source=DESKTOP-4J8NAAL;Initial Catalog=SuplShop;Integrated Security=True;Pooling=False";
            Stopwatch sw = new Stopwatch();
            string script = File.ReadAllText(@"D:\WorkLoadA.sql");
            SqlConnection conn = new SqlConnection(sqlConnectionString);
            conn.InfoMessage += new SqlInfoMessageEventHandler(Message);
            Server server = new Server(new ServerConnection(conn));
            sw.Start();
            server.ConnectionContext.ExecuteNonQuery(script);
            sw.Stop();
            Console.WriteLine(sw.Elapsed.ToString());
            Console.Read();
        }
        static void Message(object sender, SqlInfoMessageEventArgs e)
        {
            StreamWriter file = new System.IO.StreamWriter(@"D:\AW1.txt", true);
            file.WriteLine(e.Message);
            Console.WriteLine(e.Message);
            file.Close();
        }
    }
}
