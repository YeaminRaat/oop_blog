<?php  

namespace App\classes;

class Category
{
	function addCategory($data)
	{
		$c_name = $data['category_name'];
		$c_status = $data['status'];
		$sql = "INSERT INTO `category`(`category_name`, `status`) VALUES ('$c_name', '$c_status')";
		$result = mysqli_query(Database::dbConn(), $sql);
		if ($result) {
			$message = "Category save successfully.";
			return $message;
		}
		else{
			$message = "Category not saved.";
			return $message;
		}
	}

	public function showCategory(){
	    $sql = "SELECT * FROM category";
	    $result = mysqli_query(Database::dbConn(), $sql);
	    return $result;
    }

    public function showActiveCategory(){
        $sql = "SELECT * FROM category WHERE status=1";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    public function selectRow($id){
        $sql = "SELECT * FROM category WHERE id='$id' ";
        $result = mysqli_query(Database::dbConn(), $sql);
        return $result;
    }

    function editCategory($data)
    {
        $c_name = $data['category_name'];
        $c_status = $data['status'];
        $c_id = $data['category_id'];
        $sql = " UPDATE category SET category_name='$c_name', status='$c_status' WHERE id='$c_id'";
        $result = mysqli_query(Database::dbConn(),$sql);
        if ($result) {
            $message = "Category Udpate successfully.";
            return $message;
        }
        else{
            $message = "Category not update.";
            return $message;
        }

    }

    public function categoryActive($id){
	    $sql2 = "UPDATE category SET status=1 WHERE id ='$id' ";
        mysqli_query(Database::dbConn(), $sql2);
    }

    public function categoryInactive($id){
        $sql3 = "UPDATE category SET status=0 WHERE id ='$id' ";
        mysqli_query(Database::dbConn(), $sql3);
    }

    public function catDelete($id){
	    $sql = "DELETE FROM category WHERE id='$id' ";
	    mysqli_query(Database::dbConn(), $sql);
    }
}

?>