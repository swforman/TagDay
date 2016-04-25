using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
	public partial class Area : System.Web.UI.Page
	{
		private static string mLatitude;
		private static string mLongitude;
		private static string mName;
		private static string mCity;

		public static string City
		{
			set
			{
				mCity = value;
			}
			get
			{
				return mCity;
			}
		}

		public static string CityRef
		{
			get
			{
				return mCity + ".aspx";
			}
		}
		
		public static string Latitude
		{
			set
			{
				mLatitude = value;
			}
			get
			{
				return mLatitude;
			}
		}

		public static string Longitude
		{
			set
			{
				mLongitude = value;
			}
			get
			{
				return mLongitude;
			}
		}

		public static string Latitude1
		{
			get
			{
				
				return (mLatitude == null ? "0" : (double.Parse(mLatitude) + 0.001).ToString());
			}
		}

		public static string Longitude1
		{
			get
			{
				return (mLongitude == null ? "0" : (double.Parse(mLongitude) - 0.001).ToString());
			}
		}

		public static string Name
		{
			set
			{
				mName = value;
			}
			get
			{
				return mName;
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!this.IsPostBack)
			{
				Latitude = this.Request.QueryString["Lat"];
				Longitude = this.Request.QueryString["Long"];
				Name = this.Request.QueryString["Name"];
				City = this.Request.QueryString["City"];
			}
		}
	}
}