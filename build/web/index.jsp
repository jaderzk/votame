
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Votaciones</title>	
        <link rel="stylesheet" href="Stylesheets/style.css?breakcache=u9cimu4z">
        <link rel="stylesheet" href="Stylesheets/style2.css">

         <link rel="stylesheet" href="Stylesheets/style3.css">

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-186561-1']);
		_gaq.push(['_trackPageview']);
		(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>



</head>
<body class="backgroundextension">

<div id="candidato1"></div>


<div class="page">

	<div class="slice for-header">
		<div class="slice-content">



			<div class="navigation style-light">
				<div class="navigation-bar">
					<div class="navigation-logo">
						
					</div>
					
				</div>
				<div class="navigation-shadow"></div>
			</div>
			

	
		</div> <!-- slice-content -->
	
	
		


		<div class="thingsinclouds">
			<div class="thingsinclouds-layer for-appicons">
				<div class="thingsinclouds-content">
					<div class="thingsinclouds-row">
						<div class="thingsinclouds-column">
							<div class="thingsinclouds-appicon for-mac"></div>
						</div>
						<div class="thingsinclouds-column">
							<div class="thingsinclouds-appicon for-iphone"></div>
						</div>
						<div class="thingsinclouds-column">
							<div class="thingsinclouds-appicon for-ipad"></div>
						</div>
					</div>
				</div>
			</div>	
			<div class="thingsinclouds-layer for-buttons">
				<div class="thingsinclouds-content">
					<div class="thingsinclouds-row">
						<div class="thingsinclouds-column">
							<a class="thingsinclouds-link for-mac" href="">
								<div class="thingsinclouds-button">
									Candidato 1
								</div>
							</a>
						</div>
						<div class="thingsinclouds-column">
							<a class="thingsinclouds-link for-iphone" href="">
								<div class="thingsinclouds-button">
									Candidato 2
								</div>
							</a>
						</div>
						<div class="thingsinclouds-column">
							<a class="thingsinclouds-link for-ipad" href="">
								<div class="thingsinclouds-button">
									Candidato 3
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- thingsinclouds -->


	</div> <!-- slice -->





	<div class="slice for-main">
		<div class="slice-content">
	


			

	
			<div class="awardscollection"></div>



		</div>
	</div>

		



	<div class="slice for-footer">
		<div class="slice-content">
		
		
				


		</div>
	</div>



</div> <!-- page -->




<!-- BOTTOM SCRIPTS -->

<!-- jQuery -->
<script src="Scripts/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="Scripts/jquery.min.js"><\/script>')</script>

<!-- Shared -->
<script src="Scripts/script.min.js"></script>

<!-- Page -->
<script>

	var thingsinclouds = {

		// MEMBERS
	
		element:          undefined,
		elementsLinks:    undefined,
		elementsAppIcons: undefined,
	
		// CONSTANTS
	
		CLASS_LINKS:       'thingsinclouds-link',
		CLASS_APPICONS:    'thingsinclouds-appicon',
		STATE_HIGHLIGHTED: 'is-highlighted',
		FOR_FOR_MAC:       'for-mac',
		FOR_FOR_IPHONE:    'for-iphone',
		FOR_FOR_IPAD:      'for-ipad',
	
	
		// METHODS
	
		init: function(element) {
			this.element = element;
			this.elementsLinks = this.element.find('.'+this.CLASS_LINKS);
			this.elementsAppIcons = this.element.find('.'+this.CLASS_APPICONS);
			this.element.on('mouseenter', '.thingsinclouds-link', jQuery.proxy(this.handleMouseEnter, this));
			this.element.on('mouseleave', '.thingsinclouds-link', jQuery.proxy(this.handleMouseLeave, this));
		},
	
		getAppIconElementForLinkElement: function(linkElement) {
			for (var i=0; i<this.elementsLinks.length; ++i) {
				if (linkElement[0] === this.elementsLinks[i]) {
					return $(this.elementsAppIcons[i]);
				}
			}
			return false;
		},
	
		handleMouseEnter: function(event) {
			var linkElement = $(event.currentTarget);
			var appIconElement = this.getAppIconElementForLinkElement(linkElement);
			if (appIconElement) {
				appIconElement.addClass(this.STATE_HIGHLIGHTED);
			}
		},
	
		handleMouseLeave: function(event) {
			var linkElement = $(event.currentTarget);
			var appIconElement = this.getAppIconElementForLinkElement(linkElement);
			if (appIconElement) {
				appIconElement.removeClass(this.STATE_HIGHLIGHTED);
			}
		}
	}

	$(document).ready(function() {	
	
		thingsinclouds.init($('.thingsinclouds'));
		CulturedTweets.setup("/tweets/", "favorite-tweets.json", $('.tweetgrid'), 8);
			
	});
	
</script>



  
</body>
</html>
