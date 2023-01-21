<%-- 
    Document   : students
    Created on : 14 janv. 2023, 13:12:09
    Author     : lookman
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.universite.Model.Filieres"%>
<%@page import="com.universite.Model.Eleves"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <title>INDEX Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <style>
            body {
                    color: #566787;
                    background: #f5f5f5;
                    font-family: 'Varela Round', sans-serif;
                    font-size: 13px;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                    background: #fff;
                    padding: 20px 25px;
                    border-radius: 3px;
                    min-width: 1000px;
                    box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                    padding-bottom: 15px;
                    background: #435d7d;
                    color: #fff;
                    padding: 16px 30px;
                    min-width: 100%;
                    margin: -20px -25px 10px;
                    border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                    margin: 5px 0 0;
                    font-size: 24px;
            }
            .table-title .btn-group {
                    float: right;
            }
            .table-title .btn {
                    color: #fff;
                    float: right;
                    font-size: 13px;
                    border: none;
                    min-width: 50px;
                    border-radius: 2px;
                    border: none;
                    outline: none !important;
                    margin-left: 10px;
            }
            .table-title .btn i {
                    float: left;
                    font-size: 21px;
                    margin-right: 5px;
            }
            .table-title .btn span {
                    float: left;
                    margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                    border-color: #e9e9e9;
                    padding: 12px 15px;
                    vertical-align: middle;
            }
            table.table tr th:first-child {
                    width: 60px;
            }
            table.table tr th:last-child {
                    width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                    background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                    background: #f5f5f5;
            }
            table.table th i {
                    font-size: 13px;
                    margin: 0 5px;
                    cursor: pointer;
            }
            table.table td:last-child i {
                    opacity: 0.9;
                    font-size: 22px;
                    margin: 0 5px;
            }
            table.table td a {
                    font-weight: bold;
                    color: #566787;
                    display: inline-block;
                    text-decoration: none;
                    outline: none !important;
            }
            table.table td a:hover {
                    color: #2196F3;
            }
            table.table td a.edit {
                    color: #FFC107;
            }
            table.table td a.delete {
                    color: #F44336;
            }
            table.table td i {
                    font-size: 19px;
            }
            table.table .avatar {
                    border-radius: 50%;
                    vertical-align: middle;
                    margin-right: 10px;
            }
            .pagination {
                    float: right;
                    margin: 0 0 5px;
            }
            .pagination li a {
                    border: none;
                    font-size: 13px;
                    min-width: 30px;
                    min-height: 30px;
                    color: #999;
                    margin: 0 2px;
                    line-height: 30px;
                    border-radius: 2px !important;
                    text-align: center;
                    padding: 0 6px;
            }
            .pagination li a:hover {
                    color: #666;
            }
            .pagination li.active a, .pagination li.active a.page-link {
                    background: #03A9F4;
            }
            .pagination li.active a:hover {        
                    background: #0397d6;
            }
            .pagination li.disabled i {
                    color: #ccc;
            }
            .pagination li i {
                    font-size: 16px;
                    padding-top: 6px
            }
            .hint-text {
                    float: left;
                    margin-top: 10px;
                    font-size: 13px;
            }    
            /* Custom checkbox */
            .custom-checkbox {
                    position: relative;
            }
            .custom-checkbox input[type="checkbox"] {    
                    opacity: 0;
                    position: absolute;
                    margin: 5px 0 0 3px;
                    z-index: 9;
            }
            .custom-checkbox label:before{
                    width: 18px;
                    height: 18px;
            }
            .custom-checkbox label:before {
                    content: '';
                    margin-right: 10px;
                    display: inline-block;
                    vertical-align: text-top;
                    background: white;
                    border: 1px solid #bbb;
                    border-radius: 2px;
                    box-sizing: border-box;
                    z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                    content: '';
                    position: absolute;
                    left: 6px;
                    top: 3px;
                    width: 6px;
                    height: 11px;
                    border: solid #000;
                    border-width: 0 3px 3px 0;
                    transform: inherit;
                    z-index: 3;
                    transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                    border-color: #03A9F4;
                    background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                    border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                    color: #b8b8b8;
                    cursor: auto;
                    box-shadow: none;
                    background: #ddd;
            }
            /* Modal styles */
            .modal .modal-dialog {
                    max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                    padding: 20px 30px;
            }
            .modal .modal-content {
                    border-radius: 3px;
                    font-size: 14px;
            }
            .modal .modal-footer {
                    background: #ecf0f1;
                    border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                    display: inline-block;
            }
            .modal .form-control {
                    border-radius: 2px;
                    box-shadow: none;
                    border-color: #dddddd;
            }
            .modal textarea.form-control {
                    resize: vertical;
            }
            .modal .btn {
                    border-radius: 2px;
                    min-width: 100px;
            }
            .modal form label {
                    font-weight: normal;
            }
        </style>
        <script>
        $(document).ready(function(){
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function(){
                        if(this.checked){
                                checkbox.each(function(){
                                        this.checked = true;                        
                                });
                        } else{
                                checkbox.each(function(){
                                        this.checked = false;                        
                                });
                        }
                });
                checkbox.click(function(){
                        if(!this.checked){
                                $("#selectAll").prop("checked", false);
                        }
                });
        });
        </script>
    </head>
    <body>
        <%
                 List<Eleves> listEleves = (List<Eleves>)request.getAttribute("listeleve");
                 List<Filieres> listFilieres = (List<Filieres>)request.getAttribute("listfiliere");  
        %>
        <div class="container-xl">
