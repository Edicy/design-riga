<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">
<head>
	{% include "Head" %}
  <title>{% unless page.site_title == "" %}{{ page.site_title }} &raquo; {% endunless %} {{page.title}}</title>
</head>
<body>
<div id="container">
	{% include "Header" %}
	{% include "Sidebar" %}
	<div id="content">
  {% include "Submenu" %}
  <div class="body clearfix" data-search-indexing-allowed="true">
   {% content %}
  </div>
	</div>
</div>
<div class="clearer"></div> 
{% include "Footer" %}
</body>
</html>