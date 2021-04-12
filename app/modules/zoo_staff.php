<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $result = $conn->query("INSERT INTO zoo_staff (name, job, zoo_area, age, employee_since) VALUES ('{$_POST['name']}', '{$_POST['job']}', '{$_POST['zoo_area']}', '{$_POST['age']}', '{$_POST['employee_since']}')");
    header("Location: /?route=zoo_staff");
}

else {
    $sql = "SELECT * FROM zoo_staff";
    $result = $conn->query($sql)->fetchAll();

    echo $twig->render('zoo_staff.html', ['title' => 'Personal', "personal" => $result]);
}
?>