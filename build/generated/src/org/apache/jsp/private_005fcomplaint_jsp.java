package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class private_005fcomplaint_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel = \"stylesheet\" href = \"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\"/>        \n");
      out.write("        <script src = \"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("        <script src = \"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>  \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("        body\n");
      out.write("        {\n");
      out.write("        background-color:grey;\n");
      out.write("        }\n");
      out.write("        fieldset\n");
      out.write("        {\n");
      out.write("        margin-top: 50px;\n");
      out.write("        margin-right:500px;\n");
      out.write("        margin-left:500px;\n");
      out.write("        border: 2px groove;\n");
      out.write("        border-radius: 20px;\n");
      out.write("        padding: 10px;\n");
      out.write("        }\n");
      out.write("        label\n");
      out.write("        {\n");
      out.write("            margin-top: 10px;\n");
      out.write("            color: white;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("        h1\n");
      out.write("        {\n");
      out.write("            color: white;\n");
      out.write("            text-align: center;\n");
      out.write("            font-variant: small-caps;\n");
      out.write("            letter-spacing: 2px;\n");
      out.write("            text-shadow: 2px 2px 2px black;\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Complaint Here</h1>\n");
      out.write("        ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select max(cid) from private_complaint");
                if(rs.next())
                {
                    out.print("<form action='private jsp.jsp' method='post'><fieldset>"
                            + "<label for='cid'>Id</label><input type='text' class='form-control' name='cid' value='"+(rs.getInt(1)+1)+"' readonly><br>"
                            + "<label for='password'>Password</label><input type='password' name='password' class='form-control'><br>"
                            + "<label for='complaint type'>Complaint Type</label><select name='crime' class='form-control'>"
                                    + "<option>child abuse</option><br>"
                                    + "<option>rape</option><br>"
                                    + "<option>eve-teasing</option><br>"
                                    + "<option>murder</option><br>"
                                    + "<option>stealing case</option><br>"
                                    + "<option>suicide</option><br>"
                                    + "<option>Missing cases(eg:person or things)</option><br>"
                                    + "<option>others</option><br>"
                            + "</select>"
                            + "<label for='complaint'>Complaint</label><textarea name='complaint' class='form-control'></textarea><br>"
                            + "<label for='location'>Crime Location</label><input type='text' class='form-control' name='location'><br>"
                            + "<input type='submit' class='btn btn-danger btn-block' value='COMPLAINT'>"
                            + "</fieldset></form>");
                }
            }
            catch(Exception e)
            {
                out.print(e);
            }
        
      out.write("\n");
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
