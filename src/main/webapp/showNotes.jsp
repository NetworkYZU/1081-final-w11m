<%@page import="lendle.courses.wp.finalexam.NoteHeader"%>
<%@page import="lendle.courses.wp.finalexam.Note"%>
<%@page import="lendle.courses.wp.finalexam.UserData"%>
<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.21/vue.min.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    </head>
    <body>
        <a href="logout.jsp">登出</a><br/>
      
      <!--
      將目前 session 中記錄的 user 的 notes 顯示在下列表格中
      (20%)
      -->
      <table border="1" style="width: 90%">
          <thead>
              <tr>
                  <th>Date</th>
                  <th>Title</th>
                  <th>Content</th>
              </tr>
              <%  
                  UserData user = (UserData)session.getAttribute("user");
                  List<Note> text = user.getNotes();
                  for(int i=0;text!=null&&i<text.size();i++){
                      Note note = text.get(i);
                      NoteHeader header = note.getHeader();
                      String date = header.getDate() ;
                      String title = header.getTitle() ;
                      String content = note.getContent() ;
                      out.println("<tr><th>"+date+"</th><th>"+title+"</th><th>"+content+"</th></tr>");
                      
                  }
                  
              %>
          </thead>
          <tbody>
              
          </tbody>
      </table>
    </body>
</html>