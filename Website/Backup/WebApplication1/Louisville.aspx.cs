using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Louisville : System.Web.UI.Page
	{
		public class RegionInfo
		{
			public string RegionName;
			public double Longitude;
			public double Latitude;

			public RegionInfo(string reg, double l1, double l2)
			{
				RegionName = reg;
				Latitude = l1;
				Longitude = l2;
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!this.IsPostBack)
			{
				BindData();
			}
		}

		private void BindData()
		{
			RegionInfo[] arr1 = new RegionInfo[] {

				new RegionInfo("L-1", 39.957649,-105.150247),
				new RegionInfo("L-2", 39.962632, -105.157102),
				new RegionInfo("L-3", 39.966563, -105.152982),
				new RegionInfo("L-4", 39.97046, -105.159312),
				new RegionInfo("L-5", 39.967599, -105.137876),
				new RegionInfo("L-6", 39.971266,-105.13646),
				new RegionInfo("L-7", 39.9749,-105.134979),
				new RegionInfo("L-8", 39.972253,-105.153798),
				new RegionInfo("L-9", 39.974802, -105.142404),
				new RegionInfo("L-10", 39.976725, -105.147403),
				new RegionInfo("L-11", 39.978715, -105.134658),
				new RegionInfo("L-12", 39.983746, -105.135752),
				new RegionInfo("L-13", 39.980680, -105.148348),
				new RegionInfo("L-14", 39.977646, -105.159355),
				new RegionInfo("L-15", 39.974456, -105.166758),
				new RegionInfo("L-16", 39.984897, -105.160149),
				new RegionInfo("L-17", 39.988514, -105.15957),
				new RegionInfo("L-18", 39.984996, -105.150322),
				new RegionInfo("L-19", 39.989813, -105.143691),
				new RegionInfo("L-20", 39.980277, -105.140151),
				new RegionInfo("L-21", 39.992673,-105.138026)
			};

			foreach (RegionInfo x in arr1)
			{
				this.linkList.Text += "<a href=\"../Area.aspx?Name=" + x.RegionName + "&City=Louisville&Lat=" + x.Latitude.ToString() + "&Long=" + x.Longitude.ToString() + "\">" + x.RegionName + "</a><br/>";
				this.linkList.Text += "";
			}
		}
	}
}