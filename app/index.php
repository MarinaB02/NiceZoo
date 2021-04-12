<?php

$servername = "zoo_app_db";
$username = "root";
$password = "iwejdsgbosjgbosebgfn";
$dbname = "zoo";

// Create connection
$conn = new PDO("mysql:host={$servername};dbname={$dbname}", $username, $password);

require_once 'vendor/autoload.php';
$loader = new \Twig\Loader\FilesystemLoader('templates');

$twig = new \Twig\Environment($loader, [
  'cache' => false,
]);

switch (@$_GET['route']) {
  case '': {
      include("modules/default.php");
  }
  break;

  case 'animals': {
    include("modules/animals.php");
  }
  break;

  case 'delete_animal': {
    $conn->query("DELETE FROM animals WHERE idanimals={$_GET['animalid']}");
    header("Location: /?route=animals");
  }
  break;
  
  
  default: {
    echo "error 404";
  }
  break;

  case 'zoo_staff': {
    include("modules/zoo_staff.php");
  }
  break;

  case 'delete_employee': {
    $conn->query("DELETE FROM zoo_staff WHERE idstaff={$_GET['staffid']}");
    header("Location: /?route=zoo_staff");
  }
  break;

  case 'zoo_areas': {
    include("modules/zoo_areas.php");
  }
  break;

  case 'delete_area': {
    $conn->query("DELETE FROM zoo_areas WHERE idarea={$_GET['areaid']}");
    header("Location: /?route=zoo_areas");
  }
  break;

  case 'suche': {
    include("modules/suche.php");
  }
  break;

}

?>
