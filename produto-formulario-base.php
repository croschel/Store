
 <tr>
 <td><label for="nome">Nome</label></td>
 <td><input type="text" name="nome" value="<?=$produto->getNome()?>" class="form-control"/></td>
 </tr>

 <tr>
 <td><label for="preco">Preço</label></td>
 <td><input type="number" name="preco" value="<?=$produto->getPreco()?>" class="form-control"/></td>
 </tr>

 <tr>
 <td><label for="descricao">Descrição</label></td>
 <td><textarea name="descricao" class="form-control"><?=$produto->getDescricao()?></textarea></td>
 </tr>

    <?php
    $usado = $produto->isUsado() ? "checked='checked'" : "";
    ?>

 <tr>
 <td><label for="usado"></label></td>
 <td><input type="checkbox" name="usado" <?=$usado?> value="true">Usado</td>
 </tr>

 <tr>
 <td><label for="categoria_id">Categoria</label></td>
 <td>
 <select name="categoria_id" class="form-control">
     <?php foreach($categorias as $categoria) :
     $essaEhCategoria = $produto->getCategoria()->getId() == $categoria->getId();
     $selecao = $essaEhCategoria ? "selected='selected'" : ""; 
     ?>
 <option value="<?=$categoria->getId();?>" <?=$selecao?>> <?=$categoria->getNome()?></option>
     <?php endforeach;?>
 </select>
 </td>
 </tr>