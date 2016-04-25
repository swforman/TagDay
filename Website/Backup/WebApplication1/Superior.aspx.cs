using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Superior : System.Web.UI.Page
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

					new RegionInfo("S-1", 39.93294, -105.161844),
					new RegionInfo("S-2", 39.935079, -105.153261),
					new RegionInfo("S-3", 39.936313, -105.148348),
					new RegionInfo("S-4", 39.924548, -105.149335),
					new RegionInfo("S-5", 39.920664, -105.156244),
					new RegionInfo("S-6", 39.927148, -105.158304),
					new RegionInfo("S-7", 39.921207, -105.163304),
					new RegionInfo("S-8", 39.938995, -105.160257),
					new RegionInfo("S-9", 39.942433, -105.154871),
					new RegionInfo("S-10", 39.943765, -105.149764)
			};

			foreach (RegionInfo x in arr1)
			{
				this.linkList.Text += "<a href=\"../Area.aspx?Name=" + x.RegionName + "&City=Superior&Lat=" + x.Latitude.ToString() + "&Long=" + x.Longitude.ToString() + "\">" + x.RegionName + "</a><br/>";
				this.linkList.Text += "";
			}
		}
	}
}