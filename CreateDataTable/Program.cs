using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreateDataTable
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string[] aW1 = File.ReadAllLines(@"D:\AW1.txt");
                string[] bW1 = File.ReadAllLines(@"D:\BW1.txt");
                string[] aW2 = File.ReadAllLines(@"D:\AW2.txt");
                string[] bW2 = File.ReadAllLines(@"D:\BW2.txt");
                string[] aW3 = File.ReadAllLines(@"D:\AW3.txt");
                string[] bW3 = File.ReadAllLines(@"D:\BW3.txt");
                string[][] a = new string[3][];
                a[0] = aW1;
                a[1] = aW2;
                a[2] = aW3;
                string[][] b = new string[3][];
                b[0] = bW1;
                b[1] = bW2;
                b[2] = bW3;

                String table = "---------------------------------------------------\n"
                    + "|Czas wykonania operacji na danych dla N powtórzeń|\n"
                    + "---------------------------------------------------\n"
                    + "|    |       W1     |      W2      |      W3      |\n"
                    + "---------------------------------------------------\n"
                    + "|    | A | B | Suma | A | B | Suma | A | B | Suma |\n"
                    + "---------------------------------------------------\n";
                for (int i=0; i< aW1.Length; ++i)
                {
                    if(i<10)
                        table += "|" + (i+1).ToString() + "   |";
                    else
                        table += "|" + (i + 1).ToString() + "  |";
                    for (int j = 0; j < 3; ++j)
                    {
                        switch (a[j][i].Length)
                        {
                            case 1:
                                table += a[j][i] + "  |";
                                break;
                            case 2:
                                table += a[j][i] + " |";
                                break;
                            case 3:
                                table += a[j][i] + "|";
                                break;
                        }
                        switch (b[j][i].Length)
                        {
                            case 1:
                                table += b[j][i] + "  |";
                                break;
                            case 2:
                                table += b[j][i] + " |";
                                break;
                            case 3:
                                table += b[j][i] + "|";
                                break;
                        }
                        int x = Int32.Parse(a[j][i]);
                        int y = Int32.Parse(b[j][i]);
                        switch ((x + y).ToString().Length)
                        {
                            case 1:
                                table += " " + (x + y).ToString() + "    |";
                                break;
                            case 2:
                                table += " " + (x + y).ToString() + "   |";
                                break;
                            case 3:
                                table += " " + (x + y).ToString() + "  |";
                                break;
                            case 4:
                                table += " " + (x + y).ToString() + " |";
                                break;
                        }
                    }
                    table += "\n";
                }
                table += "---------------------------------------------------\n"
                    + "---------------------------------------------------\n"
                    + "|AVG |";
                for (int j = 0; j < 3; ++j)
                {
                    int avgA = Avg(a[j]);
                    switch (avgA.ToString().Length)
                    {
                        case 1:
                            table += avgA.ToString() + "  |";
                            break;
                        case 2:
                            table += avgA.ToString() + " |";
                            break;
                        case 3:
                            table += avgA.ToString() + "|";
                            break;
                    }
                    int avgB = Avg(b[j]);
                    switch (avgA.ToString().Length)
                    {
                        case 1:
                            table += avgB.ToString() + "  |";
                            break;
                        case 2:
                            table += avgB.ToString() + " |";
                            break;
                        case 3:
                            table += avgB.ToString() + "|";
                            break;
                    }
                    switch ((avgA + avgB).ToString().Length)
                    {
                        case 1:
                            table += " " + (avgA + avgB).ToString() + "    |";
                            break;
                        case 2:
                            table += " " + (avgA + avgB).ToString() + "   |";
                            break;
                        case 3:
                            table += " " + (avgA + avgB).ToString() + "  |";
                            break;
                        case 4:
                            table += " " + (avgA * 2).ToString() + " |";
                            break;
                    }
                }
                table += "\n---------------------------------------------------";
                Console.WriteLine(table);
                Console.Read();
            }
            catch(Exception e)
            {
                Console.WriteLine("Some data missing");
                Console.WriteLine(e.Message);
                Console.Read();
            }
        }

        static int Avg(string[] data)
        {
            int ans = 0;
            foreach(string s in data)
            {
                ans += Int32.Parse(s);
            }
            return ans/data.Length;
        }
    }
}
