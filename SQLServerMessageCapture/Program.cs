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
        private static StreamWriter file;
        static void Main(string[] args)
        {
            try
            {
                string workloadA = File.ReadAllText(@"D:\WorkLoadA.sql");
                string workloadB = File.ReadAllText(@"D:\WorkLoadB.sql");
                string[] workloads = new string[2] { workloadA, workloadB };
                string rsW1 = File.ReadAllText(@"D:\RestoreScriptW1.sql");
                string rsW2 = File.ReadAllText(@"D:\RestoreScriptW2.sql");
                string rsW3 = File.ReadAllText(@"D:\RestoreScriptW3.sql");
                string[] rScripts = new string[3] { rsW1, rsW2, rsW3 };
                string[] fileNames = new string[6] { @"D:\AW1.txt", @"D:\BW1.txt", @"D:\AW2.txt", @"D:\BW2.txt", @"D:\AW3.txt", @"D:\BW3.txt" };

                string sqlConnectionString = @"Data Source=DESKTOP-4J8NAAL;Initial Catalog=SuplShop;Integrated Security=True;Pooling=False";
                Stopwatch sw = new Stopwatch();
                SqlConnection conn = new SqlConnection(sqlConnectionString);
                conn.InfoMessage += new SqlInfoMessageEventHandler(Message);
                Server server = new Server(new ServerConnection(conn));
                sw.Start();
                for(int i = 0; i < 3; ++i)
                {
                    for (int j = 0; j < 2; ++j) 
                    {
                        file = new System.IO.StreamWriter(fileNames[i*2+j], true);
                        for (int k = 0; k < 10; ++k)
                        {
                            server.ConnectionContext.ExecuteNonQuery(rScripts[i]);
                            server.ConnectionContext.ExecuteNonQuery(workloads[j]);
                        }
                        file.Close();
                    }
                }
                sw.Stop();
                Console.WriteLine(sw.Elapsed.ToString());
                Console.Read();
            }
            catch(Exception e)
            {
                Console.WriteLine(e);
                Console.Read();
            }
        }
        static void Message(object sender, SqlInfoMessageEventArgs e)
        {
            int num;
            if(Int32.TryParse(e.Message, out num))
                file.WriteLine(e.Message);
            Console.WriteLine(e.Message);
        }
    }
}
