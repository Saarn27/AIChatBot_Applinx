/// <summary>
/// Summary description for HostKeysCaptionTranslator
/// </summary>
public class HostKeysCaptionTranslator
{
    static HostKeysCaptionTranslator()
    {
    }

    public static string GetLongWord(string hostKeyCaption)
    {
        string longWord;
        switch (hostKeyCaption)
        {
            case "expns":
                longWord = "Expenses";
                break;
            case "1stord":
                longWord = "First Orders Only";
                break;
            case "allord":
                longWord = "All Orders";
                break;
            case "rptord":
                longWord = "Repeat Orders Only";
                break;
            case "loc.only":
                longWord = "Local Only";
                break;
            case "curr.calc":
                longWord = "Currency Calculator";
                break;
            case "calender":
                longWord = "Calender";
                break;
            case "sub whs":
                longWord = "Sub Warehouse";
                break;
            case "do trns":
                longWord = "Do transfer";
                break;
            case "curr.code":
                longWord = "Currency Code";
                break;
            case "chgusr":
                longWord = "Change User";
                break;
            case "m.upd":
                longWord = "Massive Update";
                break;
            case "pdm":
                longWord = "PDM/Pando";
                break;
            case "cur.calc":
                longWord = "Currency Calculator";
                break;
            case "w.f cnf":
                longWord = "Workflow Confirmation";
                break;
            case "acc":
                longWord = "Account";
                break;
            case "rem2":
                longWord = "Remark";
                break;
            case "po inf":
                longWord = "Purchase Order Information";
                break;
            case "by %":
                longWord = "By Percent";
                break;
            case "open 503(1)":
                longWord = "Open Expense Accounts(503)";
                break;
            case "upd.ce":
                longWord = "Update Cost Element";
                break;
            case "dlt all":
                longWord = "Delete All";
                break;
            case "no loc":
                longWord = "No Local";
                break;
            case "no.check.auto.whs":
                longWord = "No Check Auto Warehouse";
                break;
            case "err":
                longWord = "Error";
                break;
            case "aprvall":
                longWord = "Aprove All";
                break;
            case "carton inq.":
                longWord = "Carton Inquiry";
                break;
            case "trns":
                longWord = "Transmit";
                break;
            case "otc":
                longWord = "Outsanding";
                break;
            case "atp":
                longWord = "ATP";
                break;
            case "uncon.acc":
                longWord = "Unconnected Accounts";
                break;
            case "disp acc":
                longWord = "Display Account";
                break;
            case "dis.inq":
                longWord = "Disposal Inquiry";
                break;
            case "dep.inq":
                longWord = "Depreciation Inquiry";
                break;
            case "lvl":
                longWord = "Levels";
                break;
            case "by c.c.":
                longWord = "Customer Currency";
                break;
            case "by s.c.":
                longWord = "System Currency";
                break;
            case "by alloc.table":
                longWord = "By Allocation Table ";
                break;
            case "all qty":
                longWord = "All Quantity";
                break;
            case "by prod":
                longWord = "By Producer";
                break;
            case "by div":
                longWord = "By Division";
                break;
            case "prod":
                longWord = "Producer";
                break;
            case "by custtyp":
                longWord = "By Customer Type";
                break;
            case "by ord typ":
                longWord = "By Order Type";
                break;
            case "by deliver":
                longWord = "By Delivery";
                break;
            case "by cust":
                longWord = "By Customer";
                break;
            case "msv.upd.price":
                longWord = "Massive Update Price";
                break;
            case "iw":
                longWord = "IW";
                break;
            case "emp.num sort":
                longWord = "Employee Number Sort";
                break;
            case "weight+prt":
                longWord = "Weight + Print";
                break;
            case "prof.inq":
                longWord = "Proforma Inquiry";
                break;
            case "clr all":
                longWord = "Clear All";
                break;
            case "cln.all":
                longWord = "Clear All";
                break;
            case "cust inq":
                longWord = "Customer Inquiry";
                break;
            case "vnd inq":
                longWord = "Vendor Inquiry";
                break;
            case "last trn":
                longWord = "Last Transaction";
                break;
            case "l.name":
                longWord = "Last Name";
                break;
            case "l. name":
                longWord = "Long Name";
                break;
            case "s. name":
                longWord = "Short Name";
                break;
            case "show sec":
                longWord = "Show Secondary";
                break;
            case "trn.":
                longWord = "Transaction";
                break;
            case "available whs list":
                longWord = "Available Warehouse List";
                break;
            case "whs sts/item sts":
                longWord = "Warehouse Status / Item Status";
                break;
            case "cls events":
                longWord = "Closed Events";
                break;
            case "opn events":
                longWord = "Opened Events";
                break;
            case "re-open prj":
                longWord = "Re-open projects";
                break;
            case "v.q":
            case "vndqut":
                longWord = "Vendor Quotation";
                break;
            case "bud":
                longWord = "Budget";
                break;
            case "get prc":
                longWord = "Get Price";
                break;
            case "dlt+reac":
                longWord = "Delete + Reactive";
                break;
            case "quot.upd":
                longWord = "Update Quotation";
                break;
            case "sav":
                longWord = "Save";
                break;
            case "slt":
                longWord = "Select";
                break;
            case "slow.dead":
                longWord = "Slow / Dead";
                break;
            case "rcpt.inq":
                longWord = "Reciept Inquiry";
                break;
            case "recm.cls":
                longWord = "Recommend to close";
                break;
            case "dwn":
                longWord = "Down";
                break;
            case "product or":
                longWord = "Product order";
                break;
            case "no.crd":
                longWord = "No Credit Confirmation";
                break;
            case "ncrdoc":
                longWord = "NCR document";
                break;
            case "rtndoc":
                longWord = "Return document";
                break;
            case "opncrdinv":
                longWord = "Open credit invoice";
                break;
            case "acc.no.by group":
                longWord = "Account number by group";
                break;
            case "diff":
                longWord = "Difference";
                break;
            case "inv.view":
                longWord = "Invoice view";
                break;
            case "t.view":
                longWord = "Team View";
                break;
            case "inv.inq":
                longWord = "Invoice inquiry";
                break;
            case "acc.inq":
                longWord = "Account inquiry";
                break;
            case "a.c.":
                longWord = "Account Currency";
                break;
            case "upd.period":
                longWord = "Update Period";
                break;
            case "cng inv":
                longWord = "Change Invoice";
                break;
            case "chng.sts":
                longWord = "Change Status";
                break;
            case "inv.dtl excel":
                longWord = "Invoice Detail Excel";
                break;
            case "cnf.inv":
            case "cnf.inv.":
            case "conf.inv":
                longWord = "Confirmed Invoices";
                break;
            case "future inv":
                longWord = "Future Invoice";
                break;
            case "std.inq":
                longWord = "Standard Inquiry";
                break;
            case "ext":
                longWord = "Exit";
                break;
            case "prc":
                longWord = "Price";
                break;
            case "vndprc":
                longWord = "Vendor Price";
                break;
            case "whs":
                longWord = "Warehouse";
                break;
            case "upd":
            case "upd.":
            case "update":
                longWord = "Update";
                break;
            case "upd purch.ord":
                longWord = "Update Purchase Order";
                break;
            case "cpc":
                longWord = "CPC";
                break;
            case "prv":
            case "prv.":
            case "prev":
            case "prev.":
            case "pre":
            case "previons":
            case "previos":
            case "previouse":
            case "previuos":
            case "prvious":
            case "cancel":
            case "back":
            case "leave":
            case "prv dsc":
            case "leave without deleting or repl":
                longWord = "Previous";
                break;
            case "prv acc":
                longWord = "Previous Account";
                break;
            case "nxt acc":
                longWord = "Next Account";
                break;
            case "open qout line":
                longWord = "Open Quate Line";
                break;
            case "opt":
                longWord = "Option";
                break;
            case "report opt.help":
                longWord = "Report Option Help";
                break;
            case "update rmk":
                longWord = "Update Remark";
                break;
            case "rmk2":
                longWord = "Remark return reason";
                break;
            case "add":
                longWord = "Add";
                break;
            case "appr":
            case "appr.":
                longWord = "Approve";
                break;
            case "add/upd":
            case "upd/add":
            case "update/add":
                longWord = "Add/Update";
                break;
            case "upd/add/del":
                longWord = "Update/Add/Delte";
                break;
            case "update & exit":
                longWord = "Update & Exit";
                break;
            case "update+print":
                longWord = "Update & Print";
                break;
            case "upd+send":
                longWord = "Update & Send";
                break;
            case "upd-dollar & rebuild":
                longWord = "Update Dollar & Rebuild";
                break;
            case "cpy":
            case "copy":
                longWord = "Copy";
                break;
            case "cpy bom":
                longWord = "Copy BOM";
                break;
            case "copy j/e":
                longWord = "Copy Juornal Entry";
                break;
            case "copy req.to new":
                longWord = "Copy Request to New";
                break;
            case "copyinv":
                longWord = "Copy Invoice";
                break;
            case "addinv":
                longWord = "Add invoice";
                break;
            case "add alt.bom":
                longWord = "Add Alternative BOM";
                break;
            case "whe.use":
                longWord = "Where Used";
                break;
            case "delete":
            case "dlt":
                longWord = "Delete";
                break;
            case "delete last rev":
                longWord = "Delete Last Revision";
                break;
            case "dlt p.s(a)":
                longWord = "Delete Picking Slip(A)";
                break;
            case "dlt alloc(d)":
                longWord = "Delete Allocation(D)";
                break;
            case "maint":
            case "maint.":
            case "mainten":
            case "maintence":
                longWord = "Maintenance";
                break;
            case "mas.upd":
            case "mass. upd.":
            case "massive.upd":
                longWord = "Massive Update";
                break;
            case "mass.add.":
                longWord = "Massive Addition";
                break;
            case "parm.mainten":
                longWord = "Parm maintenance";
                break;
            case "rebuild":
            case "re-build":
            case "rebld":
                longWord = "Rebuild";
                break;
            case "rtrnall":
                longWord = "Return All";
                break;
            case "upd all selected recds in sbf":
                longWord = "";
                break;
            case "upd prc":
                longWord = "Update Price";
                break;
            case "upd.cost":
                longWord = "Update Cost";
                break;
            case "addition dsc":
                longWord = "Additional Description";
                break;
            case "additional Inf.":
                longWord = "Additional Information";
                break;
            case "addit.data":
                longWord = "Additional Data";
                break;
            case "avg":
            case "avgu":
                longWord = "Average Usage";
                break;
            case "by val":
                longWord = "By Value";
                break;
            case "cust.description":
                longWord = "Customer Description";
                break;
            case "cust data":
                longWord = "Customer Data";
                break;
            case "cust":
            case "cust.":
                longWord = "Customers";
                break;
            case "criter":
                longWord = "Criteria";
                break;
            case "desc.":
                longWord = "Description";
                break;
            case "conf+trans.":
                longWord = "Confirmation+Transfer";
                break;
            case "desc.2":
                longWord = "Second Description";
                break;
            case "disp":
                longWord = "Display";
                break;
            case "dispaly acc.":
            case "display acc.":
                longWord = "Display Account";
                break;
            case "hide acc.":
            case "hide acc":
                longWord = "Hide Account";
                break;
            case "dsp all.":
                longWord = "Display All";
                break;
            case "dsp open":
                longWord = "Display Open";
                break;
            case "dsp report":
                longWord = "Display Report";
                break;
            case "ctr.rep":
                longWord = "Control Report";
                break;
            case "dsplibl":
                longWord = "Display Libraries";
                break;
            case "dispaly assets":
                longWord = "Expend All Assets";
                break;
            case "dspfile":
                longWord = "Display File";
                break;
            case "valuation per whs":
                longWord = "Valuation per warehouse";
                break;
            case "duedate":
                longWord = "Due Date";
                break;
            case "purch inq":
                longWord = "Purchase Inquiry";
                break;
            case "entry+issue":
                longWord = "Entry & Issue";
                break;
            case "itemdesc":
                longWord = "Item Description";
                break;
            case "itm":
                longWord = "Item";
                break;
            case "itms":
                longWord = "Items";
                break;
            case "loc cur":
            case "loc cur.":
                longWord = "Local Currency";
                break;
            case "usd cur.":
            case "usd cur":
                longWord = "Usd Currency";
                break;
            case "local/imc desc.":
                longWord = "Local/IMC Description";
                break;
            case "long desc":
            case "long desc.":
            case "long dsc":
            case "longdsc":
            case "l.desc":
            case "l.desc.":
            case "lng.dsc":
            case "long":
                longWord = "Long Description";
                break;
            case "next.":
            case "nxt":
            case "nex":
                longWord = "Next";
                break;
            case "nxt dsc":
                longWord = "Next Description";
                break;
            case "nxt tab":
                longWord = "Next Tab";
                break;
            case "prv mon":
                longWord = "Previous Month";
                break;
            case "short desc":
            case "short dsc":
                longWord = "Short Description";
                break;
            case "snd":
                longWord = "Send";
                break;
            case "spec":
                longWord = "Specify";
                break;
            case "logaccpt":
                longWord = "Logic Receipt";
                break;
            case "rcp":
                longWord = "Receipt";
                break;
            case "opn.crd.inv":
                longWord = "Open Credit Invoice";
                break;
            case "crd.inv":
                longWord = "Credit Invoice";
                break;
            case "ncr":
                longWord = "NCR";
                break;
            case "stk.code":
                longWord = "Stock Code";
                break;
            case "match cod":
                longWord = "Match Code";
                break;
            case "sys":
                longWord = "System";
                break;
            case "toggele":
                longWord = "Toggle";
                break;
            case "prv.tab":
            case "prvious Tab":
                longWord = "Previous Tab";
                break;
            case "del all":
                longWord = "Delete All";
                break;
            case "desc":
                longWord = "Description";
                break;
            case "rem":
            case "remrk":
            case "rmk":
            case "rmks":
            case "remark":
                longWord = "Remarks";
                break;
            case "alloc.":
                longWord = "Allocate";
                break;
            case "alloc.all":
                longWord = "Allocate All";
                break;
            case "by quart.":
                longWord = "By Quarters";
                break;
            case "clear subst":
                longWord = "Clear Subset";
                break;
            case "clear screen":
                longWord = "Clear Screen";
                break;
            case "subcontr":
                longWord = "Sub Contractor";
                break;
            case "subwhs":
                longWord = "Sub Warehouse";
                break;
            case "mtc":
                longWord = "MTC";
                break;
            case "no auto whs upd":
            case "no auto whs update":
                longWord = "No Auto Warehouse Update";
                break;
            case "aut.for option":
                longWord = "Authorization For Option";
                break;
            case "user dfn":
            case "user def":
            case "userdef":
            case "usr def":
            case "usrdfn":
            case "usr dfn":
            case "u.d":
            case "ud":
                longWord = "User Define";
                break;
            case "qty":
                longWord = "Quantity";
                break;
            case "qut":
            case "quot":
                longWord = "Quotation";
                break;
            case "quot+more":
                longWord = "Quotation + More";
                break;
            case "dlt all scans":
                longWord = "Delete All Scans";
                break;
            case "force qty":
                longWord = "Force Quantity";
                break;
            case "hdr":
            case "headrs":
                longWord = "Header";
                break;
            case "his":
            case "hst":
                longWord = "History";
                break;
            case "hist":
                longWord = "History ";
                break;
            case "onnrout":
            case "onroute":
                longWord = "On Route";
                break;
            case "cust info":
                longWord = "Customer Info";
                break;
            case "cust.ord":
                longWord = "Customer Order";
                break;
            case "prd.ord":
            case "prod.ord":
                longWord = "Production Order";
                break;
            case "nxtguide":
                longWord = "Next Guide";
                break;
            case "opn.220":
                longWord = "Open 220";
                break;
            case "opnitm":
                longWord = "Open Item";
                break;
            case "srt by name":
                longWord = "Sort By Name";
                break;
            case "srt by num":
                longWord = "Sort By Number";
                break;
            case "hld":
                longWord = "Hold";
                break;
            case "hldline":
                longWord = "Hold line";
                break;
            case "hldpo":
                longWord = "Hold Purchase Order";
                break;
            case "flt":
            case "fltr":
                longWord = "Filter";
                break;
            case "manualtax":
                longWord = "Manual Tax";
                break;
            case "trck":
                longWord = "Tracking";
                break;
            case "shipto":
                longWord = "Ship To";
                break;
            case "statis.":
            case "stt":
                longWord = "Statistics";
                break;
            case "other sts":
                longWord = "Other Statistics";
                break;
            case "next/prv groups":
                longWord = "Next/Previous Groups";
                break;
            case "bot":
            case "btm":
                longWord = "Bottom";
                break;
            case "dlt.route":
                longWord = "Delete Route";
                break;
            case "srch":
                longWord = "Search";
                break;
            case "recalc by overhead":
                longWord = "Recalculate By Overhead";
                break;
            case "ord inq":
                longWord = "Order Inquiry";
                break;
            case "purch.ord inq":
                longWord = "Purchase Order Inquiry";
                break;
            case "p.slip":
                longWord = "Picking Slip";
                break;
            case "rev":
                longWord = "Revision";
                break;
            case "accept+snd":
                longWord = "Accept & Send";
                break;
            case "ad.data":
            case "add.data":
            case "add.dta":
                longWord = "Add Data";
                break;
            case "add.info":
                longWord = "Add Info";
                break;
            case "cls":
                longWord = "Close";
                break;
            case "copy by desc.":
                longWord = "Copy By Description";
                break;
            case "dlt order":
            case "dltord":
                longWord = "Delete Order";
                break;
            case "manf/purc":
                longWord = "Manufacture/Purchase";
                break;
            case "mark. price":
                longWord = "Market Price";
                break;
            case "massdlt":
                longWord = "Massive Delete";
                break;
            case "notifi.":
                longWord = "Notifications";
                break;
            case "dic":
                longWord = "Dictionary";
                break;
            case "ict":
                longWord = "ICT";
                break;
            case "txt":
                longWord = "Text";
                break;
            case "xls":
            case "excl":
                longWord = "Excel";
                break;
            case "pgm menu":
                longWord = "Program Menu";
                break;
            case "exl":
                longWord = "Excel";
                break;
            case "cpo":
                longWord = "C.P.O";
                break;
            case "invoice/slip":
                longWord = "Invoice/Picking Slip";
                break;
            case "inv/dlv":
                longWord = "Invoice / Delivery";
                break;
            case "rga":
                longWord = "RGA";
                break;
            case "caeate picking slip":
                longWord = "Create Picking Slip";
                break;
            case "sum":
                longWord = "Summary";
                break;
            case "attend":
                longWord = "Attendance";
                break;
            case "reseq":
                longWord = "Resequence";
                break;
            case "prod.order":
                longWord = "Production Order";
                break;
            case "sbj":
                longWord = "Subject";
                break;
            case "uom":
                longWord = "Unit Of Measure";
                break;
            case "force/prc":
                longWord = "Force/Price";
                break;
            case "general sbj":
                longWord = "Genearal Subject";
                break;
            case "bank msg":
                longWord = "Bank Message";
                break;
            case "cust.item":
                longWord = "Customer Item";
                break;
            case "open w.o.":
                longWord = "Open Work Order";
                break;
            case "chg respons":
                longWord = "Change Response";
                break;
            case "chg view":
                longWord = "Change View";
                break;
            case "chg format":
                longWord = "Change Format";
                break;
            case "m.dlt":
                longWord = "Massive Delete";
                break;
            case "accept+dlv":
                longWord = "Accept & Delivery";
                break;
            case "acpt":
            case "accpt":
                longWord = "Accept";
                break;
            case "activ":
                longWord = "Active";
                break;
            case "Update current rev":
                longWord = "Update Current Revision";
                break;
            case "bulid prj lines":
                longWord = "Build Project Lines";
                break;
            case "cancel disp.":
                longWord = "Cancel Display";
                break;
            case "check wf":
                longWord = "Check Workflow";
                break;
            case "cncl":
                longWord = "Cancel";
                break;
            case "cls+confirm":
                longWord = "Close & Confirm";
                break;
            case "cnf":
                longWord = "Confirm";
                break;
            case "create j/e":
            case "create je":
                longWord = "Create Journal Entry";
                break;
            case "j/e":
            case "je":
                longWord = "Journal Entry";
                break;
            case "j.e.inq":
                longWord = "Journal Entry Inquiry";
                break;
            case "open wf":
                longWord = "Open Workflow";
                break;
            case "std. time update (8 only)":
                longWord = "Standard Time Update(8 Only)";
                break;
            case "open+cls":
                longWord = "Open/Close";
                break;
            case "pcls":
                longWord = "Close by Purchasing";
                break;
            case "parm.mainten.":
                longWord = "Parameters maintenance";
                break;
            case "addparm":
                longWord = "Add Parameters";
                break;
            case "add p.list":
                longWord = "Add Price List";
                break;
            case "c.c":
            case "c.c.":
                longWord = "Customer Currency";
                break;
            case "c.o.":
                longWord = "Customer Order";
                break;
            case "cust/name":
                longWord = "Customer Number/Name";
                break;
            case "chg.value":
                longWord = "Change Value";
                break;
            case "chgdest":
            case "chgdst":
                longWord = "Change Destination";
                break;
            case "exp date":
                longWord = "Expired Date";
                break;
            case "fold/unf":
                longWord = "Fold/Unfold";
                break;
            case "galnum":
                longWord = "Gal Number";
                break;
            case "grp":
            case "grp.":
                longWord = "Group";
                break;
            case "grp no":
                longWord = "Group Number";
                break;
            case "grpprf":
                longWord = "Group Profile";
                break;
            case "qty/ord":
                longWord = "Quantity/Order";
                break;
            case "reactiv":
                longWord = "Reactive";
                break;
            case "ref.":
                longWord = "Reference";
                break;
            case "ref2":
                longWord = "Reference 2";
                break;
            case "refres":
            case "refrsh":
                longWord = "Refresh";
                break;
            case "refnum":
                longWord = "Reference Number";
                break;
            case "sts":
                longWord = "Status";
                break;
            case "usr/date":
                longWord = "User/Date";
                break;
            /*case "srch":
                longWord = "Search";
                break;*/
            case "barrel no":
                longWord = "Barrel Number";
                break;
            case "cstms":
            case "cstm":
                longWord = "Customs";
                break;
            case "inv":
                longWord = "Invoice";
                break;
            case "inv.list":
                longWord = "Invoice List";
                break;
            case "in.proc":
                longWord = "Payment In Processes";
                break;
            case "adv":
                longWord = "Pre-payment invoices";
                break;
            case "m.group":
            case "m.gruop":
            case "man.grp":
                longWord = "Manufacture Group";
                break;
            case "tsk dsc":
                longWord = "Task Description";
                break;
            case "tsk":
                longWord = "Task";
                break;
            case "w.plan":
                longWord = "Work Plan";
                break;
            case "wrkqry":
                longWord = "Work Query";
                break;
            case "all/trn stk":
                longWord = "All/Transfer Stock";
                break;
            case "cont":
                longWord = "Contact";
                break;
            case "cpycst":
                longWord = "Copy To Customer";
                break;
            case "crd":
                longWord = "Credit";
                break;
            case "cvt to indirect":
                longWord = "Convert To Indirect";
                break;
            case "drw":
                longWord = "Drawing";
                break;
            case "drwor":
                longWord = "Draw Order";
                break;
            case "emp":
                longWord = "Employee";
                break;
            case "loc":
            case "local.pgm":
                longWord = "Local Program";
                break;
            case "open lin":
                longWord = "Open Line";
                break;
            case "p.l":
            case "p.l.":
                longWord = "Price List";
                break;
            case "prj.inq":
                longWord = "Project Inquiry";
                break;
            case "recom.qty":
                longWord = "Recommended Quantity";
                break;
            case "req.date":
                longWord = "Request Date";
                break;
            case "slc all":
            case "sel.all":
                longWord = "Select All";
                break;
            case "slct":
                longWord = "Select";
                break;
            case "sort by d.date":
                longWord = "Sort By Due Date";
                break;
            case "sort by i.date":
                longWord = "Sort By Invoice Date";
                break;
            case "sorting by seq":
                longWord = "Sorting By Sequence";
                break;
            case "invdate":
                longWord = "Invoice Date";
                break;
            case "tot amount":

                longWord = "Total Amount";
                break;
            case "tot.amounts":
                longWord = "Total Amounts";
                break;
            case "c.o inq":
                longWord = "Customer Order Inquiry";
                break;
            case "calc freight":
                longWord = "Freight Calculation";
                break;
            case "cng Inv":
                longWord = "Change Invoice";
                break;
            case "cntbox":
                longWord = "Count By Box";
                break;
            case "compl":
                longWord = "Complete";
                break;
            case "inf":
                longWord = "Information";
                break;
            case "webcall":
                longWord = "Web Call";
                break;
            case "lbl prt":
                longWord = "Label Print";
                break;
            case "org ruot":
                longWord = "Original Route";
                break;
            case "plan. cost":
                longWord = "Planned Cost";
                break;
            case "rep.ord.inq":
                longWord = "Item Statistics";
                break;
            case "stl all":
            case "slctall":
                longWord = "Select All";
                break;
            case "updhot":
                longWord = "Update Hot Items";
                break;
            case "wf":
                longWord = "WorkFlow";
                break;
            case "wfc":
                longWord = "Waiting For Credit";
                break;
            case "ord":
                longWord = "Order";
                break;
            case "rtn":
                longWord = "Return";
                break;
            case "unlc":
                longWord = "Unlock";
                break;
            case "update s.m from zip":
                longWord = "Update Salesman From Zip";
                break;
            case "docs":
            case "doc":
            case "doc.":
                longWord = "Document";
                break;
            case "doc.upd":
                longWord = "Document Update";
                break;
            case "dlv.doc":
                longWord = "Delivery Document";
                break;
            case "doc.inq":
                longWord = "Document Inquiry";
                break;
            case "ecat":
                longWord = "E-Catalog";
                break;
            case "lcl idan":
                longWord = "Local Idan";
                break;
            case "calc":
                longWord = "Calculate";
                break;
            case "purch":
                longWord = "Purchase";
                break;
            case "p.o":
            case "p.o.":
                longWord = "Purchase Order";
                break;
            case "updpo":
                longWord = "Update Purchase Order";
                break;
            case "recalc with last trn price":
                longWord = "Recalculate With Last Transfer Price";
                break;
            case "req":
            case "req.":
                longWord = "Requisition";
                break;
            case "tgl":
            case "tggl":
            case "tgle":
                longWord = "Toggle";
                break;
            case "add linp":
                longWord = "Add Lines Project";
                break;
            case "newwf":
            case "new wf":
                longWord = "New Workflow";
                break;
            case "new ship to adr":
                longWord = "New Ship To Address";
                break;
            case "opnrtn":
                longWord = "Open Return";
                break;
            case "templ":
                longWord = "Template";
                break;
            case "temp":
                longWord = "Temporary";
                break;
            case "tmpimp":
            case "temp.imprt":
                longWord = "Temporary Import";
                break;
            case "user purch.requis.":
                longWord = "User Purchase Requisition";
                break;
            case "bckwd":
                longWord = "Backward";
                break;
            case "desc.maint":
                longWord = "Description Maintenance";
                break;
            case "imp":
            case "impr":
                longWord = "Import";
                break;
            case "dlv.t":
            case "dlv.term":
                longWord = "Delivery Terms";
                break;
            case "dlv":
            case "dlv trk":
            case "dlvtrk":
                longWord = "Delivery Tracking";
                break;
            case "aloc":
            case "alloc":
                longWord = "Allocation";
                break;
            case "prt":
            case "prn":
            case "prnt":
                longWord = "Print";
                break;
            case "prfexprt":
                longWord = "Proof Export";
                break;
            case "exportproof":
                longWord = "Export Proof";
                break;
            case "updexprtentry":
                longWord = "Update Export Entry";
                break;
            case "prntexpt":
                longWord = "Print Export";
                break;
            case "print dlv":
                longWord = "Print Delivery";
                break;
            case "s.c":
            case "s.c.":
                longWord = "System Currency";
                break;
            case "cur":
                longWord = "Currency";
                break;
            case "chg cur":
                longWord = "Change Currency";
                break;
            case "rmv.cur":
                longWord = "Remove Currency";
                break;
            case "org.cur":
                longWord = "Original Currency";
                break;
            case "r.c.":
            case "r.c":
                longWord = "Reference Currency";
                break;
            case "l.c.":
            case "l.c":
                longWord = "Local Currency";
                break;
            case "open def":
                longWord = "Open Definitions";
                break;
            case "opnrtnscrp":
                longWord = "Open Return Scrap";
                break;
            case "prj":
                longWord = "Project";
                break;
            case "add to proj":
                longWord = "Add To Project";
                break;
            case "rtnscrp":
                longWord = "Return Scrap";
                break;
            case "rvrsscrp":
                longWord = "Reverse Scrap";
                break;
            case "trans.price":
                longWord = "Transfer Price";
                break;
            case "updord":
                longWord = "Update Order";
                break;
            case "add fld":
                longWord = "Add Field";
                break;
            case "fldname":
                longWord = "Field Name";
                break;
            case "fldtext":
                longWord = "Fields Text";
                break;
            case "linermk":
                longWord = "Line Remark";
                break;
            case "wf.rmk":
            case "wfrmk":
                longWord = "WorkFlow Remark";
                break;
            case "shp/bil":
                longWord = "Ship/Bill Address";
                break;
            case "addr.contacts":
                longWord = "Address Contacts";
                break;
            case "cust.contacts":
                longWord = "Customer Contacts";
                break;
            case "pgm":
                longWord = "Program";
                break;
            case "addr":
                longWord = "Address";
                break;
            case "sup.a":
                longWord = "Supplier Master";
                break;
            case "supp.inq.":
            case "supplier inq.":
                longWord = "Supplier Inquiry";
                break;
            case "updordpr":
                longWord = "Update Order Promise Date";
                break;
            case "promo":
                longWord = "Promotion";
                break;
            case "whs update":
                longWord = "Warehouse Update";
                break;
            case "iid":
                longWord = "IID";
                break;
            case "update.av":
                longWord = "Update Average Usage";
                break;
            case "lock m.b":
                longWord = "Lock Minimum Balance";
                break;
            case "cont.pos.date":
                longWord = "Controlling Possible Dates";
                break;
            case "vendor inq.":
                longWord = "Vendor Inquiry";
                break;
            case "stk":
                longWord = "Stock";
                break;
            case "vnd.item":
                longWord = "Vendor Item";
                break;
            case "scrp":
                longWord = "Scrap";
                break;
            case "new tsk":
                longWord = "New Task";
                break;
            case "new j/e":
                longWord = "New Journal Entry";
                break;
            case "prf":
                longWord = "Professionals List";
                break;
            case "m.acc.upd":
                longWord = "Massive account update ";
                break;
            case "open cust":
                longWord = "Open Customer";
                break;
            case "brt":
                longWord = "Bruto";
                break;
            case "net":
                longWord = "Neto";
                break;
            case "netserver users":
                longWord = "Net Server Users";
                break;
            case "%growth":
                longWord = "Growth Precentage";
                break;
            case "mnt":
                longWord = "Manti";
                break;
            case "upd. lines":
                longWord = "Update lines";
                break;
            case "paym/vat":
                longWord = "Payment/VAT";
                break;
            case "upd req":
                longWord = "Update Requisition";
                break;
            case "ext.payment":
                longWord = "Extended Payment";
                break;
            case "massiv combine":
                longWord = "Massive Combine";
                break;
            case "hlist":
                longWord = "Hide List";
                break;
            case "app.harmonize":
                longWord = "Application Harmonize";
                break;
            case "coo/harm":
                longWord = "C.O.O/Harmonize";
                break;
            case "vendor harm":
                longWord = "Vendor Harmonize";
                break;
            case "cpyset":
                longWord = "Copy Set";
                break;
            case "ship.cost":
                longWord = "Shipping Method Cost";
                break;
            case "massive con.":
                longWord = "Massive Connection";
                break;
            case "cmn":
            case "comm":
                longWord = "Communication";
                break;
            case "cpyrmtq":
                longWord = "Copy From Quotation";
                break;
            case "exp":
                longWord = "Expired";
                break;
            case "storno trn":
                longWord = "Storno transaction";
                break;
            case "sal":
                longWord = "Sales";
                break;

            case "opnusr":
                longWord = "Open user";
                break;
            case "vnd":
                longWord = "Vendor";
                break;
            case "factor perc.":
                longWord = "Factor";
                break;
            case "actvtd":
                longWord = "Activated";
                break;
            case "lpri+more":
                longWord = "Local Priority & More";
                break;
            case "params":
                longWord = "Parameters";
                break;
            case "mch inq":
                longWord = "Machine Inquiry";
                break;
            case "place dsc":
                longWord = "Place Description";
                break;
            case "docc":
                longWord = "Document C";
                break;
            case "docn":
                longWord = "Document N";
                break;
            case "wc no grp":
                longWord = "Work Center Number Group";
                break;
            case "mh":
                longWord = "Machinery hours";
                break;
            case "ext/intsla":
                longWord = "External / internal SLA";
                break;
            case "variab":
                longWord = "Variable";
                break;
            case "var.":
                longWord = "Variable";
                break;
            case "rev.price":
                longWord = "Revenue Price";
                break;
            case "cur.gp":
                longWord = "Current group";
                break;
            case "ly.%gp":
                longWord = "Last Year %Group";
                break;
            case "%gp":
                longWord = "%Group";
                break;
            case "opn":
                longWord = "Open";
                break;
            case "exprep":
                longWord = "Expenses Report";
                break;
            case "item no":
                longWord = "Item Number";
                break;
            case "companymax.rate":
                longWord = "Company Maximum Rate";
                break;
            case "del_lin":
                longWord = "Delete Line";
                break;
            case "dir":
                longWord = "Direct";
                break;
            case "tot":
                longWord = "Total";
                break;
            case "var":
                longWord = "Variable";
                break;
            case "simul.":
                longWord = "Simulation";
                break;
            case "ord.":
                longWord = "Order";
                break;
            case "st.cost":
                longWord = "Standard Cost";
                break;
            case "dir.":
                longWord = "Direct";
                break;
            case "spec.prc":
                longWord = "Special Price";
                break;
            case "cls rec":
                longWord = "Close Request";
                break;
            case "opn rec":
                longWord = "Open Request";
                break;
            case "p/o freq.":
                longWord = "Proposal / Order Frequency";
                break;
            case "dsc":
                longWord = "Description";
                break;
            case "h.rem.":
                longWord = "H Remarks";
                break;
            case "del 1":
                longWord = "Delete 1";
                break;
            case "opn/close":
                longWord = "Open / Close";
                break;
            case "no resrc":
                longWord = "No Resource";
                break;
            case "resrc":
                longWord = "Resource";
                break;
            case "mass":
                longWord = "Massive";
                break;
            case "mass.upd":
                longWord = "Massive Update";
                break;
            case "gain&loss":
                longWord = "Gain & Loss";
                break;
            case "zerosales":
                longWord = "Zero Sales";
                break;
            case "itemrank":
                longWord = "Item Rank";
                break;
            case "by.reseller":
                longWord = "By Reseller";
                break;
            case "by.mbc":
                longWord = "By MBC";
                break;
            case "fac":
                longWord = "Factories";
                break;
            case "sub.":
                longWord = "Subject";
                break;
            case "targ.":
                longWord = "Target";
                break;
            case "exc.inq":
                longWord = "Excel Inquiry";
                break;
            case "excinq":
                longWord = "Excel Inquiry";
                break;
            case "tar.sum":
                longWord = "Target Summary";
                break;
            case "pri":
                longWord = "Priority";
                break;
            case "cmp/mastr":
                longWord = "Company/Master";
                break;
            case "comp/master":
                longWord = "Company/Master";
                break;
            case "userguide":
                longWord = "User Guide";
                break;
            case "trend(sum)":
                longWord = "Trend Summary";
                break;
            case "ord/prop":
                longWord = "Order / Proposal";
                break;
            case "cost/w.d":
                longWord = "Cost / Work Days";
                break;
            case "zero ord":
                longWord = "Zero Orders";
                break;
            case "nxt son":
                longWord = "Next Son";
                break;
            case "std gp":
                longWord = "Standard Group";
                break;
            case "awn.fac":
                longWord = "Owner Factory";
                break;
            case "use.fac":
                longWord = "Using Factory";
                break;
            case "dif.":
                longWord = "Difference";
                break;
            case "reval":
                longWord = "Revaluation";
                break;
            case "simul":
                longWord = "Simulation";
                break;
            case "show cls":
                longWord = "Show Close";
                break;
            case "show opn":
                longWord = "Show Open";
                break;
            case "nextgrp":
                longWord = "Next Group";
                break;
            case "brdw":
                longWord = "BreakDown";
                break;
            case "massiv":
                longWord = "Massive";
                break;
            case "drp/fld":
                longWord = "Drop / Fold";
                break;
            case "closed force orders(f)":
                longWord = "Closed Force Orders";
                break;
            case "upd.seq":
                longWord = "Update Sequence";
                break;
            case "open ass.order":
                longWord = "Open Assembling Order";
                break;
            case "alt.bom":
                longWord = "Alternative BOM";
                break;
            case "elem":
                longWord = "Elements";
                break;
            case "al.table":
                longWord = "Allocation Table";
                break;
            case "mas.update":
                longWord = "Massive Update";
                break;
            case "copy lng":
                longWord = "Copy Language";
                break;
            case "dict":
                longWord = "Dictionary";
                break;
            case "chg uom":
                longWord = "Change Unit Of Measure";
                break;
            case "pic":
                longWord = "Picture";
                break;
            case "picudf":
                longWord = "Picture UDF";
                break;
            case "varia. cost":
                longWord = "Variable Cost";
                break;
            case "trn":
                longWord = "Transactions";
                break;
            case "disc":
                longWord = "Discount";
                break;
            case "rep":
                longWord = "Reports";
                break;
            case "tview":
                longWord = "Team View";
                break;
            case "mls":
                longWord = "Milestone";
                break;
            case "nres":
                longWord = "No Resource";
                break;
            case "resr":
                longWord = "Resource";
                break;
            case "freq":
                longWord = "Final Request";
                break;
            case "d.op":
                longWord = "Day Open / Operation";
                break;
            case "dopn":
                longWord = "Day Open / Operation";
                break;
            case "prior":
                longWord = "Priority";
                break;
            case "refr":
                longWord = "Refresh";
                break;
            case "gen":
                longWord = "General Reports";
                break;
            case "rfrsh":
                longWord = "Refresh";
                break;
            case "itm/wcn":
                longWord = "Item / Work Center";
                break;
            case "tec.dec":
                longWord = "Tech Description";
                break;
            case "tech.descr":
                longWord = "Tech Description";
                break;
            case "dlt list":
                longWord = "Delete List";
                break;
            case "driver prt":
                longWord = "Print Delivery";
                break;
            case "ref":
                longWord = "Refresh";
                break;
            case "by m.type":
                longWord = "By Material Type";
                break;
            default:
                longWord = hostKeyCaption;
                break;
        }
        return longWord;
    }
}