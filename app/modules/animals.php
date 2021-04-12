<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $result = $conn->query("INSERT INTO animals (name, age, art, color, weight, gender, nutrition, height, area, staff) VALUES ('{$_POST['name']}', '{$_POST['age']}', '{$_POST['art']}', '{$_POST['color']}', '{$_POST['weight']}', '{$_POST['gender']}', '{$_POST['nutrition']}', '{$_POST['height']}', '{$_POST['area']}', '{$_POST['staff']}')");
    header("Location: /?route=animals");
}

else {
    $sql = "SELECT * FROM animals";
    $result = $conn->query($sql)->fetchAll();

    echo $twig->render('animals.html', ['title' => 'Tiere', "tiere" => $result]);
}
?>