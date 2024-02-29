<?php

if (!empty($_POST)){
    var_dump($_POST);
    exit;
}

// phpinfo(); exit;

// echo time();
// echo '<br />';
// echo $_ENV['HOST_IP'];

$user = 'admin';
$pass = 'secret';

try {
    // $dbh = new PDO('mysql:host='.$_ENV['HOST_IP'].';dbname=testing', $user, $pass);
    $connection = 'mysql:host=host.docker.internal;dbname=testing';
    $dbh = new \PDO($connection, $user, $pass);
    $q = $dbh->query('SELECT * FROM users');
    $r = $q->fetchAll();

    foreach ([1, 2, 3] as $x) {
        foreach ($r as $row) {
            echo $row['name'].'<br />';
        }
        echo '<br />';
    }

    echo '<br />';
    echo '<br />';
    echo phpversion();

} catch (PDOException $e) {
    echo '<pre>';
    var_dump($e);
    // attempt to retry the connection after some timeout for example
}

?>

<form action="/" method="POST">
<input type="text" name="test" value="test">
<button type="submit">Submit</button>
</form>