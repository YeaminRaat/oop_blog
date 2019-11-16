<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a href="index.php" class="<?= basename($_SERVER['PHP_SELF'])=='index.php'? 'active':'';?>">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" class="<?= basename($_SERVER['PHP_SELF'])=='add_category.php' ? 'active':'';?> <?= basename($_SERVER['PHP_SELF'])=='manage_categories.php' ? 'active':'';?>" >
                          <i class="fa fa-laptop"></i>
                          <span>Category</span>
                      </a>
                      <ul class="sub">
                          <li class="<?= basename($_SERVER['PHP_SELF'])=='add_category.php'? 'active':'';?>"><a  href="add_category.php">Add Category</a></li>
                          <li class="<?= basename($_SERVER['PHP_SELF'])=='manage_categories.php'? 'active':'';?>"><a  href="manage_categories.php" >Manage Categories</a></li>
                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="<?= basename($_SERVER['PHP_SELF'])=='add_blog.php' ? 'active':'';?> <?= basename($_SERVER['PHP_SELF'])=='manage_blog.php' ? 'active':'';?>" >
                          <i class="fa fa-laptop"></i>
                          <span>Blog</span>
                      </a>
                      <ul class="sub">
                          <li class="<?= basename($_SERVER['PHP_SELF'])=='add_blog.php'? 'active':'';?>"><a  href="add_blog.php">Add Blog</a></li>
                          <li class="<?= basename($_SERVER['PHP_SELF'])=='manage_blog.php'? 'active':'';?>"><a  href="manage_blog.php" >Manage Blog</a></li>
                          
                      </ul>
                  </li>
                  <!--multi level menu end-->
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>