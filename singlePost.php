<?php

include 'vendor/autoload.php';
$post = new App\classes\Blog();
$blog_id = $_GET['id'];
$singleBlog = $post->selectRow($blog_id);   //show full blog
$blogCmnt = $post->showComment($blog_id);   //show comment
$postResult = mysqli_fetch_assoc($singleBlog);  //fetch full blog

if (isset($_POST['comment'])){
    $id = $GLOBALS['blog_id'];
    $comment = $post->comment($_POST, $id);
}



?>

<?php include 'include/style.php'; ?>
<?php include  'include/header.php';?>

    <!-- Page Content -->
    <div class="container">

    <div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8" id="searchResult">

        <h1 class="my-4">Single Post</h1>

        <!-- Blog Post -->
            <div class="card mb-4">
                <img class="card-img-top" src="uploads/images/<?= $postResult['photo']; ?>" height="400px" width="300px" alt="Post Image">
                <div class="card-body">
                    <h2 class="card-title"><?= $postResult['title']; ?></h2>
                    <p class="card-text"><?= $postResult['content']; ?></p>
                </div>
                <div class="card-footer text-muted">
                    Posted on <?= date("d M Y", strtotime($postResult['created_at'])); ?> by
                    <a href="#"><?= $postResult['name']; ?></a>
                </div>
            </div>
            
            <div class="card mb-4">
                <div class="card-header">Leave a comment</div>
                <div class="card-body mb-4">
                    <form action="" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="cmnt_uname" placeholder="type your name" required="">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" name="cmnt_uemail" placeholder="type your email" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="cmnt" placeholder="your comment" required=""></textarea>
                        </div>
                        <button type="submit" class="btn btn-success" name="comment">Comment</button>
                    </form>
                </div>
            </div>

            <?php 
                    while ($cmntResult = mysqli_fetch_assoc($blogCmnt)) {   ?>

            <div class="media mb-4">
                <img class="d-flex mr-3 rounded-circle" src="uploads/images/profile_pic.jpg" alt="">
                <div class="media-body">
                <h5 class="mt-0"><?= $cmntResult['username']; ?></h5>
                <?= $cmntResult['comment']; ?>
              </div>
            </div>
            <hr>
            <?php
                }
            ?>
    </div>

<?php include 'include/widget.php';?>

<?php include 'include/footer.php';?>