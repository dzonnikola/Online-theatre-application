package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class checklogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");


        String name = request.getParameter("uname");

        String pass = request.getParameter("upass");
        String type = request.getParameter("type");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop", "root", "");

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from regi");

            int x = 0;

            while (rs.next()) {

                if ((rs.getString("username").equals(name)) && rs.getString("password").equals(pass) && rs.getString("utype").equals(type)) {

                    String stp = rs.getString("utype");

                    if (stp.equals("admin")) {

                        x = 1;

                        break;

                    } else if (stp.equals("menager")) {

                        x = 2;

                        break;

                    } else {
                        x = 3;
                        break;
                    }

                }

            }

            if (x == 2) {

                response.sendRedirect("menager.jsp");

            } else if (x == 1) {

                response.sendRedirect("admin.jsp");

            } else if (x == 3) {

                response.sendRedirect("index.jsp");

            } else {

                request.setAttribute("msg", "Netacan username ili password!!");
                        request.getRequestDispatcher("index.jsp").forward(request, response);

    
      out.write("\n");
      out.write("\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.html", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    ");
}

        } catch (Exception e) {

            out.println(e);

        }

        session.setAttribute("username", name);

    
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
