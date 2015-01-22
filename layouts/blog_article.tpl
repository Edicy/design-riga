<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.langauage_code }}" lang="{{ page.language_code }}">
<head>
	{% include "Head" %}
{{ blog.rss_link }}
  <title>{{article.title}} &laquo; {{page.title}} | {{site.name}}</title>
</head>
<body>
<div id="container">

{% include "Header" %}

{% include "Sidebar" %}

<div id="content">	
	
	{% include "Submenu" %}
	
	<div id="blog">
	
  <h1><b>{{ article.created_at | format_date:"short" }}</b> {% editable article.title plain="true" %} <i>{{ article.author.name }}</i></h1>
  
  <p class="clearfix" data-search-indexing-allowed="true">
  {% editable article.excerpt %}
  <br />
  {% editable article.body %}</p>	
	</div>  
	
	<div id="comments">
   <a name="comments"></a>
  <h2>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h2>

  {% for comment in article.comments %}
  <div class="{% cycle 'odd', 'even' %} edy-site-blog-comment">
   <div class="L">
    <p>{{ comment.author }}<br /><span class="date">{{ comment.created_at | format_date:"short" }}</span></p>
   </div>	
   <div class="R">
    <p>{{ comment.body }} {% removebutton %}</p>
   </div>
  </div><div class="clearer"></div>
  {% endfor %}
  
	<!-- //comments -->
	</div>
	
	<div id="commentsAdd">
	{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
  <h2>{{"add_a_comment"|lc}}</h2>	
   {% commentform %}
    <div class="formtitle left">{{"name"|lc}}</div>
    <div class="left"><input type="text" name="comment[author]" class="textbox" value="{{comment.author}}" /></div>
    <div class="clearer"></div>  
    <div class="formtitle left">{{"email"|lc}}</div>
    <div class="left"><input type="text" name="comment[author_email]" class="textbox" value="{{comment.author_email}}" /></div>
    <div class="clearer"></div>	
    <div class="formtitle left">{{"comment"|lc}}</div>
    <div class="left"><textarea rows="5" cols="5" name="comment[body]">{{comment.body}}</textarea></div>
    <div class="add left"><input type="submit" class="submit" value="{{"submit"|lc}}" />
    </div>
    <div class="clearer"></div>
   {% endcommentform %}
   
	<!-- // commentsAdd -->
	</div>
	
<!-- //content -->
</div>

<!-- // container -->
</div><div class="clearer"></div> 

{% include "Footer" %}
</body>
</html>