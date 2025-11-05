using System;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using com.sabratec.dotnet.framework;
using com.sabratec.applinx.baseobject;
using com.sabratec.dotnet.framework.web;
using com.sabratec.applinx.framework;
using com.sabratec.dotnet.framework.events;
using System.IO;
using System.Web.UI;
using System.Drawing;

/// <summary>
/// Summary description for GXAbstractWebPage.
/// </summary>
public class GXDefaultLogicWebForm : GXBasicWebForm
{
	/// <summary>
	/// Session key to last screen's HTML
	/// </summary>
	public const string SESSION_LAST_SCREEN = "last_screen";
	public const string SESSION_LAST_SCREEN_CONTROLS = "last_screen_controls";
	/// <summary>
	/// Session key for the name of last screen was on session
	/// </summary>
	public const string SESSION_LAST_SCREEN_NAME = "last_screen_name";

	private string m_windowExitKey;
	/// <summary>
	/// Sets a PF key to be sent when closing a window page
	/// </summary>
	public string WindowExitKey
	{
		get
		{ return m_windowExitKey; }
		set
		{ m_windowExitKey = value; }
	}

	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
	}

	protected override void OnLoad(EventArgs e)
	{
		gx_doFrameWorkLogic();
		base.OnLoad(e);
	}

	protected override void OnPreRender(EventArgs e)
	{

		base.OnPreRender(e);
		#region Saving the screen buffer to be used as a background (when a popup window is displayed)
		/*if (IsPostBack)
		{*/

		//save current screen  name - used for the error.aspx 
		if (gx_session != null)
		{
			Session.Remove(SESSION_LAST_SCREEN_NAME);
			Session[SESSION_LAST_SCREEN_NAME] = gx_session.getScreen().getName();
		}
		if (gx_session != null && !gx_session.getScreen().isWindow() && !gx_session.getScreen().getName().Contains("APPLNX_GO"))
		{
			Session.Remove(GXDefaultLogicWebForm.SESSION_LAST_SCREEN);
			Session.Remove(GXDefaultLogicWebForm.SESSION_LAST_SCREEN_CONTROLS);
			StringWriter sw = new StringWriter();
			HtmlTextWriter w = new HtmlTextWriter(sw);
			Control gx_screenArea = null;
			// Gets the screenArea control (according to current page)
			if (gx_appConfig.IsInstant)
			{
				gx_screenArea = Page.Form.FindControl("winEnvelope").FindControl("GXPagePlaceHolder").FindControl("gx_screenArea");
				if (gx_screenArea != null)
				{
					// Save the page's HTML
					gx_screenArea.RenderControl(w);
					Session[SESSION_LAST_SCREEN] = sw.GetStringBuilder().ToString().Replace("id=\"gx_screenArea\"", "id=\"gx_screenAreaInstantBackGround\" name=\"gx_screenAreaInstantBackGround\"");
				}
			}
			else
			{
				try
				{
					if (Page.Form != null)
					{
						gx_screenArea = Page.Form.FindControl("winEnvelope").FindControl("GXPagePlaceHolder");
						if (gx_screenArea != null)
						{
							// Save the page's HTML
							gx_screenArea.RenderControl(w);
							Session[SESSION_LAST_SCREEN] = sw.GetStringBuilder().ToString();
							Session[SESSION_LAST_SCREEN_CONTROLS] = gx_screenArea;
						}
					}
				}
				catch (Exception exception)
				{
					Console.Write(exception);
				}

			}
		}
		//}
		#endregion
	}
}
