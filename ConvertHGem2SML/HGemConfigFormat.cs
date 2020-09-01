using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace ConvertHGem2SML
{
    class HGemConfigFormat
    {
        Dictionary<string, string> list = Standard.getLibary();

        public HGemConfigFormat()
        {

        }

        public SettingType outputSettings(string content)
        {
            string[] arr = content.Split(',');

            SettingType data = new SettingType();
            string[] idType = arr[0].Split('=');
            data.DataIDType = idType[1];

            string[] vidType = arr[1].Split('=');
            data.VIDType = vidType[1];

            string[] ceidType = arr[2].Split('=');
            data.CEIDType = ceidType[1];

            string[] rptidType = arr[3].Split('=');
            data.RPTIDType = rptidType[1];

            return data;
        }

        public outputPrototype outputVid(string content)
        {
            string[] array = content.Split(',');
            string outputString = string.Empty;

            outputPrototype data = new outputPrototype();
            string[] idArr = array[0].Split('=');
            data.ID = idArr[1];
            string[] nameArr = array[1].Split('=');
            data.NAME = nameArr[1];
            string[] typeArr = array[2].Split('=');
            data.TYPE = typeArr[1];
            string[] value = array[3].Split('=');
            data.VALUE = value[1];

            // outputString += string.Format(list[Standard.key4Vid].ToString(), data.ID, data.NAME, data.TYPE, data.VALUE);

            return data;
        }

        public outputPrototype outputEvent(string content)
        {
            string[] array = content.Split(',');
            string outputString = string.Empty;

            outputPrototype data = new outputPrototype();
            string[] idArr = array[0].Split('=');
            data.ID = idArr[1];
            string[] nameArr = array[1].Split('=');
            data.NAME = nameArr[1];
            string[] valueArr = array[2].Split('=');
            data.VALUE = valueArr[1];
            //outputString += string.Format(list[Standard.key4Event].ToString(), data.ID, data.NAME, data.VALUE);

            return data;
        }

        public outputPrototype outputReportLink(string content)
        {
            string[] arr = Regex.Split(content, "Reports=");
            string outputString = string.Empty;

            outputPrototype data = new outputPrototype();
            string[] idArr = arr[0].Replace (",","").Split('=');
            data.ID = idArr[1];
            string[] valueArr = arr[1].Replace ("[","").Replace ("]","").Split(',');

            data.VALUE = combination4Output(valueArr, 0);
            //outputString+= string.Format(list[Standard.key4Report].ToString(), data.ID, data.NAME, data.VALUE);

            return data;
        }



        public outputPrototype outputReport(string content)
        {
            string[]  arr = Regex.Split(content, "Vids=");
            outputPrototype data = new outputPrototype();
            string[] idAndName = arr[0].Split(',');

            string[] idArr = idAndName[0].Split('=');
            data.ID = idArr[1];
            string[] nameArr = idAndName[1].Split('=');
            data.NAME = nameArr[1];
            string[] tmp  = arr[1].Replace ("[","").Replace ("]","").Split(',');
            data.VALUE = combination4Output(tmp, 0);
            // outputString += string.Format(list[Standard.key4Link].ToString(), data.ID, data.VALUE);

            return data;
        }

        private string combination4Output(string[] stringLine, int startIndex)
        {
            string value = string.Empty;

            for (int i = startIndex; i < stringLine.Length; i++)
            {
                string tmp = stringLine[i].Trim();

                if (tmp != string.Empty)
                {
                    if (value != String.Empty)
                    {
                        value += ",";
                    }
                    value += tmp;
                }
            }

            return value;
        }
    }
}
