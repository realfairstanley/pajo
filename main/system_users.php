<?php 
require $_SERVER['DOCUMENT_ROOT'].'/pajo/main/class_loader.php';
require $root_url.'/App/Views/Utils/auth.php';
$users_url=$root_url.'/App/Views/Users/';
$user_type=$_SESSION['user_type'];
if($user_type!='ADMIN'){
    header("Location:forbidden");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<?php 
require_once $root_url.'/App/Views/Users/header.php';
?>

<body class="fix-header card-no-border">
    <?php 
    include_once $users_url.'loader.php';
    ?>
    <div id="main-wrapper">
        <?php 
        include $root_url.'/App/Views/Utils/navigation.php';
        ?>
        <?php 
        include $root_url.'/App/Views/Utils/sidebar.php';
        ?>
        <div class="page-wrapper">
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">Available System Users</h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
                        <li class="breadcrumb-item">
                            <a href="users">Users</a>
                        </li>
                    </ol>
                </div>
                <div>
                    <button class="right-side-toggle waves-effect waves-light btn-inverse btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <?php 
                        if(isset($_GET['action'])){
                            $action=$function->sanitize($_GET['action']);
                            switch ($action) {
                                case 'add_user':
                                    include $users_url.'add_user.php';
                                    break;
                                default:
                                    include $users_url.'load_users.php';
                                    break;
                            }
                        }else{
                            include $users_url.'load_users.php';
                        }
                        ?>
                    </div>
                </div>
                <?php 
                require $root_url.'/App/Views/Utils/rightbar.php';
                ?>
            </div>
            <?php 
            require_once $root_url.'/App/Views/Utils/footer.php';
            ?>
        </div>
    </div>
    <?php 
    require $root_url.'/App/Views/Users/scripts.php';
    ?>
    
</body>

</html>

