<?php
    //iniciar a sessão
    session_start();

    //variaveis recebidas pelo Form contato.php
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $descricao = $_POST["descricao"];

    require_once("PHPMailerAutoload.php");

    //criação de um objeto oriundo da classe PHPMailer
    $mail = new PHPMailer();

    //Criação do servidor SMTP
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->Port= 587;
    $mail->SMTPSecure = 'tls';
    $mail->SMTPAuth = true;
    $mail->Username = "croschel000@gmail.com";
    $mail->Password = "C412003rr";

    //Emitente/Destinatário
    $mail->setFrom("croschel000@gmail.com","Comprar Produtos");
    $mail->addAddress("croschel000@gmail.com");

    //Mensagem para o cliente
    $mail->Subject = "Email de Contato com a loja";
    $mail->msgHTML("<html>de: {$nome}<br/>email: {$email}<br/>mensagem: {$descricao}</html>");
    $mail->AltBody = "de: {$nome}\nemail:{$email}\nmensagem: {$descricao}";

    //verifica o envio da msg
    if($mail->send()){
        $_SESSION["success"] = "Mensagem enviada com sucesso";
        header("Location: index.php");
    }else{
        $_SESSION["danger"] = "Erro ao enviar mensagem" . $mail->ErrorInfo;
        header("Location: index.php");
    }
    die();

    ?>