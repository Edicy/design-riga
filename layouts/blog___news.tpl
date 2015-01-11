<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	{% include "Head" %}
	{{ blog.rss_link }}
  <title>{{site.name}} &raquo; {{page.title}}</title>
</head>
<body>
<div id="container">

{% include "Header" %}

{% include "Sidebar" %}

<div id="content">

	{% include "Submenu" %}
	
	<div id="blog">
   {% addbutton class="add-article" %}
	
  {% for article in articles %}
                <div class="blogentry clearfix">	
  <h1><b>{{ article.created_at | format_date:"short" }}</b> <a href="{{ article.url }}">{{ article.title }}</a> <i>{{ article.author.name }}</i></h1>
  {{ article.excerpt }} <a href="{{ article.url }}">{{"read_more"|lc}}</a> | 
  <a href="{{ article.url }}#comments">{{"comments_for_count"|lc}}: {{ article.comments_count }}
   </a>
                </div>
  {% endfor %}
  
	</div>

<!-- //content -->
</div>

<!-- // container -->
</div><div class="clearer"></div> 

{% include "Footer" %}
</body>
</html>