<div class="table-responsive">
 <div class="table-wrapper">
  <div class="table-title">
             
    <div class="row">
<div class="col-sm-6">
<h2>Gestion <b>Universitaire</b></h2>
        </div>
<div class="col-sm-6">
                     <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Filière
                        </button>
                       <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <c:url value="Fil2" var="FilE2">
                <c:param name="codeFil" value="null"></c:param>
    </c:url>
                           <a class="dropdown-item" href="${FilE2}"><c:out value="Non inscrit"></c:out></a>
                           <c:forEach items="${listfiliere}" var="v">
                               
                               <c:url value="Fil" var="FilE">
                <c:param name="codeFil" value="${v.getCodeFil()}"></c:param>
    </c:url>
   
                                 <a class="dropdown-item" href="${FilE}"><c:out value="${v.getCodeFil()}"></c:out></a>
   
   
                            </c:forEach>
                           <%--<%
                                for(Filieres filiere : listFilieres)
                          {%>
                                <a class="dropdown-item" href="#"><%=filiere.getCodeFil()%></a>
                        <%}
                           %>--%>
                       </div>
                     </div>
                    <!-- <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Filière
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" th:href="@{/user/home}" >Chercher</a></li>
                                <li><a class="dropdown-item" th:href="@{/admin/add}" >Ajouter</a></li>
                            </ul>data-toggle="modal"data-toggle="modal"
                     </div>-->
                    <c:url value="/GestionFiliere" var="urlGestion"/>
                    
                    <c:url value="/addFiliere" var="urlFiliere"/>
                    
                    <c:url value="/addStudent" var="urlStudent"/>
                    <a href="${urlGestion}" class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Gestion Filière</span></a>
                    <a href="${urlStudent}" class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Etudiant</span></a>
   <a href="${urlFiliere}" class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Filière</span></a>
   <!--  <a href="#deleteStudentModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>-->
</div>
    </div>
   </div>
        <table class="table table-striped table-hover">
   <thead>
<tr>
   <!--<th>
<span class="custom-checkbox">
<input type="checkbox" id="selectAll">
<label for="selectAll"></label>
</span>
   </th>-->
   <th>CNE</th>
                    <th>NOM</th>
                    <th>PRENOM</th>
                    <th>MOYENNE</th>
                    <th>FILIERE</th>
                    <th>Actions</th>
