<?php
if (isset($_POST['redirectButton'])) {
    $redirectValue = $_POST['redirectButton'];
    switch ($redirectValue) {
        case 'changeGallery':
            header("Location: Editgallery.html");
            break;
        case 'changePricing':
            header("Location: Changeprising.html");
            break;
        case 'viewInquiry':
            header("Location: Viewinquiry.html");
            break;
        default:
            
            break;
    }
    exit();
}
?>