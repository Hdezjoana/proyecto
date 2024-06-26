<!DOCTYPE html>
<html lang="en">
<html lang='en'>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image">
                                <img src="img/fondo.png" style="width: 102%;">
                                <h1 style="color: aliceblue; margin-left: 50px; margin-top: -350px;
                                text-shadow: 0 0 8px rgb(2, 2, 2);">𝓉𝒽𝑒 𝒸𝓁𝒶𝓈𝓈𝓎 𝓂𝓊𝓈𝒾𝒸</h1>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>

                                    <form class="user" action=" ../Controllers/intrar.php" method="POST">
                                        <div class="form-group">
                                            correo: <input type="email" class="form-control form-control-user"
                                                name="correo" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address...">
                                        </div>
                                        <div class="form-group">
                                            contraseña: <input type="password" class="form-control form-control-user"
                                                name="password" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                                        
                                        </a> -->

                                        <div class="col-lg-12 text-center">
                                    <input type="submit" class="btn w-100 btn-dark neon-purple"
                                        value="Iniciar Sesion" href="index.html">
                            
                                        <hr>
                                    </form>

                                    <hr>
                                    <!-- <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div> -->
                                    
                                    <div class="text-center">
                                        <a class="small" href="Registro_formulario.php">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <?php
    // Verificar si la variable de sesión está configurada y mostrar la modal
    
    if (isset($_SESSION['registro_exitoso']) && $_SESSION['registro_exitoso']) {
        echo '
        <script>
            $(document).ready(function () {
                $("#modalUsuarioRegistrado").modal("show");
            });
        </script>';
        // Reiniciar la variable de sesión para evitar que la modal se muestre en futuras visitas
        $_SESSION['registro_exitoso'] = false;
    }

    // Verificar si hay alerta de datos faltantes y mostrar el modal correspondiente
    if (isset($_GET['alert']) && $_GET['alert'] === 'datos_faltantes') {
        echo '
        <script>
            $(document).ready(function () {
                $("#modalDatosFaltantes").modal("show");
            });
        </script>';
    }

    // Verificar si hay alerta de credenciales incorrectas y mostrar el modal correspondiente
    if (isset($_GET['alert']) && $_GET['alert'] === 'credenciales_incorrectas') {
        echo '
        <script>
            $(document).ready(function () {
                $("#modalCredencialesIncorrectas").modal("show");
            });
        </script>';
    }
    ?>
    

</body>

</html>
