<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Wild-Life':
            header("Location:DeleteWildlife.html");
            break;
        case 'Wedding':
            header("Location:DeleteWedding.html");
            break;
        case 'Portrait':
            header("Location:DeletePortrait.html");
            break;
        case 'SpecialEvent':
             header("Location:DeleteSpecialevent.html");
                break;
        default:
            
            break;
    }
    exit();
}
?>