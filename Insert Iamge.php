<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Wild-Life':
            header("Location:WildlifeEdit.html");
            break;
        case 'Wedding':
            header("Location:WeddingEdit.html");
            break;
        case 'Portrait':
            header("Location:PortraitEdit.html");
            break;
        case 'SpecialEvent':
             header("Location:SpecialEventEdit.html");
                break;
        default:
            
            break;
    }
    exit();
}
?>