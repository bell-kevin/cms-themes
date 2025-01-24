<!DOCTYPE html>
<% require javascript(sapphire/thirdparty/jquery/jquery-packed.js) %>
<% require javascript(mysite/javascript/misc.js) %>
<% require themedCSS(layout) %>
<% require themedCSS(typography) %>
<% require themedCSS(form) %>
<% if Banner %><% require themedCSS(banner) %><% end_if %>
<html lang="$ContentLocale">
	<head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false) $Subsite.GoogleSiteVerification
		<link rel="shortcut icon" href="/favicon.ico" />
	</head>
<body>
	<div id="BgContainer">
		<div id="Container">

			<div id="TopHeader"<% if SubsiteID = 38 %> class="Conference"<% end_if %>>
				<%-- <a id="Logo" href="<% control Page(/) %>$Link" title=<% sprintf(_t('Navigation.GOTOPAGE','"Go to the %s page"'),$Title.XML) %><% end_control %>></a> --%>
				<a id="Logo" href="http://www.libreoffice.org" target="_blank" title="LibreOffice International Website"></a>
				<% if Banner %><% include Banner %><% end_if %>
			    	<p id="HeaderTagLine">$SiteConfig.Tagline.RAW</p>
<%-- include SOPA_bar --%>
<% cached "Navigation", ID, Aggregate(Page).Max(LastEdited) %>
			</div>

			<div id="BottomHeader"<% if isRTL %> dir="rtl"<% end_if %><% if Menu(2) %><% else %> class="SingleMenu"<% end_if %>>
				<% include Navigation %>
				<% include SecondNavigation %>
				<div class="clear"></div>
			</div>
		
			<div id="Layout"<% if isRTL %> dir="rtl"<% end_if %>>
<% end_cached %>
				$Layout
<% cached "Bottom", ID, Aggregate(Page).Max(LastEdited) %>
				<hr />
			</div>

			<div id="Footer">
				<% include Footer %>
			</div>

		</div> 
	</div>
</body>
</html>
<% end_cached %>
