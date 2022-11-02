<%@ include file="/WEB-INF/template/header.jsp" %>
<div class="container-fluid">
    <div class="row">
      <aside class="col-md-2 d-none d-md-block bg-light sidebar">
        <div class="sidebar-sticky">

          <h6 class="sidebar-heading">
            <span>Menu</span>
          </h6>

          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link active" href="#">
                <i class="fa fa-tachometer"></i>
                Dashboard
                <span class="badge badge-primary">14</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="form.jsp">
                <i class="fa fa-pencil-square-o"></i> Details d'un produit
              </a>
            </li>
            
          </ul>
        </div>
      </aside>
      <main class="col-md-10 ml-sm-auto col-lg-10 pt-3 px-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
          <h1 class="h2"><i class="fa fa-tachometer"></i> Dashboard</h1>
          <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
              <button class="btn btn-sm btn-primary">Share</button>
              <button class="btn btn-sm btn-primary">Export</button>
            </div>
          </div>
        </div>

        <div class="row">
        <% if(request.getAttribute("errorMessage")!=null){ %>
        <div class="alert alert-danger" role="alert">
             ${errorMessage}
        </div>
        <% }else{ %>
        <div class="col-lg-6 col-md-6 col-sm-12 pr-0 mb-3">
            <div class="card-collapsible card">
              <div class="card-header">
                Informations du produit 
                
                <i class="fa fa-caret-down caret"></i>
              
              </div>
              <div class="card-body">
                <form method="post" action="creationProduit">
                
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Code du produit" name="code" value="${produit.code}">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Nom du produit" name="nom" value="${produit.nom}">
                  </div>
                  
                  

                   <div class="form-group">
                    <input type="number" class="form-control" placeholder="Prix du produit" name="prix" value="${produit.prix}">
                  </div>

                  <div class="form-group row">
                    <div class="col-sm-10">
                      <button type="submit" class="btn btn-primary">
                        <i class="fa fa-send"></i>
                        Enregistrer
                      </button>
                      <button type="submit" class="btn btn-primary">
                        <i class="fa fa-send"></i>
                        Annuler
                      </button>
                    </div>
                  </div>

                </form>
              </div>
            </div>
          </div>
        </div>
        <% } %>
      </main>
    </div>
  </div>
</body>
</html>


