<div id="content">
	<form action="" method="POST" enctype="multipart/form-data">
		<label>Usuário</label>
		<p><input type="text" name="usuario" id="usuario" placeholder="Usuário" class="form-control" /></p>

		<label>Senha</label>
		<p><input type="password" name="senha" id="senha" placeholder="************" class="form-control"></p>

		<p><input type="submit" name="Entrar" class="btn btn-primary btn-lg btn-block"></p>
		<input type="hidden" name="env" value="login">
	</form>
	<?php
		if(isset($_POST['env']) && $_POST['env'] == "login"){
			$usuario = $_POST['usuario'];
			$senha = $_POST['senha'];

			if(empty($usuario) || empty($senha)){
				echo "<code>Preencha todos os campos</code>";
			}else{
				$sql = "SELECT *  FROM usuarios WHERE usuario = ? AND senha = ?";
				$sqlprep = $conexao->prepare($sql);                         //prepara sql
        		$sqlprep->bind_param("ss", $usuario, $senha);                   //atribui parametros ao sql
        		$sqlprep->execute(); 
				$result = $sqlprep->get_result();
				$linha = $result->fetch_all(MYSQLI_ASSOC);

				if(count($linha) > 0){
					$_SESSION['nome'] = $linha[0]['nome'];
					$_SESSION['usuario'] = $linha[0]['usuario'];
					echo '<meta http-equiv="Refresh" content="1; url=?pagina=usuarios">';
				}else{
					echo "<code>Usuário ou senha inválidos.</code>";
				}
			}
		}
	?>
</div>