<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCRh_4N_4WKWX-111dP4brABANxCeB0tbo&sensor=false">
	</script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<div class="clear"></div>
		<div class="slideshow">
		<img src="" alt="slideshow" name="Rotating" id="Rotating1" />
		<script type="text/javascript">
			var ImageArr1 = new Array("/Images/1175_main.jpg", "/Images/escuela_main.jpg");
			var ImageHolder1 = document.getElementById('Rotating1');

			function RotateImages(whichHolder, Start) {
				var a = eval("ImageArr" + whichHolder);
				var b = eval("ImageHolder" + whichHolder);
				if (Start >= a.length)
					Start = 0;
				b.src = a[Start];
				window.setTimeout("RotateImages(" + whichHolder + "," + (Start + 1) + ")", 3000);
			}
			RotateImages(1, 0);
		</script>
	</div>
		<div class="primaryMarkets">
			<h1><asp:Label ID="PrimaryMarketsLabel" runat="server" Text="PRIMARY MARKETS"></asp:Label></h1>
			
			<div class="left">
				<asp:ImageButton ID="NewYorkMarket" runat="server" AlternateText="New York" ImageUrl="~/Images/mkt_NY.jpg" />
				<asp:ImageButton ID="SouthFloridaMarket" runat="server" AlternateText="South Florida" ImageUrl="~/Images/mkt_SoFL.jpg" />
                <asp:ImageButton ID="BostonMarket" runat="server" AlternateText="Boston" ImageUrl="~/Images/mkt_Boston.jpg" />
            </div> 
            <div class="right"> 
                <asp:ImageButton ID="SanFranciscoMarket" runat="server" AlternateText="San Francisco" ImageUrl="~/Images/mkt_SanFran.jpg" />
			    <asp:ImageButton ID="LosAngelesMarket" runat="server" AlternateText="Los Angeles" ImageUrl="~/Images/mkt_LA.jpg" />
			    <asp:ImageButton ID="AtlantaMarket" runat="server" AlternateText="Atlanta" ImageUrl="~/Images/mkt_Atlanta.jpg" />
			</div>  
		</div>

		<div class="propertyMap">
			<h1><asp:Label ID="PropertyMapLabel" runat="server" Text="Property Map"></asp:Label></h1>
			<div id="map_canvas" style="width:416px; height:316px">
				<script type="text/javascript">
					function initialize() {
						var myOptions = {
							center: new google.maps.LatLng(37.16, -100.98),
							zoom: 3,
							mapTypeId: google.maps.MapTypeId.ROADMAP
						};
						var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(38.581572, -121.4944),
							map: map,
							title: "California"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(27.664827, -81.515753),
							map: map,
							title: "Florida"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(32.318231, -86.902298),
							map: map,
							title: "Alabama"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(34.048928, -111.093731),
							map: map,
							title: "Arizona"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(41.603221, -73.087749),
							map: map,
							title: "Conneticut"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(41.603221, -73.087749),
							map: map,
							title: "Conneticut"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(32.157435, -82.907123),
							map: map,
							title: "Georgia"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(31.244823, -92.145024),
							map: map,
							title: "Louisiana"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(42.407211, -71.382437),
							map: map,
							title: "Massachusetts"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(32.354668, -89.398528),
							map: map,
							title: "Mississippi"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(40.714353, -74.005973),
							map: map,
							title: "New York"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(35.759573, -79.0193),
							map: map,
							title: "North Carolina"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(33.836081, -81.163724),
							map: map,
							title: "South Carolina"
						});
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(37.431573, -78.656894),
							map: map,
							title: "Virginia"
						});
					}
					initialize();
				</script>
			</div>
		</div>

		<div class="propertySearch">
			<h1><asp:Label ID="PropertySearchLabel" runat="server" Text="Property Search"></asp:Label></h1>

			<asp:ImageButton ID="MasterPropertyListButton" runat="server" AlternateText="Master Property List" ImageUrl="~/Images/MasterPropList_button.png" />

			<div>
				<asp:Label ID="KeywordLabel" runat="server" Text="Keyword Search"></asp:Label>
				<asp:TextBox ID="KeywordTextBox" runat="server" MaxLength="50"></asp:TextBox>

				<asp:TextBoxWatermarkExtender ID="KeywordTextBox_TextBoxWatermarkExtender" 
					runat="server" Enabled="True" TargetControlID="KeywordTextBox" 
					WatermarkText="Name, State, Tenant, etc...">
				</asp:TextBoxWatermarkExtender>

			</div>

			<div>
				<asp:Label ID="PropertyNameLabel" runat="server" Text="Property Name Search"></asp:Label>
				<asp:DropDownList ID="PropertyDropDown" runat="server">
					<asp:ListItem Selected="True">Select Property</asp:ListItem>
				</asp:DropDownList>
			</div>

			<div>
				<div>
					<asp:Label ID="StateLabel" runat="server" Text="State"></asp:Label>
					<acg:AcgStateDropDownList ID="StateDropDown" runat="server">
					</acg:AcgStateDropDownList>
				</div>

				<div>
					<asp:Label ID="MetroAreaLabel" runat="server" Text="Metro Area"></asp:Label>
					<asp:DropDownList ID="MetroAreaDropDown" runat="server">
						<asp:ListItem Selected="True">All</asp:ListItem>
					</asp:DropDownList>
				</div>
			</div>

			<div>
				<asp:Label ID="AvailableSpaceSizeLabel" runat="server" Text="Available Space Size"></asp:Label>
				<asp:TextBox ID="MinimumTextBox" runat="server"></asp:TextBox>
				<asp:TextBoxWatermarkExtender ID="MinimumTextBox_TextBoxWatermarkExtender" 
					runat="server" Enabled="True" TargetControlID="MinimumTextBox" 
					WatermarkText="Min. Sq. Ft.">
				</asp:TextBoxWatermarkExtender>
				<asp:TextBox ID="MaximumTextBox" runat="server"></asp:TextBox>
				<asp:TextBoxWatermarkExtender ID="MaximumTextBox_TextBoxWatermarkExtender" 
					runat="server" Enabled="True" TargetControlID="MaximumTextBox" 
					WatermarkText="Max. Sq. Ft.">
				</asp:TextBoxWatermarkExtender>
			</div>

			<asp:ImageButton ID="SearchButton" runat="server" AlternateText="Search" ImageUrl="~/Images/Search_button.png" />
		</div>
</asp:Content>
