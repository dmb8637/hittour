<?php

header('Content-Type: text/html; charset=utf-8');

    $email = 'dmb8637@mail.ru';
    /* Отправляем email */

if ( $_POST['subject'] ) {

    $success = 
        mail($email, "Отзыв о работе", "\n
        Посетитель оставил отзыв! \n
        Имя : ".$_POST['fname']." \n
        Телефон : ".$_POST['phone']." \n
        Email : ".$_POST['email']." \n
        Отзыв : ".$_POST['subject']."
        ","From: inbox@hit-tour.ru \r\n");
    
        echo 'Отзыв отправлен!';
        echo '<br>';
        echo '<a href="index.html">На главную</a>';
} else
{
        echo 'Отзыв НЕ отправлен!';
        echo '<br>';
        echo '<a href="index.html">На главную</a>';
}
    
if (!$success) {
    $errorMessage = error_get_last()['message'];
} 
    else {
    
        $errorMessage = "Отзыв успешно отправлен!";
}
?>