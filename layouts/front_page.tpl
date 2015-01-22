<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.langauage_code }}" lang="{{ page.language_code }}">
<head>
	{% include "Head" %}
  <title>{{site.name}} &raquo; {{page.title}}</title>
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
  <div class="textbox">
   <div class="L left clearfix" data-search-indexing-allowed="true">{% content name="a" %}</div>
   <div class="R left clearfix" data-search-indexing-allowed="true">{% content name="b" %}</div>
   <div class="clearer"></div>
  </div>
	</div>
</div>
<div class="clearer"></div> 
{% include "Footer" %}
</body>
</html>