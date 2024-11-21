<?php
include_once('./stripe/init.php');

$publishableKey="pk_test_51QKwv202IieB8xAjPLgXdfkjzaXrM4aC9gNxHz2VgIrCKokuZdl9Dk98UZni4gm4f32entR7XqavK3apNy9XN9Mv005HzpbiMJ";

$secretKey="sk_test_51QKwv202IieB8xAjr7RIxja8FlSJGiATxhxxSh0cuReFYTr99EPKmDDEwbgKvrWmsBQw1BYdLxQuY0GkmyvblmjC0070AwGAcN";

\Stripe\Stripe::setApiKey($secretKey);
?>
