using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.events;
using com.sabratec.util;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class GWTU07_DTL : GalLogicWebForm
{
    protected void Page_Load(object sender, EventArgs e) { }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        this.gx_preFillForm += new EventHandler(page_preFillForm);
        this.gx_postFillForm += new EventHandler(page_postFillForm);
        this.gx_preSendKeys += new GXPreSendKeyEventHandler(page_preSendKeys);
        this.gx_postSendKeys += new GXPostSendKeyEventHandler(page_postSendKeys);
    }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
    }
    protected void page_preFillForm(object sender, EventArgs e)
    {
        try
        {
            CreateToolBar(hostKeysToolbar, new string[] { "add", "next","update","copy" }, null, true);
        }
        catch (Exception error)
        {
            Console.Write(error);
        }
        FillComboBox(supplierClass_DVNDC, AppCache.GetTableData("T23", new string[] { "G", "SUP", "CLS" }));
        FillComboBox(type1_DT1, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(type2_DT2, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(type3_DT3, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(type4_DT4, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(type5_DT5, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));
        FillComboBox(type6_DT6, AppCache.GetTableData("T23", new string[] { "G", "SUP", "PRF" }));

        ToggleIndicatorField(new string[] { "supplierClass_DVNDC" }, hiddenField, true);

    }


    protected void page_postFillForm(object sender, EventArgs e)
    {
        int fieldRow = 15;
        int startFieldColumn = 35;

        LoginRequest currentUserDetails = GetCurrentLoginRequest();
        DBHelper dbHelper = new DBHelper(currentUserDetails.Company, currentUserDetails.UserName);
        string sqlStmt = string.Format(
                   "SELECT T23COD,T23PR5 FROM GALF6{0}.T23 WHERE T23DSP <> 'N' AND T23SYS = 'G' AND T23SUB = 'SUP' AND T23SB1 = 'PRF'",
                   currentUserDetails.Company
               );
        string[] parameters = new string[] { };
        string[][] result = dbHelper.ExecuteQuery(sqlStmt, parameters);
        Dictionary<string, string> codeAndLength = CodeDescriptionArrayToDict(result);

        string key = "";

        if (type1_DT1 != null && type1_DT1.Value != null)
        {
            key = type1_DT1.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key) && codeAndLength.ContainsKey(key))
        {
            string length = Regex.Match(codeAndLength[key], @"^\d+").Value;
            int parsedLength = Int32.Parse(length);

            // List of SelectionInput controls
            var selectionInputs = new[] { SelectionInput1, SelectionInput2, SelectionInput3, SelectionInput4, SelectionInput5 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputs.Length; i++)
            {
                selectionInputs[i].Attributes.Add("offset", (offset).ToString());
                selectionInputs[i].Attributes.Add("maxlength", length);

                offset += SI_offset;
            }

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];

            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputs[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputs[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets1 = new Dictionary<string, string>
            {
                { "SelectionInput1", "0" },
                { "SelectionInput2", (SI_offset).ToString() },
                { "SelectionInput3", (SI_offset * 2).ToString() },
                { "SelectionInput4", (SI_offset * 3).ToString() },
                { "SelectionInput5", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow1"] = offsets1;

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputs)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputs.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputs[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue1 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn)).getContent().Trim();
                string inputValue2 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue3 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue4 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput1.Value = inputValue1;
                SelectionInput2.Value = inputValue2;
                SelectionInput3.Value = inputValue3;
                SelectionInput4.Value = inputValue4;
            }
        }


        //SECOND ROW
        string key2 = "";

        if (type2_DT2 != null && type2_DT2.Value != null)
        {
            key2 = type2_DT2.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key2) && codeAndLength.ContainsKey(key2))
        {
            string lengthRow2 = Regex.Match(codeAndLength[key2], @"^\d+").Value;
            int parsedLength = Int32.Parse(lengthRow2);

            // List of SelectionInput controls
            var selectionInputsRow2 = new[] { SelectionInput6, SelectionInput7, SelectionInput8, SelectionInput9, SelectionInput10 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputsRow2.Length; i++)
            {
                selectionInputsRow2[i].Attributes.Add("offset", (offset).ToString());
                selectionInputsRow2[i].Attributes.Add("maxlength", lengthRow2);
                offset += SI_offset;
            }

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];


            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow + 1, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputsRow2[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputsRow2[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets2 = new Dictionary<string, string>
            {
                { "SelectionInput6", "0" },
                { "SelectionInput7", (SI_offset).ToString() },
                { "SelectionInput8", (SI_offset * 2).ToString() },
                { "SelectionInput9", (SI_offset * 3).ToString() },
                { "SelectionInput10", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow2"] = offsets2;

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputsRow2)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputsRow2.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow + 1, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputsRow2[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue6 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 1, startFieldColumn)).getContent().Trim();
                string inputValue7 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 1, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue8 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 1, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue9 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 1, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput6.Value = inputValue6;
                SelectionInput7.Value = inputValue7;
                SelectionInput8.Value = inputValue8;
                SelectionInput9.Value = inputValue9;
            }
        }


        //THIRD ROW
        string key3 = "";

        if (type3_DT3 != null && type3_DT3.Value != null)
        {
            key3 = type3_DT3.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key3) && codeAndLength.ContainsKey(key3))
        {
            string lengthRow3 = Regex.Match(codeAndLength[key3], @"^\d+").Value;
            int parsedLength = Int32.Parse(lengthRow3);

            // List of SelectionInput controls
            var selectionInputsRow3 = new[] { SelectionInput11, SelectionInput12, SelectionInput13, SelectionInput14, SelectionInput15 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];


            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow + 2, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputsRow3[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputsRow3[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets3 = new Dictionary<string, string>
            {
                { "SelectionInput11", "0" },
                { "SelectionInput12", (SI_offset).ToString() },
                { "SelectionInput13", (SI_offset * 2).ToString() },
                { "SelectionInput14", (SI_offset * 3).ToString() },
                { "SelectionInput15", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow3"] = offsets3;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputsRow3.Length; i++)
            {
                selectionInputsRow3[i].Attributes.Add("offset", (offset).ToString());
                selectionInputsRow3[i].Attributes.Add("maxlength", lengthRow3);
                offset += SI_offset;
            }

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputsRow3)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputsRow3.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow + 2, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputsRow3[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue11 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 2, startFieldColumn)).getContent().Trim();
                string inputValue12 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 2, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue13 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 2, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue14 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 2, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput11.Value = inputValue11;
                SelectionInput12.Value = inputValue12;
                SelectionInput13.Value = inputValue13;
                SelectionInput14.Value = inputValue14;
            }
        }


        //FORTH ROW
        string key4 = "";

        if (type4_DT4 != null && type4_DT4.Value != null)
        {
            key4 = type4_DT4.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key4) && codeAndLength.ContainsKey(key4))
        {
            string lengthRow4 = Regex.Match(codeAndLength[key4], @"^\d+").Value;
            int parsedLength = Int32.Parse(lengthRow4);

            // List of SelectionInput controls
            var selectionInputsRow4 = new[] { SelectionInput16, SelectionInput17, SelectionInput18, SelectionInput19, SelectionInput20 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];


            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow + 3, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputsRow4[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputsRow4[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets4 = new Dictionary<string, string>
            {
                { "SelectionInput16", "0" },
                { "SelectionInput17", (SI_offset).ToString() },
                { "SelectionInput18", (SI_offset * 2).ToString() },
                { "SelectionInput19", (SI_offset * 3).ToString() },
                { "SelectionInput20", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow4"] = offsets4;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputsRow4.Length; i++)
            {
                selectionInputsRow4[i].Attributes.Add("offset", (offset).ToString());
                selectionInputsRow4[i].Attributes.Add("maxlength", lengthRow4);
                offset += SI_offset;
            }

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputsRow4)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputsRow4.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow + 3, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputsRow4[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue16 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 3, startFieldColumn)).getContent().Trim();
                string inputValue17 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 3, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue18 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 3, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue19 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 3, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput16.Value = inputValue16;
                SelectionInput17.Value = inputValue17;
                SelectionInput18.Value = inputValue18;
                SelectionInput19.Value = inputValue19;
            }
        }


        //FIFTH ROW
        string key5 = "";

        if (type5_DT5 != null && type5_DT5.Value != null)
        {
            key5 = type5_DT5.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key5) && codeAndLength.ContainsKey(key5))
        {
            string lengthRow5 = Regex.Match(codeAndLength[key5], @"^\d+").Value;
            int parsedLength = Int32.Parse(lengthRow5);

            // List of SelectionInput controls
            var selectionInputsRow5 = new[] { SelectionInput21, SelectionInput22, SelectionInput23, SelectionInput24, SelectionInput25 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputsRow5.Length; i++)
            {
                selectionInputsRow5[i].Attributes.Add("offset", (offset).ToString());
                selectionInputsRow5[i].Attributes.Add("maxlength", lengthRow5);
                offset += SI_offset;
            }

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];


            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow + 4, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputsRow5[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputsRow5[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets5 = new Dictionary<string, string>
            {
                { "SelectionInput21", "0" },
                { "SelectionInput22", (SI_offset).ToString() },
                { "SelectionInput23", (SI_offset * 2).ToString() },
                { "SelectionInput24", (SI_offset * 3).ToString() },
                { "SelectionInput25", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow5"] = offsets5;

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputsRow5)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputsRow5.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputsRow5[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue21 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn)).getContent().Trim();
                string inputValue22 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue23 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue24 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput21.Value = inputValue21;
                SelectionInput22.Value = inputValue22;
                SelectionInput23.Value = inputValue23;
                SelectionInput24.Value = inputValue24;
            }
        }


        //SIXTH ROW
        string key6 = "";

        if (type6_DT6 != null && type6_DT6.Value != null)
        {
            key6 = type6_DT6.Value.Trim();
        }

        if (!string.IsNullOrEmpty(key6) && codeAndLength.ContainsKey(key6))
        {
            string lengthRow6 = Regex.Match(codeAndLength[key6], @"^\d+").Value;
            int parsedLength = Int32.Parse(lengthRow6);

            // List of SelectionInput controls
            var selectionInputsRow6 = new[] { SelectionInput26, SelectionInput27, SelectionInput28, SelectionInput29, SelectionInput30 };
            int offset = 0;
            int SI_offset = parsedLength + 1;

            // Set attributes for all inputs
            for (int i = 0; i < selectionInputsRow6.Length; i++)
            {
                selectionInputsRow6[i].Attributes.Add("offset", (offset).ToString());
                selectionInputsRow6[i].Attributes.Add("maxlength", lengthRow6);
                offset += SI_offset;
            }

            var fields = gx_session.getScreen(ScreenRequest).getFields();
            var bgColors = new int[5];


            for (int i = 0; i < 5; i++)
            {
                int columnOffset = startFieldColumn + SI_offset * i;
                bgColors[i] = fields.getFieldByPosition(new GXPosition(fieldRow + 5, columnOffset)).getBGColor();

                if (bgColors[i] == 12)
                {
                    selectionInputsRow6[i].Style.Add("border", "#ff2149 1px solid");
                    selectionInputsRow6[i].Style.Add("box-shadow", "0 0 10px 3px #ff21494f");
                }
            }

            Dictionary<string, string> offsets6 = new Dictionary<string, string>
            {
                { "SelectionInput26", "0" },
                { "SelectionInput27", (SI_offset).ToString() },
                { "SelectionInput28", (SI_offset * 2).ToString() },
                { "SelectionInput29", (SI_offset * 3).ToString() },
                { "SelectionInput30", (SI_offset * 4).ToString() }
            };
            Session["GWT07_SFL_OFFSETSRow6"] = offsets6;

            // Set the classes based on length
            string inputClass = parsedLength == 10 ? "no-color input-small2" :
                                (parsedLength == 7 || parsedLength == 5) ? "no-color input-small" :
                                (parsedLength == 2) ? "no-color input-xsmall" :
                                (parsedLength == 1) ? "no-color input-xxsmall" : "";

            foreach (var input in selectionInputsRow6)
            {
                input.Attributes["class"] = inputClass;
            }

            // Assign values based on length
            if (parsedLength != 10)
            {
                for (int i = 0; i < selectionInputsRow6.Length; i++)
                {
                    int fieldOffset = i == 0 ? 0 : i * SI_offset;
                    string inputValue = gx_session.getScreen(ScreenRequest)
                                                .getFields()
                                                .getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + fieldOffset))
                                                .getContent().Trim();

                    selectionInputsRow6[i].Value = inputValue;
                }
            }
            else
            {
                string inputValue26 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn)).getContent().Trim();
                string inputValue27 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset)).getContent().Trim();
                string inputValue28 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset * 2)).getContent().Trim();
                string inputValue29 = gx_session.getScreen(ScreenRequest).getFields().getFieldByPosition(new GXPosition(fieldRow + 4, startFieldColumn + SI_offset * 3)).getContent().Trim();

                SelectionInput26.Value = inputValue26;
                SelectionInput27.Value = inputValue27;
                SelectionInput28.Value = inputValue28;
                SelectionInput29.Value = inputValue29;
            }
        }


    }


    protected void page_preSendKeys(object sender, GXPreSendKeyEventArgs e)
    {
        string keyPressed = e.sendKeyRequest.getKeys().ToLower();
        string desiredOffset = offsetToPress.Value;
        string RowNumner = RowNum.Value;
        int fieldRow = 15;
        int startFieldColumn = 35;
        Dictionary<string, string> offsets1 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow1"];
        Dictionary<string, string> offsets2 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow2"];
        Dictionary<string, string> offsets3 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow3"];
        Dictionary<string, string> offsets4 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow4"];
        Dictionary<string, string> offsets5 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow5"];
        Dictionary<string, string> offsets6 = (Dictionary<string, string>)Session["GWT07_SFL_OFFSETSRow6"];

        if (keyPressed == "[pf1]" && !String.IsNullOrEmpty(desiredOffset))
        {
            GXCursor cursorTarget = new GXCursor(new GXPosition(fieldRow + Int32.Parse(RowNumner), startFieldColumn + Int32.Parse(desiredOffset)));
            e.sendKeyRequest.setCursor(cursorTarget);
        }

        if (offsets1 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 1; i <= 5; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets1[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

        if (offsets2 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 6; i <= 10; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets2[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow + 1, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

        if (offsets3 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 11; i <= 15; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets3[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow + 2, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

        if (offsets4 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 16; i <= 20; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets4[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow + 3, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

        if (offsets5 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 21; i <= 25; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets5[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow + 4, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

        if (offsets6 != null)
        {
            GXSendKeysRequest setValueToInputReq = new GXSendKeysRequest();
            for (int i = 26; i <= 30; i++)
            {
                string fieldId = String.Format("SelectionInput{0}", i);
                HtmlInputText currentInput = (HtmlInputText)Form.FindControl("GXPagePlaceHolder").FindControl(fieldId);
                string currentValue = currentInput.Value;
                string column = offsets6[fieldId];

                GXPosition fieldPos = new GXPosition(fieldRow + 5, startFieldColumn + Int32.Parse(column));
                setValueToInputReq.addInputField(fieldPos, currentValue);
            }
            gx_session.sendKeys(setValueToInputReq);
        }

    }


}