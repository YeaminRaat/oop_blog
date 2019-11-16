<?php

namespace App\classes;

class Blog
{
    public function addBlog($data){
        $file_ext = explode('.', $_FILES['photo']['name']);
        $file_ext = end($file_ext);
        $file_name = date('Ymdhis.').$file_ext;
        $c_id = $data['categoryId'];
        $title = mysqli_real_escape_string(Database::dbConn(),$data['blog_title']);
        $content = mysqli_real_escape_string(Database::dbConn(),$data['blog_content']);
        $status = $data['status'];
        $name = $_SESSION['admin_name'];

        $sql = "INSERT INTO `blog`(`cat_id`, `title`, `content`, `photo`, `name`, `status`) VALUES ('$c_id', '$title', '$content','$file_name', '$name', '$status')";
        $result = mysqli_query(Database::dbConn(),$sql);
        if ($result) {
            move_uploaded_file($_FILES['photo']['tmp_name'], '../uploads/images/'.$file_name);
            $message = "Blog save successfully.";
            return $message;
        }
        else{
            $message = "Blog not saved.";
            return $message;
        }
    }

    function editBlog($data)
    {
        $c_id = $data['categoryId'];
        $title = mysqli_real_escape_string(Database::dbConn(),$data['blog_title']);
        $content = mysqli_real_escape_string(Database::dbConn(),$data['blog_content']);
        $status = $data['status'];
        $name = $_SESSION['admin_name'];
        $id = $data['id'];

        if ($_FILES['photo']['name']==NULL){
            $sql = " UPDATE blog SET cat_id='$c_id', title='$title', content='$content', name='$name', status='$status' WHERE `id` = '$id' ";
        }else{
            $file_ext = explode('.', $_FILES['photo']['name']);
            $file_ext = end($file_ext);
            $file_name = date('Ymdhis.').$file_ext;
            $sql = " UPDATE `blog` SET `cat_id`='$c_id',`title`='$title',`content`='$content',`photo`='$file_name',`name`='$name',`status`='$status' WHERE `id` = '$id' ";
            move_uploaded_file($_FILES['photo']['tmp_name'], '../uploads/images/'.$file_name);
        }
        $result = mysqli_query(Database::dbConn(),$sql);
        if ($result) {
            $message = "Blog Udpate successfully.";
            return $message;
        }
        else{
            $message = "Blog not update.";
            return $message;
        }
    }

    public function showBlog(){
        $sql = "SELECT blog.*, category.category_name FROM blog INNER JOIN category ON blog.cat_id = category.id ORDER BY id DESC";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function blogActive($id){
        $sql2 = "UPDATE blog SET status=1 WHERE id ='$id' ";
        mysqli_query(Database::dbConn(), $sql2);
    }

    public function blogInactive($id){
        $sql3 = "UPDATE blog SET status=0 WHERE id ='$id' ";
        mysqli_query(Database::dbConn(), $sql3);
    }

    public function blogDelete($id){
        $sql = "DELETE FROM blog WHERE id='$id' ";
        mysqli_query(Database::dbConn(), $sql);
    }

    public function selectRow($id){
        $sql = "SELECT * FROM blog WHERE id='$id' ";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function categoryPost($id){
        $sql = "SELECT * FROM blog WHERE cat_id='$id' ";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function activeBlog(){
        $sql = "SELECT * FROM blog WHERE status = 1 ORDER BY id DESC";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function searchBlog($data){
        $sql = "SELECT * FROM blog WHERE title LIKE '%$data%' ORDER BY id DESC";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function comment($data, $id){
        $blog_id = $id;
        $name = $data['cmnt_uname'];
        $email = $data['cmnt_uemail'];
        $cmnt = $data['cmnt'];
        $sql = "INSERT INTO `comment`(`blog_id`, `username`, `useremail`, `comment`) VALUES ('$blog_id', '$name', '$email', '$cmnt')";
        $result = mysqli_query(Database::dbConn(), $sql);
    }

    public function showComment($data){
        $sql = " SELECT username, comment FROM comment WHERE blog_id = '$data'  ";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }
}