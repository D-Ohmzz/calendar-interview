<?php
if($_SERVER['REQUEST_METHOD']==='POST')
{
    include 'includes/connection.php';
    parse_str(file_get_contents("php://input"), $_POST);
    $eventTitle = $_POST['eventTitle'];
    $eventLabel = $_POST['eventLabel'];
    $eventStartDate = $_POST['eventStartDate'];
    $eventEndDate = $_POST['eventEndDate'];
    $allDaySwitch=($_POST['allDaySwitch']);
    $eventURL = $_POST['eventURL'] ?? null;
    $eventGuests = $_POST['eventGuests'] ?? null;
    $eventLocation = $_POST['eventLocation'] ?? null;
    $eventDescription = $_POST['eventDescription'] ?? null;

    $stmt = $conn->prepare("INSERT INTO event (eventTitle, eventLabel, eventStartDate, eventEndDate, allDaySwitch, eventURL, eventGuests, eventLocation, eventDescription ) VALUES (?, ?, ?, ?, ?, ?, ? ,?, ?)");
            $stmt->bind_param("ssssissss", $eventTitle, $eventLabel, $eventStartDate, $eventEndDate, $allDaySwitch, $eventURL, $eventGuests, $eventLocation, $eventDescription);

    if ($stmt->execute())
    {
        echo "success";
    }
    else
    {
        echo "fail";  
    }
    $conn->close();
}
else
{
    echo "Wrong access method";

}
?>