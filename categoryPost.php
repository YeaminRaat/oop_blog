<?php
include 'include/style.php';

$post = new App\classes\Blog();
$id = $_GET['id'];
$catPost = $post->categoryPost($id);


?>
<?php include 'include/header.php'; ?>

    <!-- Page Content -->
    <div class="container">

    <div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8" id="searchResult">

        <h1 class="my-4">Category Post</h1>

        <!-- Blog Post -->
        <?php
        while ($catPostResult = mysqli_fetch_assoc($catPost)) { ?>

            <div class="card mb-4">
                <img class="card-img-top" src="uploads/images/<?= $catPostResult['photo']; ?>" height="400px"
                     width="300px" alt="Post Image">
                <div class="card-body">
                    <h2 class="card-title"><?= $catPostResult['title']; ?></h2>
                    <p class="card-text"><?= substr($catPostResult['content'], 0, 2000); ?>.........</p>
                    <a href="singlePost.php?id=<?= $catPostResult['id']; ?>" class="btn btn-primary">Read More
                        &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                    Posted on <?= date("d M Y", strtotime($catPostResult['created_at'])); ?> by
                    <a href="#"><?= $catPostResult['name']; ?></a>
                </div>
            </div>
            <?php
        }
        ?>


    </div>

<?php include 'include/widget.php'; ?>

<?php include 'include/footer.php'; ?>