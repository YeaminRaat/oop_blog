<?php 
require 'include/style.php'; 

$blog = new App\classes\Blog();
$category = new App\classes\Category();
$result = $category->showActiveCategory();

if (isset($_POST['add_blog'])) {
    $message = $blog->addBlog($_POST);
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
                <div class="col-lg-12">
                    <section class="card">
                        <header class="card-header">
                            New Blog
                        </header>
                        <div class="card-body">
                            <h5><?= isset($message)? "$message":""; ?></h5>
                            <form method="POST" action="" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <label for="inputCategory" class="col-sm-2 col-form-label">Category Name:</label>
                                    <div class="col-sm-10">
                                        <select name="categoryId" id="inputCategory" class="form-control">
                                            <option value="">Select Category</option>
                                            <?php
                                            while ($row = mysqli_fetch_assoc($result)){ ?>
                                                <option value="<?= $row['id'] ?>"><?= $row['category_name'] ?></option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputTitle" class="col-sm-2 col-form-label">Blog Title</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="blog_title" class="form-control" id="inputTitle" placeholder="blog title.....  " required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputContent" class="col-sm-2 col-form-label">Blog Content</label>
                                    <div class="col-sm-10">
                                        <textarea name="blog_content" class="summernote form-control" id="inputContent"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputImage" class="col-sm-2 col-form-label">Blog Photo</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="form-control" name="photo" id="inputImage" required>
                                    </div>
                                </div>

                                <fieldset class="form-group">
                                    <div class="row">
                                        <label class="col-form-label col-sm-2 pt-0">Status:</label>
                                        <div class="col-sm-10">
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
                                        <button type="submit" name="add_blog" class="btn btn-primary">Save</button>
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
