<?php
  include './php/actions/index2.php';

 ?>
<!Doctype>
<html>
  <head>
    <meta charset=utf-8 />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Tracker</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/jQuery.js"></script>
    <style>
      .container {
        width:auto;
        height:auto;
        margin:0 auto;
      }
      body {
        background-color: #102334;
        height:100%;
        width:100%;
      }

      h1,h2,h3 {
        color:#CCA567 ;
        font-weight: bold;
      }
      .navh1 {
        color: #CCA567 !important;
        font-weight: bold !important;
      }
      p {
        padding-top:15px;
        padding-button:15px;
      }
      .btn-md{
        border:none !important;
        height:160px;
        width:160px;
        opacity: 0.7;
      }
      .btn-mda{
        border:none !important;
        height:220px;
        width:220px;
        opacity:0.7;
      }
      .icon{
        font-size: 60px;
        font-size-adjust: auto;
      }
      .icona {
        font-size: 90px;
        font-size-adjust: auto;
      }
      h4 {
        font-size: 20px;
        line-height: 1.375em;
        font-weight: 400;
        margin-bottom: 30px;
        font-size-adjust: auto;
      }

    </style>
  </head>
  <body>
    <div class="container  text-center">
      <div class="row">
        <div class="col-md-6 col-md-offset-3" >
          <h1>Office File Tracking System</h1>
          <form method="POST" role="form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <?php if($result)echo $result;
                  if($message)echo $message;
             ?>
            <div class="form-group">
              <label for="email">Email Address:</label>
              <input type="email" class="form-control" name="email" id="email" />
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" class="form-control" name="pwd" id="pwd" />
            </div>
            <button type="submit" class="btn btn-danger">Login</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
