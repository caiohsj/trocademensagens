<div id="content">
	<?php
		$result = $conexao->query("SELECT * FROM usuarios");
		$seleciona = $result->fetch_all(MYSQLI_ASSOC);

		if(count($seleciona) <= 0){
			echo "Nenhum usuário encontrado";
		}else{
		foreach($seleciona as $row){
			$nome = $row['nome'];
			$usuario = $row['usuario'];
			$foto = $row['foto'];
	?>
	<tr>
		<td><img src="<?php echo 'imagens/'.$foto;?>" class="foto-user"/></td>
		<td><b><?php echo $nome;?></b></td>
		<td><a href="?pagina=chat&usuario=<?php echo $usuario;?>" class="btn btn-info">Iniciar</a></td>
	</tr>
	<hr/>
	<?php }}?>
</div>