<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $search = $_POST['suche'];
    $result['areas'] = $conn->query("SELECT name, area, number_of_animals FROM zoo_areas WHERE name LIKE '%{$search}%';");
    $result['animals'] = $conn->query("SELECT name, age, art, color, weight, gender, nutrition, height, area FROM animals WHERE name LIKE '%{$search}%';");
    $result['staff'] = $conn->query("SELECT name, job, zoo_area, age, employee_since FROM zoo_staff WHERE name LIKE '%{$search}%';");
}

    echo $twig->render('suche.html', ['title' => 'Suchergebnisse', "suche"=>$search, "result" => $result]);

?>