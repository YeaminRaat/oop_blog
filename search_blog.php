<?php
include 'include/style.php';

$post = new App\classes\Blog();
$data = $_GET['q'];
$activeBlog = $post->searchBlog($data);


?>



        <h1 class="my-4">Searching Result For "<?= $data; ?>"</h1>

        <!-- Blog Post -->
          <?php
          if ($activeBlog->num_rows < 1) {
            echo "<h1>No Data Found</h1>";
          }else{
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
        }
          ?>

