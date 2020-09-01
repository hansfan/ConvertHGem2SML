using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConvertHGem2SML
{
    static class Standard
    {
        static public string key4EC = "EC";
        static public string key4Vid = "VID";
        static public string key4Event = "EVENT";
        static public string key4Report = "REPORT";
        static public string key4Link = "REPORTLINK";
        static public string key4Setting = "SETTINGS";


        static public Dictionary<string, string> getLibary()
        {

            Dictionary<string, string> list = new Dictionary<string, string>();

            list.Add(key4EC, "EC=[ECID={0}, Name={1}, Type={2}, Value={3}]");
            list.Add(key4Vid, "Vid=[ID={0}, Name={1}, Type={2}, Class={3}]");
            list.Add(key4Event, "Event=[ID={0}, Name={1}, Enable={2}]");
            list.Add(key4Report, "Report=[ID={0}, Name={1}, Vids=[{2}]]");
            list.Add(key4Link, "ReportLink=[Event={0}, Reports=[{1}]]");

            return list;
        }

        static public bool IsNumeric(string value)
        {
            int i = 0;
            return Int32.TryParse(value, out i);
        }
    }
    class SettingType
    {
        private string dataIDType = string.Empty;
        private string vidType = string.Empty;
        private string ceidType = string.Empty;
        private string rptIDType = string.Empty;

        public string DataIDType
        {
            get { return this.dataIDType; }
            set { this.dataIDType = value; }
        }
        public string VIDType
        {
            get { return this.vidType; }
            set { this.vidType = value; }
        }
        public string CEIDType
        {
            get { return this.ceidType; }
            set { this.ceidType = value; }
        }
        public string RPTIDType
        {
            get { return this.rptIDType; }
            set { this.rptIDType = value; }
        }
    }

    class outputPrototype
    {
        private string category = string.Empty;
        private string id = string.Empty;
        private string name = string.Empty;
        private string type = string.Empty;
        private string value = string.Empty;

        public string CATEGORYＤ
        {
            get { return this.category; }
            set { this.category = value; }
        }

        public string ID
        {
            get { return this.id; }
            set { this.id = value; }
        }

        public string NAME
        {
            get { return this.name; }
            set { this.name = value; }
        }

        public string TYPE
        {
            get { return this.type; }
            set { this.type = value; }
        }

        public string VALUE
        {
            get { return this.value; }
            set { this.value = value; }
        }
    }
    class Convertor
    {
        private Dictionary<string, outputPrototype> headDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, outputPrototype> vidDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, outputPrototype> eventDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, outputPrototype> reportDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, outputPrototype> linkDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, outputPrototype> alarmDic = new Dictionary<string, outputPrototype>();
        private Dictionary<string, SettingType> settingDic = new Dictionary<string, SettingType>();
        private string columnString = "<{0} [{1}] '{2}' > /*{3}*/";
        private string columnInt = "<{0} [{1}] {2} >  /*{3}*/";
        public string columnList = "<L   >";

        public Convertor()
        {

        }

        public String getEventName(string id)
        {

            if (eventDic.ContainsKey(id))
            {
                return eventDic[id].NAME;
            }
            return string.Empty;
        }

        private outputPrototype getVIDInfo(string key)
        {

            if (vidDic.Keys.Contains(key))
            {
                return vidDic[key];
            }
            else
            {
                return new outputPrototype();
            }
        }

        public string getSECSData4EventID(string id)
        {
            string result = string.Empty;
            char empty = '\t';
            SettingType set;
            string name = string.Empty;
            try
            {
                set = settingDic["TYPE"];
                if (eventDic.ContainsKey(id))
                {
                    name = eventDic[id].NAME;
                }
                result = empty.ToString() + string.Format(columnInt, set.CEIDType, 1, id, name);

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return result;
        }

        public string getSECSData4RPTID(string id)
        {
            string eventType = string.Empty;
            SettingType set;
            string name = string.Empty;
            string result = string.Empty;
            char horizontalTab = '\t';
            try
            {
                set = settingDic["TYPE"];
                eventType = set.RPTIDType;
                if (reportDic.ContainsKey(id))
                {
                    name = reportDic[id].NAME;
                }
                result = horizontalTab.ToString() + string.Format(columnInt, set.RPTIDType, 1, id, name);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return result;
        }

        public List<string> getSECSData(outputPrototype data)
        {
            List<string> list = new List<string>();
            char horizontalTab = '\t';

            try
            {
                if (data != null)
                {

                    int indexOfEnd = data.VALUE.IndexOf(';');
                    string[] values;
                    if (indexOfEnd < 0)
                    {
                        values = data.VALUE.Split(',');
                    }
                    else
                    {
                        values = data.VALUE.Substring(0, indexOfEnd).Split(',');
                    }


                    foreach (string key in values)
                    {
                        outputPrototype vidInfo = getVIDInfo(key);

                        if (vidInfo.TYPE.ToUpper().IndexOf("A") == 0)
                        {
                            list.Add(horizontalTab.ToString() + string.Format(columnString, "A", vidInfo.NAME.Length, vidInfo.NAME, vidInfo.NAME));
                        }
                        else if (vidInfo.TYPE.ToUpper().IndexOf("L") == 0)
                        {

                            list.Add(horizontalTab.ToString() + columnList);
                        }
                        else
                        {
                            list.Add(horizontalTab.ToString() + string.Format(columnInt, vidInfo.TYPE, 1, 0, vidInfo.NAME));
                        }

                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return list;
        }
        public SettingType getSettings()
        {
            if (settingDic.ContainsKey("TYPE"))
            {
                return settingDic["TYPE"];
            }
            return null;
        }
        public Dictionary<string, outputPrototype>.Enumerator getLink()
        {
            return linkDic.GetEnumerator();
        }
        public Dictionary<string, outputPrototype>.Enumerator getEvent()
        {
            return eventDic.GetEnumerator();
        }

        public Dictionary<string, outputPrototype>.Enumerator getReport()
        {
            return reportDic.GetEnumerator();
        }

        public void StorageSource(List<string> list)
        {
            HGemConfigFormat SplitHGEMConfig4Data = new HGemConfigFormat();

            try
            {
                foreach (string tmp in list)
                {
                    string[] arraySplit = tmp.Split(',');
                    string category = arraySplit[0].Trim();
                    int index = tmp.IndexOf('=');

                    if (category.ToUpper().IndexOf(Standard.key4Vid) == 0)
                    {
                        string subTmp = tmp.Substring(index + 1).Replace("[", "").Replace("]", "");
                        outputPrototype data = SplitHGEMConfig4Data.outputVid(subTmp);
                        vidDic.Add(data.ID, data);
                    }
                    else if (category.ToUpper().IndexOf(Standard.key4Event) == 0)
                    {
                        string subTmp = tmp.Substring(index + 1).Replace("[", "").Replace("]", "");
                        outputPrototype data = SplitHGEMConfig4Data.outputEvent(subTmp);
                        eventDic.Add(data.ID, data);
                    }
                    else if (category.ToUpper().IndexOf(Standard.key4Link) == 0)
                    {
                        string subTmp = tmp.Substring(index + 1 + 1);
                        outputPrototype data = SplitHGEMConfig4Data.outputReportLink(subTmp);
                        linkDic.Add(data.ID, data);
                    }
                    else if (category.ToUpper().IndexOf(Standard.key4Report) == 0)
                    {
                        string subTmp = tmp.Substring(index + 1 + 1);
                        outputPrototype data = SplitHGEMConfig4Data.outputReport(subTmp);
                        reportDic.Add(data.ID, data);
                    }
                    else if (category.ToUpper().IndexOf(Standard.key4Setting) == 0)
                    {
                        string subTmp = tmp.Substring(index + 1).Replace("[", "").Replace("]", "");
                        SettingType data = SplitHGEMConfig4Data.outputSettings(subTmp);
                        settingDic.Add("TYPE", data);
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

        }




    }
}
