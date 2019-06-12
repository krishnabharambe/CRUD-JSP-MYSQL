<%@page import="wap2.db,java.sql.ResultSet,java.util.*"%>  
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body> 

    <div class="container mt-3">
        <section>
            <h1 class="text-center">CRUD JSP OPERATION WITH MYSQL</h1>
        </section>
        <hr>
        <section>
            <form action="addNew.jsp" method="POST">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                        <div class="form-group">
                            <label for="contact">Contact:</label>
                            <input type="text" class="form-control" id="contact" name="contact" required="required">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                        <div class="form-group">
                            <label for="pincode">Pincode:</label>
                            <input type="text" class="form-control" id="pincode" name="pincode" required="required">
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                        <div class="form-group">
                            <label for="DOB">Date Of Birth:</label>
                            <input type="date" class="form-control" id="DOB" name="dob" required="required">
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label for="cname">College Name:</label>
                    <input type="text" class="form-control" id="cname" name="cname" required="required">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </section>

        <hr>
        <section>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Contact</th>
                        <th>Pincode</th>
                        <th>Date Of Birth</th>
                        <th>Collage Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>


                    <%
                        ResultSet data = db.getdata("select * from pmanager");
                        while (data.next()) {
                    %>  
                    <tr>
                        <td><%= data.getString("id")%></td>
                        <td><%= data.getString("name")%></td>
                        <td><%= data.getString("contact")%></td>
                        <td><%= data.getString("pincode")%></td>
                        <td><%= data.getString("dob")%></td>
                        <td><%= data.getString("cname")%></td>
                        <td>
                            <!--for edit-->
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal<%= data.getString("id")%>">
                                <i class="fas fa-edit"></i>
                            </button>
                            <!-- The Modal -->
                            <div class="modal fade" id="myModal<%= data.getString("id")%>">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Edit : <%= data.getString("id")%></h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="Update.jsp" method="POST">
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                                                        <input type="hidden" name="id" value="<%= data.getString("id")%>">
                                                        <div class="form-group">
                                                            <label for="name">Name:</label>
                                                            <input type="text" value="<%= data.getString("name")%>" class="form-control" id="name" name="name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                                                        <div class="form-group">
                                                            <label for="contact">Contact:</label>
                                                            <input type="text" value="<%= data.getString("contact")%>" class="form-control" id="contact" name="contact" required="required">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                                                        <div class="form-group">
                                                            <label for="pincode">Pincode:</label>
                                                            <input type="text" value="<%= data.getString("pincode")%>" class="form-control" id="pincode" name="pincode" required="required">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                                                        <div class="form-group">
                                                            <label for="DOB">Date Of Birth:</label>
                                                            <input type="date" value="<%= data.getString("dob")%>" class="form-control" id="DOB" name="dob" required="required">
                                                        </div>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label for="cname">College Name:</label>
                                                    <input type="text" value="<%= data.getString("cname")%>" class="form-control" id="cname" name="cname" required="required">
                                                </div>

                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <!--for Delete-->
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#del<%= data.getString("id")%>">
                                <i class="fas fa-trash"></i>
                            </button>
                            <!-- The Modal -->
                            <div class="modal fade" id="del<%= data.getString("id")%>">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">Del : <%= data.getString("id")%></h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="delete.jsp" method="POST">
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-6 col-xs-6 col-lg-6">
                                                        <input type="hidden" name="id" value="<%= data.getString("id")%>">
                                                        <div class="form-group">
                                                            <label for="name">Name:</label>
                                                            <input readonly="readonly" type="text" value="<%= data.getString("name")%>" class="form-control" id="name" name="name">
                                                            <input  type="hidden" value="<%= data.getString("id")%>" class="form-control" id="id" name="id">
                                                            <br>
                                                            <button type="submit" class="btn btn-danger">Delete</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </form>
                                        </div>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>


                        </td>

                    </tr>
                    <% }%>

                </tbody>
            </table>
        </section>
    </div>


</body>
</html>
