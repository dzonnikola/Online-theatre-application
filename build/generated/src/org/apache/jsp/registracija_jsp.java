package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registracija_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html id=\"proba\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css\" integrity=\"sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Registracija korisnika</title>\n");
      out.write("        <style>\n");
      out.write("             .form-group{\n");
      out.write("                opacity: 0.91;\n");
      out.write("                box-shadow: -1px 19px 41px -1px black;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-image: url('img/image3.jpg');\n");
      out.write("                margin-top: 170px;\n");
      out.write("                height:  100%;\n");
      out.write("                width:100%;\n");
      out.write("                background-position: center;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            .form-group{\n");
      out.write("                background-color:white;\n");
      out.write("                width: 500px;\n");
      out.write("                margin: auto;\n");
      out.write("                border-radius:30px;\n");
      out.write("                padding: 20px;\n");
      out.write("            }\n");
      out.write("            .form-control{\n");
      out.write("                margin: 5px 10px;\n");
      out.write("            }\n");
      out.write("            .btn{\n");
      out.write("                width: 110px;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 10px;\n");
      out.write("                margin: 5px;\n");
      out.write("            }\n");
      out.write("            .btn:hover{\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h5{\n");
      out.write("\n");
      out.write("                color: red;\n");
      out.write("            }\n");
      out.write("            #forma{\n");
      out.write("                padding: 30px;\n");
      out.write("            }\n");
      out.write("            h2{\n");
      out.write("                font-weight: bold;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <center>\n");
      out.write("                <form id=\"forma\" action=\"Registracija\" method=\"post\">\n");
      out.write("                    <h2>Registracija</h2><br>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Ime</td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"text\" name=\"ime\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Prezime</td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"text\" name=\"prezime\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Username </td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"text\" name=\"korisnicko\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Sifra</td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"password\" name=\"sifra\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Potvrda</td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"password\" name=\"potvrda\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Email</td>\n");
      out.write("                            <td><input class=\"form-control\" type=\"text\" name=\"email\" size=\"30\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\" align=\"center\"><br>\n");
      out.write("                                <input class=\"btn btn-info\" type=\"submit\" value=\"Unesi\"</td>\n");
      out.write("                        <a class=\"btn btn-danger\" href=\"login.jsp\">Nazad</a>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                    ");
 String msg = (String) request.getAttribute("msg");
                        if (msg != null) {
      out.write("\n");
      out.write("                    <h5>");
      out.print( msg);
      out.write(" </h5>    \n");
      out.write("                    ");
}
                    
      out.write("\n");
      out.write("                </form>\n");
      out.write("            </center>\n");
      out.write("        </div>        \n");
      out.write("    </body>\n");
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
