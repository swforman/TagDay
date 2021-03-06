﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Louisville.aspx.cs" Inherits="WebApplication1.Louisville" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCRh_4N_4WKWX-111dP4brABANxCeB0tbo&sensor=false">
	</script>
    <script type="text/javascript" src="/scripts/regions.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
        Louisville
    </h2>
	<div class="propertyMap">
		<div id="map_canvas" style="width:900px; height:1300px; float:left">
			<script type="text/javascript">
				function initialize() {
					var myOptions = {
						center: new google.maps.LatLng(39.976643, -105.149442),
						zoom: 15,
						scale: 2,
						mapTypeId: google.maps.MapTypeId.ROADMAP,
						featureType: "road.local",
						elementType: "labels"
					};

					var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

					setMarkers(map, regionsLouisville);
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
							maxWidth: 10
						});

						//infowindow.open(map, marker);

						google.maps.event.addListener(marker, 'click', function (overlay, latLng) {
							redirectArea("", latLng);
						});


						function redirectArea(name, latLng) {
							GLatLng 
							window.location = "../Area.aspx?Name=" + name + "&Lat=" + latLng + "&Long=" + longitude;
						};

					}
				}

				initialize();
			</script>
		</div>
		<div class="links" style="margin-left:920px">
			<asp:Literal runat="server" ID="linkList" Visible="true"></asp:Literal>
		</div>
	</div>
</asp:Content>

