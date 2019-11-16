<?php
require "../vendor/autoload.php";

$cat_status = new App\classes\Category();
$blog_status = new App\classes\Blog();

//Category status active/inactive
if (isset($_GET['active']) && $_GET['table']=='category') {
    $id = $_GET['active'];
    $cat_status->categoryActive($id);
    header("location:manage_categories.php");
}


if (isset($_GET['inactive']) && $_GET['table']=='category') {
    $id = $_GET['inactive'];
    $cat_status->categoryInactive($id);
    header("location:manage_categories.php");
}


//Blog status active/inactive
if (isset($_GET['active']) && $_GET['table']=='blog') {
    $id = $_GET['active'];
    $blog_status->blogActive($id);
    header("location:manage_blog.php");
}


if (isset($_GET['inactive']) && $_GET['table']=='blog') {
    $id = $_GET['inactive'];
    $blog_status->blogInactive($id);
    header("location:manage_blog.php");
}
