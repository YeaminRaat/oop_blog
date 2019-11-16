<?php require 'include/style.php'; ?>
<?php

$category = new App\classes\Category();

if (isset($_POST['add_category'])) {
  $message = $category->addCategory($_POST);
}

?>

  <section id="container">
      <!--header start-->
      <?php include 'include/header.php'; ?>
      <!--header end-->
      <!--sidebar start-->
      <?php include 'include/sidebar.php'; ?>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                      <section class="card">
                          <header class="card-header">
                              Add Category
                          </header>
                          <div class="card-body">
                            <h5><?= isset($message)? "$message":""; ?></h5>
                              <form method="POST" action="">
                                  <div class="form-group row">
                                      <label for="inputName" class="col-sm-3 col-form-label">Category Name:</label>
                                      <div class="col-sm-9">
                                          <input type="text" name="category_name" class="form-control" id="inputName" placeholder="category name.....  ">
                                      </div>
                                  </div>
                                  
                                  <fieldset class="form-group">
                                      <div class="row">
                                          <legend class="col-form-label col-sm-3 pt-0">Status:</legend>
                                          <div class="col-sm-9">
                                              <div class="form-check">
                                                  <input class="form-check-input" type="radio" name="status" id="gridRadios1" value="1" checked="">
                                                  <label class="form-check-label" for="gridRadios1">
                                                      Active
                                                  </label>
                                              </div>
                                              <div class="form-check">
                                                  <input class="form-check-input" type="radio" name="status" id="gridRadios2" value="0">
                                                  <label class="form-check-label" for="gridRadios2">
                                                      Inactive
                                                  </label>
                                              </div>
                                              
                                          </div>
                                      </div>
                                  </fieldset>
                                  
                                  <div class="form-group row">
                                      <div class="col-sm-10">
                                          <button type="submit" name="add_category" class="btn btn-primary">Save</button>
                                      </div>
                                  </div>
                              </form>
                          </div>
                      </section>

                  </div>
              </div>

            </section>
        </section>
      <!--main content end-->


      <!--footer start-->
      <?php include 'include/footer.php'; ?>
      <!--footer end-->
  </section>

    <?php include 'include/scripts.php'; ?>

  </body>
</html>
