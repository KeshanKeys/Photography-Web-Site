<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Wild-Life':
            header("Location:WildlifeUpdate.html");
            break;
        case 'Wedding':
            header("Location:WeddingUpdate.html");
            break;
        case 'Portrait':
            header("Location:PortraitUpdate.html");
            break;
        case 'SpecialEvent':
             header("Location:SpecialeventUpdate.html");
                break;
        default:
            
            break;
    }
    exit();
}
?>