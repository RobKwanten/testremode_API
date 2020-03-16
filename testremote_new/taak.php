<?php
require_once "lib/autoload.php";

$css = array( "style.css");
$VS->BasicHead( $css );
$MS->ShowMessages();
?>
<body>

<div class="jumbotron text-center">
    <h1>Nieuwe taak</h1>
</div>

<div class="container">
    <div class="row">

        <?php
        print $VS->LoadTemplate("taak");
        ?>

    </div>
</div>

</body>
</html>