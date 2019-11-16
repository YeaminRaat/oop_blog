<?php
require "../vendor/autoload.php";
$cat_delete = new App\classes\Category();
$blog_delete = new App\classes\Blog();


if (isset($_GET['table']) && $_GET['table']=='category'){
    $id = $_GET['id'];
    $cat_delete->catDelete($id);
    header("location:manage_categories.php");
}
else
    header("location:manage_categories.php");

if (isset($_GET['table']) && $_GET['table']=='blog'){
    $id = $_GET['id'];
    $blog_delete->blogDelete($id);
    header("location:manage_blog.php");
}
else
    header("location:manage_blog.php");