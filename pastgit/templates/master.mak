<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd>
<html>
  
  <%def name="title()">default title</%def>
  <%def name="subtitle()"></%def>

  <head>
    <meta http-equiv=content-type content="text/html; charset=UTF-8">
    <title>${self.title()}</title>
    ${h.stylesheet_link_tag("/css/common.css")}
  </head>
  <body>
    <div id="nav">
      <div align="right">
	<a href="">New </a>
      </div>
    </div>

    <div id="messageBox">
      % if session.get('message'):
      <div class="message ${session['message'].type}">
        ${session['message'].message}
<%
session['message'] = None
session.save()
%>
      </div>
      % endif
    </div>
    <h1 id="header"><span>Pastgit - Paste with the power of git</span></h1>
    <h2><span>${self.subtitle()}</span></h2>
    <div id="content">
      ${next.body()}
    </div>
  </body>
</html>