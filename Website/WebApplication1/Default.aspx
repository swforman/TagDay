<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCRh_4N_4WKWX-111dP4brABANxCeB0tbo&sensor=false">
	</script>
    <script type="text/javascript" src="/scripts/regions.js"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<div class="clear hideSkiplink">
        <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
                <asp:MenuItem NavigateUrl="~/Louisville.aspx" Text="Louisville"/>
				<asp:MenuItem NavigateUrl="~/Superior.aspx" Text="Superior"/>
            </Items>
        </asp:Menu>
    </div>
	<div class="propertyMap">
		<div id="map_canvas" style="width:900px; height:1300px">
			<script type="text/javascript">
				function initialize() {
					var myOptions = {
						center: new google.maps.LatLng(39.957912, -105.145397),
						zoom: 14,
						mapTypeId: google.maps.MapTypeId.ROADMAP,
						featureType: "road.local",
						elementType: "labels"
					};

					var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

					setMarkers(map, regionsLouisville);
					setMarkers(map, regionsSuperior);
				};


				/**
				* Data for the markers consisting of a name, a LatLng and a zIndex for
				* the order in which these markers should display on top of each
				* other.
				*/

				function setMarkers(map, locations) {
					// Add markers to the map
					for (var i = 0; i < locations.length; i++) {
						var region = locations[i];
						var marker = new google.maps.Marker({
							position: new google.maps.LatLng(region[1], region[2]),
							map: map,
							icon: region[3],
							title: region[0]
						});

						var infowindow = new google.maps.InfoWindow({
							content: region[0],
							position: new google.maps.LatLng(region[1], region[2]),
							maxWidth: 5
						});

						//infowindow.open(map, marker);

						google.maps.event.addListener(marker, 'click', function () {
							window.location = "../Area.aspx?Name=" + region[0] + "&Lat=" + region[1] + "&Long=" + region[2];
						});

					}
				}
				initialize();
			</script>
		</div>
	</div>
</asp:Content>
