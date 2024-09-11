<?php
if ($_SERVER['REQUEST_METHOD']==='DELETE')
{
    include 'includes/connection.php';
    parse_str(file_get_contents("php://input"), $_DELETE);
    $id = $_DELETE['id'];
    $delete_query = "DELETE FROM event WHERE id='$id'";
    $event_delete = mysqli_query($conn,$delete_query); 
    if ($event_delete)
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