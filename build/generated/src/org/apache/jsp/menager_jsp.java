package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menager_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    String str = (String) session.getAttribute("username");

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style/style.css\">\n");
      out.write("        <title>Manager Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .myButton {\n");
      out.write("            width: 450px;  \n");
      out.write("            text-align: center;\n");
      out.write("            box-shadow: -1px 19px 41px -1px #000000;\n");
      out.write("            background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);\n");
      out.write("            background-color:#599bb3;\n");
      out.write("            border-radius:26px;\n");
      out.write("            display:inline-block;\n");
      out.write("            cursor:pointer;\n");
      out.write("            color:#ffffff;\n");
      out.write("            font-family:Trebuchet MS;\n");
      out.write("            font-size:28px;\n");
      out.write("            font-weight:bold;\n");
      out.write("            padding:16px 76px;\n");
      out.write("            text-decoration:none;\n");
      out.write("            text-shadow:-4px 4px 3px #3d768a;\n");
      out.write("            margin: 10px;\n");
      out.write("            opacity: 0.95;\n");
      out.write("        }\n");
      out.write("        .myButton:hover {\n");
      out.write("            background:linear-gradient(to bottom, #408c99 20%, #2b6770 100%);\n");
      out.write("            background-color:#408c99;\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("        .myButton:active {\n");
      out.write("            position:relative;\n");
      out.write("            top:1px;\n");
      out.write("        }\n");
      out.write("        .myButton1 {\n");
      out.write("            width: 450px;\n");
      out.write("            box-shadow: -1px 19px 41px -1px #000000;\n");
      out.write("            background:linear-gradient(to bottom, #ffffff 5%, #f6f6f6 100%);\n");
      out.write("            background-color:#ffffff;\n");
      out.write("            border-radius:26px;\n");
      out.write("            display:inline-block;\n");
      out.write("            cursor:pointer;\n");
      out.write("            color:#408c99;\n");
      out.write("            font-family:Trebuchet MS;\n");
      out.write("            font-size:28px;\n");
      out.write("            font-weight:bold;\n");
      out.write("            padding:16px 76px;\n");
      out.write("            text-decoration:none;\n");
      out.write("            opacity: 0.95;\n");
      out.write("            text-shadow:-4px 4px 3px #b8b8b8;\n");
      out.write("            margin: 10px;\n");
      out.write("        }\n");
      out.write("        .myButton1:hover {\n");
      out.write("            background:linear-gradient(to bottom, #f6f6f6 20%, #b8b8b8 100%);\n");
      out.write("            background-color:#f6f6f6;\n");
      out.write("            color: #408c99;\n");
      out.write("        }\n");
      out.write("        .myButton1:active {\n");
      out.write("            position:relative;\n");
      out.write("            top:1px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h2{\n");
      out.write("            font-size:40px;\n");
      out.write("            text-shadow:-4px 4px 3px #000000;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("        <a style=\"color:white;\" class=\"navbar-brand\" href=\"menager.jsp\">Dobrodosli - Dashboard</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarText\" aria-controls=\"navbarText\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarText\">\n");
      out.write("            <span class=\"navbar-text\" style=\"color: white;\">\n");
      out.write("                Ulogovani menadzer : ");
 out.print(str);
      out.write("                 \n");
      out.write("            </span>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    <center>\n");
      out.write("        <body>\n");
      out.write("            <br>\n");
      out.write("            <div class=\"containter\">\n");
      out.write("                <h2><b>Opcije dostupne menadzeru:</b></h2><br>\n");
      out.write("\n");
      out.write("                <a class=\"myButton\" href=\"unosProjekcije.jsp\" style=\"text-decoration: none\">Unos nove projekcije</a><br>\n");
      out.write("\n");
      out.write("                <a class=\"myButton\" href=\"unosSale.jsp\" style=\"text-decoration: none\">Unos nove sale</a><br>\n");
      out.write("\n");
      out.write("                <a class=\"myButton1\" href=\"index.jsp\" style=\"text-decoration: none\">Odjava</a><br>\n");
      out.write("\n");
      out.write("            </div>         \n");
      out.write("        </body>        \n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
