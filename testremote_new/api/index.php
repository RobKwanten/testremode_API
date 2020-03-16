<?php
$register_form = true;
require_once "../lib/autoload.php";

$uri_parts = explode("/",($_SERVER['REQUEST_URI']));
$count = count($uri_parts);

//GET-----------------------------------------------------------------------------------------------------------------------------------
if ($_SERVER['REQUEST_METHOD']=='GET'){
    if($uri_parts[$count-1] == 'taken') {
        echo json_encode($DBM->GetData('SELECT * FROM taak'));
        http_response_code(200);
    } else if($uri_parts[$count-2] == 'taak') {
        $data = $DBM->GetData('SELECT * FROM taak where taa_id= '.$uri_parts[$count-1]);
        if ($data !== []) {
            echo json_encode($data);
            http_response_code(200);
        } else {
            http_response_code(404);
        }
    } else {
        http_response_code(404);
    }
}
//POST----------------------------------------------------------------------------------------------------------------------------------
else if($_SERVER['REQUEST_METHOD']=='POST'){
    if($uri_parts[$count-1] == 'taken') {
        $sql = "INSERT INTO taak SET " .
            " taa_datum='" . htmlentities($_POST['taa_datum'], ENT_QUOTES) . "' , " .
            " taa_omschr='" . htmlentities($_POST['taa_omschr'], ENT_QUOTES)."'";
        if ($DBM->ExecuteSQL($sql)){
            $MS->AddMessage("Nieuwe taak toegevoegd!");
            http_response_code(200);
            header("Location: " . $_application_folder . "/taak.php");
        }
        else {
            $MS->AddMessage("Er liep iets fout, je taak is niet toegevoegd!",'error');
            http_response_code(422);
            header("Location: " . $_application_folder . "/taak.php");
        }
    }
}
//UPDATE----------------------------------------------------------------------------------------------------------------------------------
else if($_SERVER['REQUEST_METHOD']=='PUT'){
    if($uri_parts[$count-2] == 'taak') {
        $sql="UPDATE taak SET taa_datum = '". htmlentities($_POST['taa_datum'], ENT_QUOTES) ."', taa_omschr= '". htmlentities($_POST['taa_omschr'], ENT_QUOTES)."' where taa_id = ".$uri_parts[$count-1];
        if ($DBM->ExecuteSQL($sql)){
            $MS->AddMessage("Taak gewijzigd!");
            http_response_code(200);
            header("Location: " . $_application_folder . "/taak.php");
        }
        else {
            $MS->AddMessage("Er liep iets fout, je taak is niet gewijzigd!",'error');
            http_response_code(422);
            header("Location: " . $_application_folder . "/taak.php");
        }
    }
}
//DELETE----------------------------------------------------------------------------------------------------------------------------------
else if($_SERVER['REQUEST_METHOD']=='DELETE'){
    if ($uri_parts[$count-2] == 'taak'){
        $DBM->ExecuteSQL("DELETE FROM taak where taa_id = ".$uri_parts[$count-1]);
        http_response_code(200);
    }
}