<?php
include 'include/style.php';

$post = new App\classes\Blog();
$activeBlog = $post->activeBlog();


?>
<?php include  'include/header.php';?>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8" id="searchResult">

        <h1 class="my-4">Home Page</h1>

        <!-- Blog Post -->
          <?php
          while ($postResult = mysqli_fetch_assoc($activeBlog)){ ?>


        <div class="card mb-4">
          <img class="card-img-top" src="uploads/images/<?= $postResult['photo']; ?>" height="400px" width="300px" alt="Post Image">
          <div class="card-body">
            <h2 class="card-title"><?= $postResult['title']; ?></h2>
            <p class="card-text"><?= substr($postResult['content'], 0, 2000); ?>.........</p>
            <a href="singlePost.php?id=<?= $postResult['id']; ?>" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">
            Posted on <?= date("d M Y", strtotime($postResult['created_at'])); ?> by
            <a href="#"><?= $postResult['name']; ?></a>
          </div>
        </div>
              <?php
          }
          ?>


      </div>

<?php include 'include/widget.php';?>

<?php include 'include/footer.php';?>