<?php

header("X-XSS-Protection: 0");

$name = htmlspecialchars($_POST['name'], ENT_QUOTES, 'UTF-8');
$email = htmlspecialchars($_POST['email'], ENT_QUOTES, 'UTF-8');
$phone = htmlspecialchars($_POST['phone'], ENT_QUOTES, 'UTF-8');
$subject = htmlspecialchars($_POST['subject'], ENT_QUOTES, 'UTF-8');
$message = htmlspecialchars($_POST['message'], ENT_QUOTES, 'UTF-8');


if(!$name || !$email || !$message)
{
    $error = 'All information required';
    include('contact.php');
    exit;
}

$to = 'info@wedderburnelectric.com';
$from = "From: wedderburnelectric.com";

$subject = "Contact Inquiry";

$content = 'Name: '.$name."\n"
.'Email: '.$email."\n"
.'Phone: '.$phone."\n"
.'Subject: '.$subject."\n"
.'Message: '.$message."\n";


mail($to,$subject,$content,$from);


$correct = 'Thank you for contacting us. A representative will get in touch as soon as possible.';
include('contact.php');
exit;


?>