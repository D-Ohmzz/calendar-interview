<?php
if($_SERVER['REQUEST_METHOD']==='GET')
{
    include 'includes/connection.php';
    $fetch_query = "SELECT * FROM event";
    $event_fetch = mysqli_query($conn,$fetch_query); 
    if($event_fetch)
    {
        $events = mysqli_fetch_all($event_fetch, MYSQLI_ASSOC);
        echo json_encode($events);
        
    }
    else
    {
        $data =  array('status'=>false, 'msg'=> 'Retrieve failed.' ); 
        echo json_encode($data);
    }
    $conn->close();
}
else
{
    $data = array('msg'=> 'Wrong access method.');
    echo json_encode($data);

}

?>