</tr>
   </thead>
   <tbody>
               <%-- <%
                    for(Eleves eleve : listEleves)
                    {%>--%>
                    <c:forEach items="${listeleve}" var="v">
   
                                 
   
                           
<tr>
   <!--<td>
<span class="custom-checkbox">
<input type="checkbox" id="checkbox1" name="options[]" value="1">
<label for="checkbox1"></label>
</span>
   </td>-->
    <c:url value="DeleteStudent" var="StudentC">
                <c:param name="cne" value="${v.getCne()}"></c:param>
    </c:url>
   <c:url value="EditStudent" var="StudentE">
                <c:param name="cne" value="${v.getCne()}"></c:param>
    </c:url>
                    
  
   <td><c:out value="${v.getCne()}"></c:out></td>
   <td><c:out value="${v.getNom()}"></c:out></td>
   <td><c:out value="${v.getPrenom()}"></c:out></td>
   <td><c:out value="${v.getMoyenne()}"></c:out></td>
                    <td><c:out value="${v.getRefFil().getCodeFil()}"></c:out></td>
   <td>
<a href="${StudentE}"  class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
<a href="${StudentC}" class="delete" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
   </td>
</tr>
                </c:forEach>
                  <%--<%}
                %>--%>
<!--<tr>
   <td>
       <span class="custom-checkbox">
<input type="checkbox" id="checkbox2" name="options[]" value="1">
<label for="checkbox2"></label>
</span>
   </td>
   <td>Dominique Perrier</td>
   <td>dominiqueperrier@mail.com</td>
   <td>Obere Str. 57, Berlin, Germany</td>
   <td>(313) 555-5735</td>
   <td>
<a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
<a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
   </td>
</tr>
<tr>
   <td>
<span class="custom-checkbox">
<input type="checkbox" id="checkbox3" name="options[]" value="1">
<label for="checkbox3"></label>
</span>
   </td>
<td>Maria Anders</td>
<td>mariaanders@mail.com</td>
<td>25, rue Lauriston, Paris, France</td>
<td>(503) 555-9931</td>
<td>
   <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
   <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
</td>
</tr>
<tr>
<td>
   <span class="custom-checkbox">
   <input type="checkbox" id="checkbox4" name="options[]" value="1">
   <label for="checkbox4"></label>
   </span>
</td>
<td>Fran Wilson</td>
<td>franwilson@mail.com</td>
<td>C/ Araquil, 67, Madrid, Spain</td>
<td>(204) 619-5731</td>
<td>
   <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
   <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
</td>
</tr>
<tr>
<td>
   <span class="custom-checkbox">
   <input type="checkbox" id="checkbox5" name="options[]" value="1">
   <label for="checkbox5"></label>
   </span>
</td>
<td>Martin Blank</td>
<td>martinblank@mail.com</td>
<td>Via Monte Bianco 34, Turin, Italy</td>
<td>(480) 631-2097</td>
<td>
   <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
   <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
</td>
</tr>-->
</tbody>
</table>
<div class="clearfix">
   <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
<ul class="pagination">
   <li class="page-item disabled"><a href="#">Previous</a></li>
   <li class="page-item"><a href="#" class="page-link">1</a></li>
   <li class="page-item"><a href="#" class="page-link">2</a></li>
   <li class="page-item active"><a href="#" class="page-link">3</a></li>
   <li class="page-item"><a href="#" class="page-link">4</a></li>
   <li class="page-item"><a href="#" class="page-link">5</a></li>
   <li class="page-item"><a href="#" class="page-link">Next</a></li>
</ul>
</div>
      </div>
     </div>        
</div>
<footer class="text-center text-lg-start bg-light text-muted">
               <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                ©2023 Copyright: SANA_LookmanOssam
               </div>
           </footer>
