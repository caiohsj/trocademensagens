<?php 
	$_SESSION['id_para'] = $_GET['usuario'];
	//include_once("sys/lista.php");
?>
<script type="text/javascript">
	$(document).ready(function(){
	comeca();
})

	var timerI = null;
	var timerR = false;

	function para(){
		if(timerR)
			clearTimeout(timerI);
			timerR = false;
	}

	function comeca(){
		para();
		lista();
	}

	function lista(){
		$.ajax({
			url:"paginas/sys/lista.php",
			success: function(textStatus){
				$("#lista").html(textStatus); //Mostra o resultado da página lista.php
			}
		})//Mostra o resultado da página lista.php
			
	
		timerI = setTimeout("lista()", 3000); //Tempo de espera para atualizar novamente
		timerR = true;
	}
</script>
<div id="content">
	
	
	<form id="form-chat" action="" method="POST" enctype="multipart/form-data">
		<div class="col-lg-12">
			<div class="input-group">
				<input type="text" name="mensagem" id="mensagem" placeholder="Digite sua mensagem" class="form-control" />
				<span class="input-group-btn">
					<input type="submit" value="&rang;&rang;" class="btn btn-success">
					<input type="hidden" name="env" value="envMsg"/>
				</span>
			</div>
		</div>
	</form>

	<hr/>

	<div id="lista">
	</div>
	<?php
		if(isset($_POST['env']) && $_POST['env'] == "envMsg"){
			$mensagem = $_POST['mensagem'];
			$id_para = $_GET['usuario'];
			$id_de = $_SESSION['usuario'];

			if(empty($mensagem)){
				echo "<code>Digite sua mensagem</code>";
			}else{
				$sql = "INSERT INTO mensagens(id_de, id_para, mensagem) VALUES(?, ?, ?)";
				$sqlprep = $conexao->prepare($sql);                         //prepara sql
        		$sqlprep->bind_param("sss", $id_de, $id_para, $mensagem);                   //atribui parametros ao sql
        		$sqlprep->execute();
				if($sqlprep){
				}else{
					echo "<code>Erro ao enviar a mensagem.</code>";
				}
			}
		}
	?>
	<br></br>
</div>
<script type="text/javascript" src="sys/script.js"></script>