<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $result = $conn->query("INSERT INTO zoo_areas (name, area in m2, number_of_animals) VALUES ('{$_POST['name']}', '{$_POST['area in m2']}', '{$_POST['number_of_animals']}')");
    header("Location: /?route=zoo_areas");
}

else {
    $sql = "SELECT * FROM zoo_areas";
    $result = $conn->query($sql)->fetchAll();
    echo $twig->render('zoo_areas.html', ['title' => 'Bereiche', "bereiche" => $result]);
}
?>