<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Area.aspx.cs" Inherits="WebApplication1.Area" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCRh_4N_4WKWX-111dP4brABANxCeB0tbo&sensor=false">
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="float:right;margin-right:50px">Notes:</h2>
	<h2>
    <%= WebApplication1.Area.City %>
	<a href=<%= WebApplication1.Area.CityRef %> >
    </a>
        <%= WebApplication1.Area.Name %> 	
    </h2>
	<div class="propertyMap">
		<div id="map_canvas" >
			<script type="text/javascript">
			
				function initialize() {
					
					var myOptions = {
						center: new google.maps.LatLng(<%= WebApplication1.Area.Latitude %>,<%= WebApplication1.Area.Longitude %>),
						zoom: 16,
						scale: 2,
						mapTypeId: google.maps.MapTypeId.SATELLITE,
						featureType: "road.local",
						elementType: "labels"
					};

					var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

					var rectCoords = [
                        new google.maps.LatLng(<%= WebApplication1.Area.Latitude %>,<%= WebApplication1.Area.Longitude %>),
                        new google.maps.LatLng(<%= WebApplication1.Area.Latitude %>,<%= WebApplication1.Area.Longitude1 %>),
                        new google.maps.LatLng(<%= WebApplication1.Area.Latitude1 %>,<%= WebApplication1.Area.Longitude %>)
                      ];

					// Construct the polygon
					// Note that we don't specify an array or arrays, but instead just
					// a simple array of LatLngs in the paths property
					polygonDisplay = new google.maps.Polygon({
					    paths: rectCoords,
                        fillColor: "gray",
					    strokeColor: "#FF0000",
					    strokeOpacity: 1,
					    strokeWeight: 2,
                        editable: true
					});

					polygonDisplay.setMap(map);
				}
				initialize();
			</script>
		</div>
	</div>
    <div class="footer">For questions call Debbie Bowden 303-883-6853 or Sharon Forman 303-926-8739
    </div>
</asp:Content>
