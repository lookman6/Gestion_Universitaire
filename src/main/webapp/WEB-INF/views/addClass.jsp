<%-- 
    Document   : addClass
    Created on : 14 janv. 2023, 13:18:48
    Author     : lookman
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.universite.Model.Filieres"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CLASS Page</title>
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
             .gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
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
    </head>
    <body>
        <!-- action="/SANA_LookmanOssam_JEE/saveFiliere" method="post" -->
       
       <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Ajouter une Filière</h2>

              <form action="saveFiliere" method="post">

                <div class="form-outline mb-4">
                  <input type="text" id="codeFil" name="codeFil"  required class="form-control form-control-lg" />
                  <label class="form-label" for="cne">CODE</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="nom" name="nomFil" class="form-control form-control-lg" />
                  <label class="form-label" for="nom">NOM</label>
                </div>

               

                <div class="d-flex justify-content-center">
                  <input type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" value="Enregistrer"/>
                </div>


              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>  
         
           <footer class="text-center text-lg-start bg-light text-muted">
               <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                ©2023 Copyright: SANA_LookmanOssam
               </div>
           </footer>
       
    </body>
</html>

