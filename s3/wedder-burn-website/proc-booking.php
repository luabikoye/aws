<?php

header("X-XSS-Protection: 0");

$name = htmlspecialchars($_POST['name'], ENT_QUOTES, 'UTF-8');
$email = htmlspecialchars($_POST['email'], ENT_QUOTES, 'UTF-8');
$phone = htmlspecialchars($_POST['phone'], ENT_QUOTES, 'UTF-8');
$address = htmlspecialchars($_POST['address'], ENT_QUOTES, 'UTF-8');
$city = htmlspecialchars($_POST['city'], ENT_QUOTES, 'UTF-8');
$service_type = htmlspecialchars($_POST['service_type'], ENT_QUOTES, 'UTF-8');
$message = htmlspecialchars($_POST['message'], ENT_QUOTES, 'UTF-8');


if(!$name || !$email || !$phone || !$address || !$city || !$service_type || !$message)
{
    $error = 'Your complete information is required to make a booking';
    include('booking.php');
    exit;
}

$to = 'info@wedderburnelectric.com';
$from = "From: wedderburnelectric.com";

$subject = "Bookinds from Website";

$content = 'Name: '.$name."\n"
.'Email: '.$email."\n"
.'Phone: '.$phone."\n"
.'Address: '.$address."\n"
.'City: '.$city."\n"
.'Service Type: '.$service_type."\n"
.'Subject: '.$subject."\n"
.'Message: '.$message."\n";


mail($to,$subject,$content,$from);


$correct = 'Thank you for booking our service. A representative will get in touch as soon as possible.';
include('booking.php');
exit;


?>