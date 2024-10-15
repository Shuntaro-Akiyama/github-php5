<?php
//【重要】
//insert.phpを修正（関数化）してからselect.phpを開く！！
include("../funcs.php");
$pdo = db_conn();

//２．データ登録SQL作成
$sql = "SELECT * FROM users INNER JOIN userprofs 
ON users.id = userprofs.user_id WHERE users.id = 1";
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//３．データ表示
$values = "";
if($status==false) {
  sql_error($stmt);
}

//全データ取得
$values =  $stmt->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_ASSOC[カラム名のみで取得できるモード]
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>user_prof3</title>
<link rel="stylesheet" href="../css/range.css">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<style>div{padding: 10px;font-size:16px;}td{padding:5px; margin:5px;border:1px solid #777; background:#fff;}</style>
</head>
<body id="main">
<header>
  <h1>user_prof3(JOIN：id=1だけ取得)</h1>
</header>

<!-- Main[Start] -->
<div>
    <div class="container jumbotron">

      <table id="list">
      <?php foreach($values as $v){  ?>
        <tr>
          <td><?=h($v["id"])?></td>
          <td><?=h($v["name"])?></td>
          <td><?=h($v["email"])?></td>
          <td><?=h($v["phone"])?></td>
          <td><?=h($v["github_url"])?></td>


          
        </tr>
      <?php } ?>
      </table>

  </div>
</div>
<!-- Main[End] -->
</body>
</html>
