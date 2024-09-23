<?php
use Firebase\JWT\JWT;

if ($_GET['j_username'] && $_GET['j_password']) {
    // If j_password starts with JWT__
    if (substr($_GET['j_password'], 0, 5) === 'JWT__') {
        // Decode the JWT token
        $jwt = substr($_GET['j_password'], 6);
        $publicKey = openssl_pkey_get_public(
            file_get_contents(__DIR__ . '/../../cas-login/certs/public.pem')
        );
        try {
            $decoded = JWT::decode($jwt, $publicKey, ["RS256"]);
            return $decoded;
        } catch (Exception $e) {
            echo 'Invalid token (1)';
            die();
        }
    } else {
        echo 'Invalid token (2)';
        die();
    }
} else {
    header('Location: /cas-login/login.php?redirect=' . urlencode($_SERVER['REQUEST_URI']));
    exit();
}
