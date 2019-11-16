<?php require 'include/style.php'; ?>
<?php

$edit_category = new App\classes\Category();

if (isset($_GET['id'])){
    $rowResult = $edit_category->selectRow($_GET['id']);
    $row = mysqli_fetch_assoc($rowResult);
}

if (isset($_POST['edit_category'])) {
    $message = $edit_category->editCategory($_POST);
    header("location:manage_categories.php");
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
                            Update Category
                        </header>
                        <div class="card-body">
                            <h5><?= isset($message)? "$message":""; ?></h5>
                            <form method="POST" action="">
                                <div class="form-group row">
                                    <label for="inputName" class="col-sm-3 col-form-label">Category Name:</label>
                                    <div class="col-sm-9">
                                        <input type="hidden" name="category_id" value="<?= $row['id']; ?>">
                                        <input type="text" name="category_name" class="form-control" id="inputName" value="<?= $row['category_name']; ?>">
                                    </div>
                                </div>

                                <fieldset class="form-group">
                                    <div class="row">
                                        <legend class="col-form-label col-sm-3 pt-0">Status:</legend>
                                        <div class="col-sm-9">
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="status" id="gridRadios1" value="1" <?= $row['status']==1? 'checked': ' ' ; ?> >
                                                <label class="form-check-label" for="gridRadios1">
                                                    Active
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="status" id="gridRadios2" value="0" <?= $row['status']==0? 'checked': ' ' ; ?> >
                                                <label class="form-check-label" for="gridRadios2">
                                                    Inactive
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                </fieldset>

                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <button type="submit" name="edit_category" class="btn btn-primary">Update</button>
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
