<div class="footerhr"></div>
<div id="footer"><span class="left clearfix">{% content name="footer" xpage="true" %}</span><div class="a right" id="edicy"> {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div></div>
{% unless editmode %}{{ site.analytics }}{% endunless %}
{% include "JS" %}