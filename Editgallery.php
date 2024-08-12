<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'Insert Images':
            header("Location: Insert Images.html");
            break;
        case 'Update Images':
            header("Location: Update Images.html");
            break;
        case 'Delete Images':
            header("Location: Delete Images.html");
            break;
        default:
            
            break;
    }
    exit();
}
?>