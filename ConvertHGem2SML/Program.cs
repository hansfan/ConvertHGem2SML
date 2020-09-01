using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Reflection;

namespace ConvertHGem2SML
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length == 1)
            {
                string path = args[0].Trim();
                Execute(path);
            }
            else
            {
                Console.WriteLine("Please keyin input full path");
            }
            Console.WriteLine("Please press any key to end.");
            Console.ReadKey();
        }

        private static void Execute(string path)
        {
            InputStream input = new InputStream(path);
            List<string> source = input.inputContent();
            ConvertToSMLString objConvert = new ConvertToSMLString(source);
            OutputStream output = new OutputStream(path);
            output.outputStream(objConvert.getSMLString());

        }

    }

    class OutputStream
    {
        private string _path = string.Empty;
        private string _baseSECSFilePath = AppDomain.CurrentDomain.BaseDirectory + "HGem.sml";
        private StreamReader reader;
        public OutputStream(string path)
        {
            this._path = path;
        }


        private void changeOutputPath()
        {

            //int x = this._path.LastIndexOf('.');
            //this._path = this._path.Substring(0, x) + ".sml";
            this._path = Path.ChangeExtension(this._path, ".sml");
        }

        public bool outputStream(List<List<string>> content)
        {
            try
            {
                changeOutputPath();



                using (StreamWriter writer = new StreamWriter(this._path))
                {

                    foreach (List<string> secsMsg in content)
                    {
                        foreach (string line in secsMsg)
                        {
                            writer.WriteLine(line);
                        }

                    }


                }

                if (File.Exists(this._path))
                {
                    Assembly asm = Assembly.GetExecutingAssembly();
                    string xmlName = asm.GetName().Name;
                    reader = new StreamReader(asm.GetManifestResourceStream(xmlName + ".HGem.sml"));
                    File.AppendAllText(this._path, reader.ReadToEnd());
                    reader.Close();
                    reader.Dispose();
                }
            }
            catch (IOException ex)
            {
                Console.WriteLine("IOException:Please Check Path or File.");
                Console.WriteLine(ex.ToString());
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                if (reader != null)
                {
                    reader.Close();
                    reader.Dispose();
                }
                 
            }

            return false;
        }

    }

    class ConvertToSMLString
    {
        private Convertor objConvert = new Convertor();


        public ConvertToSMLString(List<string> list)
        {
            objConvert.StorageSource(list);
        }

        public List<List<string>> getSMLString()
        {
            List<List<string>> result = new List<List<string>>();
            try
            {
                Dictionary<string, List<string>> report = getDefineReport();
                result = getDefineLinkReport(report);


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return result;
        }

        private Dictionary<string, string> getEventGrop()
        {

            Dictionary<string, string> list = new Dictionary<string, string>();
            Dictionary<string, outputPrototype>.Enumerator source;
            try
            {
                source = objConvert.getEvent();

                while (source.MoveNext())
                {
                    string key = source.Current.Key;
                    outputPrototype data = source.Current.Value;

                    list.Add(key, data.NAME);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return list;
        }

        private List<List<string>> getDefineLinkReport(Dictionary<string, List<string>> reportDic)
        {

            Dictionary<string, outputPrototype>.Enumerator linkReport = objConvert.getLink();

            List<string> list = new List<string>();
            string headFormat = "{0}: 'S6F11' W /* {1} */";
            string headString = string.Empty;
            string eventID = string.Empty;
            string[] arr;
            string DataIDSECS = string.Empty;
            string eventSECS = string.Empty;
            string finish = ".";
            outputPrototype data;
            StringBuilder solumnData = new StringBuilder();
            List<List<string>> resultList = new List<List<string>>();
            SettingType set = objConvert.getSettings();
            try
            {

                while (linkReport.MoveNext())
                {
                    //solumnData = new StringBuilder();
                    eventID = linkReport.Current.Key.Trim();
                    data = linkReport.Current.Value;
                    arr = data.VALUE.Split(',');
                    DataIDSECS = '\t' + string.Format("<{0} [{1}] {2}>", set.DataIDType, 1, 0);
                    eventSECS = objConvert.getSECSData4EventID(eventID);
                    headString = string.Format(headFormat, objConvert.getEventName(eventID), eventID);
                    list = new List<string>();
                    foreach (string rptID in arr)
                    {
                        string tmp = rptID.Trim();

                        if (reportDic.ContainsKey(tmp))
                        {
                            foreach (string line in reportDic[tmp])
                            {
                                list.Add(line);
                            }

                        }

                    }
                    package(ref list);
                    list.Insert(0, eventSECS);
                    list.Insert(0, DataIDSECS);
                    package(ref list);
                    list.Insert(0, headString);
                    list.Add(finish);
                    resultList.Add(list);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return resultList;
        }

        private Dictionary<string, List<string>> getDefineReport()
        {

            Dictionary<string, List<string>> resultDic = new Dictionary<string, List<string>>();
            Dictionary<string, outputPrototype>.Enumerator rptList;
            outputPrototype data;
            string rptID = string.Empty;
            List<string> vids = new List<string>();

            try
            {
                rptList = objConvert.getReport();

                while (rptList.MoveNext())
                {
                    rptID = rptList.Current.Key;
                    data = rptList.Current.Value;
                    string rptIDSECS = objConvert.getSECSData4RPTID(rptID);
                    vids = objConvert.getSECSData(data);
                    package(ref vids);
                    vids.Insert(0, rptIDSECS);
                    package(ref vids);
                    resultDic.Add(rptID, vids);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return resultDic;
        }
        private void addHorizontalTab(ref List<string> list)
        {
            char horizontalTab = '\t';
            for (int i = 0; i < list.Count; i++)
            {
                list[i] = horizontalTab + list[i];
            }
        }

        private void package(ref List<string> list)
        {

            char empty = '\t';
            string headString = empty.ToString() + "<L ";
            string finish = empty.ToString() + " > ";
            try
            {
                addHorizontalTab(ref list);
                list.Insert(0, headString);
                list.Add(finish);

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }


    }

    class InputStream
    {
        private string _path = string.Empty;
        public InputStream(string path)
        {
            this._path = path;
        }


        public List<string> inputContent()
        {
            List<string> list = new List<string>();
            try
            {
                using (StreamReader reader = new StreamReader(this._path))
                {
                    while (reader.Peek() >= 0)
                    {
                        string tmp = reader.ReadLine();
                        int index = tmp.Trim().IndexOf(';');

                        if (index > 0)
                        {
                            tmp = tmp.Substring(0, index).Trim();

                            if (tmp != string.Empty)
                            {
                                list.Add(tmp);
                            }
                        }
                        else if (index < 0)
                        {
                            list.Add(tmp.Trim());
                        }

                    }
                }
            }
            catch (IOException ex)
            {
                Console.WriteLine("Please Check Path or File.");
                Console.WriteLine(ex.ToString());
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return list;
        }



    }


}
