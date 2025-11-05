
using Newtonsoft.Json;
using System.Text.RegularExpressions;
using System.IO;
using System.Net;
using System.Web;
using System.Collections.Generic;
using System;
using Newtonsoft.Json.Linq;
public class AiCopilot
{


    public string CallOpenAi(string  systemPrompt, string userPrompt, int opt, string username)
    {
        UpdateAppstats(opt, username);
        string url = "https://imcoai-eastus2.openai.azure.com/openai/deployments/gpt-4.1/chat/completions?api-version=2025-01-01-preview";
        string apiKey = "9312eb8fab554461bb95b8b542192a2e";
        var requestBody = new
        {
            messages = new[]
         {
           new { role = "system", content = systemPrompt },
            new { role = "user", content = userPrompt }
        },
            temperature = 0,
            frequency_penalty = 0,
            presence_penalty = 0,
            top_p = 0.95,
            stop = (string)null
        };

        string jsonBody = JsonConvert.SerializeObject(requestBody);

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "POST";
        request.ContentType = "application/json";
        request.Headers["api-key"] = apiKey;

        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
        {
            streamWriter.Write(jsonBody);
        }
        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string responseText = reader.ReadToEnd();
                Newtonsoft.Json.Linq.JObject jsonResponse = Newtonsoft.Json.Linq.JObject.Parse(responseText);
                string content = "";

                if (jsonResponse["choices"] != null)
                {
                    Newtonsoft.Json.Linq.JArray choicesArray = (Newtonsoft.Json.Linq.JArray)jsonResponse["choices"];
                    if (choicesArray.Count > 0)
                    {
                        Newtonsoft.Json.Linq.JObject firstChoice = (Newtonsoft.Json.Linq.JObject)choicesArray[0];
                        if (firstChoice["message"] != null)
                        {
                            Newtonsoft.Json.Linq.JObject messageObject = (Newtonsoft.Json.Linq.JObject)firstChoice["message"];
                            if (messageObject["content"] != null)
                            {
                                content = messageObject["content"].ToString();
                            }
                        }
                    }
                }
                if (!string.IsNullOrEmpty(content))
                {
                    return ExtractJsonFromContent(content);
                }
                return "No invoice data found.";


            }
        }
        catch (WebException ex)
        {
            return "Error: " + ex.Message;
        }

    }

    private string ExtractJsonFromContent(string content)
    {
        if (string.IsNullOrWhiteSpace(content))
            return "No invoice data found.";

        string jsonArrayText;

        if (content.Contains("```json") && content.Contains("```"))
        {
            int startIndex = content.IndexOf("```json") + 7;
            int endIndex = content.LastIndexOf("```");

            if (endIndex > startIndex)
            {
                jsonArrayText = content.Substring(startIndex, endIndex - startIndex).Trim();
            }
            else
            {
                return "Invalid JSON block format.";
            }
        }
        else
        {
            jsonArrayText = content.Trim();
        }

        // תיקון פורמט
        string fixedJson = jsonArrayText.Replace("}{", "},{").Replace(": ", ":");

        string cleanedJson = Regex.Replace(fixedJson, @"(?<=""amount"":\s?)(\d{1,3},)+\d{3}(\.\d+)?", m =>
        {
            return m.Value.Replace(",", "");
        });

        try
        {
            Newtonsoft.Json.Linq.JToken invoiceArrayToken = Newtonsoft.Json.Linq.JToken.Parse(cleanedJson);
            return invoiceArrayToken.ToString();
        }
        catch (WebException ex)
        {
            return "Error: " + ex.Message;
        }
    }

    public string GetToken()
    {
        string url = "https://intranet.imc.co.il/API/Auth/token";

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);

        var requestBody = new
        {
            messages = new[]
        {
        new {  content = (string)null }
    },
            temperature = 0.2,
            frequency_penalty = 0,
            presence_penalty = 0,
            top_p = 0.95,
            stop = (string)null
        };
        request.Method = "POST";
        request.ContentType = "application/json";
        request.Headers["ClientKey"] = "54654421134.angine-comp.com";
        request.Headers["ClientPassword"] = "ang+wXTD1287zktvqe=_laqmn7BN5631";
        string jsonBody = JsonConvert.SerializeObject(requestBody);
        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
        {
            streamWriter.Write(jsonBody);
        }
        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string responseBody = reader.ReadToEnd();
                JObject jsonResponse = JObject.Parse(responseBody);

                if (jsonResponse != null && jsonResponse["token"] != null)
                {
                    string token = jsonResponse["token"].ToString();
                    return token;
                }
                else
                {
                    return "Error: Token not found in response.";
                }
            }
        }
        catch (WebException ex)
        {
            using (var errorResponse = (HttpWebResponse)ex.Response)
            using (var reader = new StreamReader(errorResponse.GetResponseStream()))
            {
                string errorText = reader.ReadToEnd();
                return "Error: " + errorText;
            }
        }
    }

    public string SendToken(string token, string branchCode, int customerNumber, string remark)
    {
        string url = "https://intranet.imc.co.il/API/GalWeb/AddCustAgingRemark";

        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "POST";
        request.ContentType = "application/json";
        request.Headers["Authorization"] = "Bearer " + token;

        var requestBody = new
        {
            branchCode = branchCode,
            customerNumber = customerNumber,
            remark = remark
        };

        string jsonBody = JsonConvert.SerializeObject(requestBody);
        using (var streamWriter = new StreamWriter(request.GetRequestStream()))
        {
            streamWriter.Write(jsonBody);
        }

        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                {
                    string responseText = reader.ReadToEnd();
                    return responseText;
                }
            }
        }
        catch (WebException ex)
        {
            using (StreamReader reader = new StreamReader(ex.Response.GetResponseStream()))
            {
                string errorResponse = reader.ReadToEnd();
                return "Error: " + errorResponse;
            }
        }
    }

    public string GetPrompt(string opt)
    {
        Dictionary<string, object> fullConfig = JsonToDictionary("/companyConfig/AIPROMPT");
        string company = AppCache.getCompany();

        // קודם חפש לפי שם החברה
        if (fullConfig.ContainsKey(company))
        {
            string prompt = FindPrompt(fullConfig[company], opt);
            if (!string.IsNullOrEmpty(prompt))
                return prompt;
        }

        // אם לא נמצא, fallback ל-GENERAL
        if (fullConfig.ContainsKey("GENERAL"))
        {
            string prompt = FindPrompt(fullConfig["GENERAL"], opt);
            if (!string.IsNullOrEmpty(prompt))
                return prompt;
        }

        return null;
    }


    private string FindPrompt(object listObj, string opt)
    {
        JArray jArray = listObj as JArray;
        if (jArray == null)
            return null;

        foreach (JToken item in jArray)
        {
            JObject jObj = item as JObject;
            if (jObj == null)
                continue;

            JToken optToken;
            if (jObj.TryGetValue("opt", out optToken) && optToken.ToString() == opt)
            {
                JToken promptToken;
                if (jObj.TryGetValue("prompt", out promptToken))
                {
                    return promptToken.ToString();
                }
            }
        }

        return null;
    }

    protected Dictionary<string, object> JsonToDictionary(string filepath)
    {
        return JsonConvert.DeserializeObject<Dictionary<string, object>>
            (File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + filepath + ".json"));
    }

    private void UpdateAppstats(int opt, string username)
    {
        DBHelper dbHelper = new DBHelper(AppCache.getCompany(), username);
        DateTime currentTime = DateTime.Now;
        string date = currentTime.ToString("yyyyMMdd");
        string time = currentTime.ToString("HHmmss");
        string userFullName = "";
        string sqlStmt = "SELECT TSUNME FROM GALFN.TSU WHERE TSUTYP = 'U' AND TSUUSR = ? LIMIT 1";
        string[] parameters = new string[] { username };
        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        if (result.Length == 1)
        {
            userFullName = result[0][0].Trim();
        }
        string action;
        switch (opt)
        {
            case 402:
                action = "F_402";
                break;
            case 403:
                action = "F_403";
                break;
            case 601:
                action = "F_601";
                break;
            default:
                action = "AIFIN";
                break;
        }
        sqlStmt = string.Format("INSERT INTO GALFN.GPL (GPLUSR, GPLUNME, GPLCMP, GPLAPP, GPLACT, GPLTTRN, GPLTIME) VALUES (?,?,?,?,?,{0},{1})", date, time);
        parameters = new string[] { username, userFullName, AppCache.getCompany(), "GALWEB", action };
        dbHelper.ExecuteNonQuery(sqlStmt, parameters);
    }

}