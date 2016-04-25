using System;

namespace WebApp
{
	/// <summary>
	/// Main site master page.
	/// </summary>
	public partial class LandingMaster : System.Web.UI.MasterPage
	{
		#region Static Properties

		/// <summary>
		/// Gets the copyright text.
		/// </summary>
		public static string CopyrightText
		{
			get
			{
				return "Copyright &#169; " + DateTime.Now.Year.ToString() + " Equity One, Inc.";
			}
		}

		#endregion

		#region Page Event Handlers

		/// <summary>
		/// Handles the Page Load event.
		/// </summary>
		/// <param name="sender">The object that raised the event.</param>
		/// <param name="e">Event args.</param>
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		#endregion
	}
}
