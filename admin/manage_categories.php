<?php require 'include/style.php'; ?>
<?php

$cat = new App\classes\Category();
$category = $cat->showCategory();



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
                  <div class="col-sm-12">
                      <section class="card">
                          <header class="card-header">
                              Category List
                              <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                          </header>
                          <div class="card-body">
                              <div class="adv-table">
                                  <table  class="display table table-bordered table-striped" id="dynamic-table">
                                      <thead>
                                      <tr>
                                          <th>Sl No.</th>
                                          <th>Category Name</th>
                                          <th>Status</th>
                                          <th>Action</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <?php
                                      $sl = 1;
                                      while ($row = mysqli_fetch_assoc($category)) {
                                          ?>

                                          <tr class="gradeX">
                                              <td><?= $sl; ?></td>
                                              <td><?= $row['category_name']; ?></td>
                                              <td>
                                                  <?php
                                                  if ($row['status'] ==1){ ?>
                                                      <a href="status.php?inactive=<?= $row['id']; ?>&table=category " class="btn btn-info"><i class="fa fa-angle-down"> Active</i></a>
                                                      <?php
                                                  }
                                                  else{
                                                      ?>
                                                      <a href="status.php?active=<?= $row['id']; ?>&table=category " class="btn btn-success"><i class="fa fa-angle-up"> Inactive</i></a>
                                                      <?php
                                                  }
                                                  ?>
                                              </td>
                                              <td>
                                                  <a href="edit_category.php?id=<?= $row['id']; ?>" class="btn btn-warning"><i class="fa fa-pencil-square-o"> Edit</i></a>
                                                  <a href="delete.php?id=<?= $row["id"]; ?>&table=category" class="btn btn-danger"><i class="fa fa-trash-o"> Delete</i></a>
                                              </td>
                                          </tr>
                                          <?php
                                          $sl++;
                                      }
                                        ?>
                                      </tbody>
                                  </table>
                              </div>
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
