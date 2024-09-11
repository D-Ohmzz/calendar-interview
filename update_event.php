<?php
if ($_SERVER['REQUEST_METHOD']==='PUT')
{
    include 'includes/connection.php';
    parse_str(file_get_contents("php://input"), $_PUT);
    $id = $_PUT['id'];
    $eventTitle = $_PUT['eventTitle'];
    $eventLabel = $_PUT['eventLabel'];
    $eventStartDate = $_PUT['eventStartDate'];
    $eventEndDate = $_PUT['eventEndDate'];
    if($_PUT['allDaySwitch']==1)
    {
        $allDaySwitch = 1;
    }
    else
    {
        $allDaySwitch = 0;

    }
    $eventURL = $_PUT['eventURL'] ?? null;
    $eventGuests = $_PUT['eventGuests'] ?? null;
    $eventLocation = $_PUT['eventLocation'] ?? null;
    $eventDescription = $_PUT['eventDescription'] ?? null;

    $update_query= "UPDATE event set eventTitle='$eventTitle', eventLabel='$eventLabel', eventStartDate='$eventStartDate', eventEndDate='$eventEndDate', allDaySwitch='$allDaySwitch', eventURL='$eventURL', eventGuests='$eventGuests', eventLocation='$eventLocation', eventDescription='$eventDescription' WHERE id='$id'";
    $event_update = mysqli_query($conn,$update_query); 
    if ($event_update)
    {
        echo "success";
    }
    else
    {
        echo "error";
    }
    $conn->close();
}
else
{
    echo "Wrong access method";

}

?>