<!-- Edit Modal HTML -->
<div id="addStudentModal" class="modal fade">
    <div class="modal-dialog">
<div class="modal-content">
   <form>
<div class="modal-header">
<h4 class="modal-title">Ajouter un élève</h4>
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
</div>
<div class="modal-body">
   <div class="form-group">
<label>Name</label>
<input type="text" class="form-control" required>
   </div>
   <div class="form-group">
<label>Email</label>
<input type="email" class="form-control" required>
   </div>
   <div class="form-group">
   <label>Address</label>
   <textarea class="form-control" required></textarea>
   </div>
   <div class="form-group">
       <label>Phone</label>
       <input type="text" class="form-control" required>
   </div>
</div>
<div class="modal-footer">
<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
<input type="submit" class="btn btn-success" value="Add">
</div>
   </form>
</div>
</div>
</div>
<!-- Edit Modal HTML -->
<div id="addClassModal" class="modal fade">
    <div class="modal-dialog">
<div class="modal-content">
   <form>
<div class="modal-header">
<h4 class="modal-title">Add Employee</h4>
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
</div>
<div class="modal-body">
   <div class="form-group">
<label>Name</label>
<input type="text" class="form-control" required>
   </div>
   <div class="form-group">
<label>Email</label>
<input type="email" class="form-control" required>
   </div>
   <div class="form-group">
   <label>Address</label>
   <textarea class="form-control" required></textarea>
   </div>
   <div class="form-group">
       <label>Phone</label>
       <input type="text" class="form-control" required>
   </div>
</div>
<div class="modal-footer">
<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
<input type="submit" class="btn btn-success" value="Add">
</div>
   </form>
</div>
</div>
</div>

</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
<div class="modal-content">
<form action="UpdateStudent" method="post">
   <div class="modal-header">
<h4 class="modal-title">Modifier l'élève</h4>
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
   </div>
   <div class="modal-body">
<div class="form-group">
   <label for="cne">CNE</label>
   <input type="text" id="cne" name="cne" value="${v.getCne()}"  readonly class="form-control form-control-lg">
</div>
<div class="form-group">
   <label for="nom">NOM</label>
   <input type="text" id="nom" name="nom" value="${v.getNom()}" class="form-control form-control-lg"d>
</div>
<div class="form-group">
   <label for="prenom">PRENOM</label>
   <input type="text" id="prenom" name="prenom" class="form-control form-control-lg" />
</div>
<div class="form-group">
   <label for="moyenne">MOYENNE</label>
   <input type="number" id="moyenne" name="moyenne" class="form-control form-control-lg" />
</div>
       <div class="form-group">
   <label for="filiere">FILIERE</label>
    <input type="text" id="filiere" name="refFil" class="form-control form-control-lg" />
</div>
   </div>
   <div class="modal-footer">
           <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
           <input type="submit" class="btn btn-info" value="Sauver">
   </div>
</form>
      </div>
     </div>
   
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
<!--<form>-->
   <div class="modal-header">
<h4 class="modal-title">Supprimer L'élève</h4>
<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
   </div>
    <div class="form-group">
   <!--<label for="cne">CNE</label>
   <input type="text" id="cne" name="cne" value="${v.getCne()}" readonly class="form-control form-control-lg">-->
</div>
   <div class="modal-body">
<p>Es-tu sur(e) de vouloir supprimer cet élève ?</p>
<p class="text-warning"><small>Cette action est définitive.</small></p>
   </div>
   <div class="modal-footer">
       <a href="${StudentC}" class="btn btn-danger" ><i class="material-icons">&#xE147;</i> <span>Supprimer</span></a>
   <a href="#" class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Annuler</span></a>
   <!--<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
   <input type="submit" class="btn btn-danger" value="Supprimer">-->
   </div>
<!--</form>-->
</div>
</div>
</div>
 
   </body>
</html>

