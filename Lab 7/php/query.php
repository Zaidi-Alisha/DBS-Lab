<?php
include ("dbcon.php");
$categoryName = $categoryDes = $categoryImageNmame = "";
$categoryNameError = $categoryDesError = $categoryImageNameErr = "";
if(isset($_POST['addCategory'])){
    $categoryName= $_POST['cName'];
    $categoryDes= $_POST['cDes'];
    $categoryImageName= $_FILES['cImage']['name'];
    $categoryImageTmpName= $_FILES['cImage']['tmp_name'];
    $destination = "images/".categoryImageName;
    $extension = pathInfo($categoryImangeName, PATHINFO_EXTENSION)
    if(empty($categoryName)){
        $categoryNameErr = "category name is required";
    }
    if(empty($categoryDes)){
        $categoryDesErr = "category description is required";
    }
    if(empty($categoryImageNameErr)){
        $categoryImageNameErr = "category image name is required";
    }
    else{
        $allowedExtensionArray = ["png", "svg", "jpg", "jpeg", "webp"];
        if(!in_array($extension, $allowedExtensionArray)){
            $categoryImageNameErr = "Invalid extension";
        }
    }
    if(empty($categoryNameErr)&& empty($categoryDesErr)){
        if(move_uploaded_file($categoryImageTmpName, $destination)){
            $query = $pdo->prepare("insert into categories(name, des, image) 
            values(:cName., cDes, cImage)");
            $query ->bindParam("cName", $categoryName);
            $query ->bindParam("cDes", $categoryDes);
            $query ->bindParam("cImage", $categoryImageName);
            $query ->execute();
            echo "<script>alert('category added successfully');location.assign('add.
            php')</scripts>";
        }
    }
}
?>