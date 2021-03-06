<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Turorial</title>
    <style>
        [class*="col"] {
            padding: 1rem;
            background-color: gray;
            border: 2px solid #fff;
            color: #fff;
            text-align: center;
        }
    </style>

    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-lg  ">
    <div class="row">
        <!--        <div class="row g-5">-->
        <div class="m-5">
            <h2 class="text-center m-6">przykład 1</h2>
        </div>
    </div>
</div>


<!--my-5 - marginesy-->
<div class="container-lg my-5">
    <div class="row">
        <div class="col">1</div>
        <div class="col">2</div>
        <div class="col">3</div>
    </div>
    <div class="row">
        <div class="col">1</div>
        <div class="col">2</div>
    </div>
</div>

<h2 class="text-center t">przykład 2</h2>
<div class="container-lg">
    <div class="row">
        <div class="col">1</div>
        <div class="col">2</div>
        <div class="col">3</div>
    </div>
    <div class="row">
        <div class="col-md-8">1</div>
        <div class="col-md-4">2</div>
    </div>
    <!--na sztywno:-->
    <div class="row">
        <div class="col-8">1</div>
        <div class="col-4">2</div>
    </div>
</div>

<h2 class="text-center t my-5">przykład 3 - Gutter</h2>
<!--odstępy między kolumnami do ustawiania x i y-->
<div class="container ">
    <div class="row g-5">
        <div class="col-6">1</div>
        <div class="col-6">2</div>
        <div class="col-6">3</div>
        <div class="col-6">4</div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>