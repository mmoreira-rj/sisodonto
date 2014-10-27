<%@ include file="/header.jsp" %> 
<div class="container">
    <div class="page-header">
        <h1>Cadastro de Paciente</h1>
    </div>
    <div>
        <form id="form-paciente" role="form" method="post" action="<c:url value="/paciente/salvar" />">
            <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" name="paciente.nome" id="nome" placeholder="Nome" 
                       required minlength="3"/>
            </div>
            <div class="form-group">
                <label for="dt-nascimento">Data Nascimento</label>
                <input type="text" class="form-control" name="paciente.dataNascimento" id="dt-nascimento" placeholder="Data Nascimento" />
            </div>
            <div class="form-group">
                <label for="cpf">CPF</label>
                <input type="text" class="form-control" name="paciente.cpf" id="cpf" placeholder="Documento CPF" />
            </div>
            <div class="form-group">
                <label for="rg">RG</label>
                <input type="text" class="form-control" name="paciente.rg" id="rg" placeholder="Documento RG" />
            </div>

            <h2>Endereco</h2>
            <div class="form-group">
                <label for="cidade">CEP</label>
                <input type="text" class="form-control" name="paciente.cep" maxlength="9" id="cidade" placeholder="CEP" />
            </div>
            <div class="form-group">
                <label for="logradouro">Logradouro</label>
                <input type="text" class="form-control" name="paciente.logradouro" id="logradouro" placeholder="Logradouro" />
            </div>
            <div class="form-group">
                <label for="numero">Número</label>
                <input type="text" class="form-control" name="paciente.numero" id="numero" placeholder="Número" />
            </div>
            <div class="form-group">
                <label for="complemento">Complemento</label>
                <input type="text" class="form-control" name="paciente.complemento" id="complemento" placeholder="Complemento" />
            </div>
            <div class="form-group">
                <label for="bairro">Bairro</label>
                <input type="text" class="form-control" name="paciente.bairro" id="bairro" placeholder="Bairro" />
            </div>
            <div class="form-group">
                <label for="cidade">Cidade</label>
                <input type="text" class="form-control" name="paciente.cidade" id="cidade" placeholder="Cidade" />
            </div>
            <div class="form-group">
                <label for="nome">Estado</label>
                <select name="paciente.estado" class="form-control"> 
                    <option value="estado">Selecione o Estado</option> 
                    <option value="ac">Acre</option> 
                    <option value="al">Alagoas</option> 
                    <option value="am">Amazonas</option> 
                    <option value="ap">Amapá</option> 
                    <option value="ba">Bahia</option> 
                    <option value="ce">Ceará</option> 
                    <option value="df">Distrito Federal</option> 
                    <option value="es">Espírito Santo</option> 
                    <option value="go">Goiás</option> 
                    <option value="ma">Maranhão</option> 
                    <option value="mt">Mato Grosso</option> 
                    <option value="ms">Mato Grosso do Sul</option> 
                    <option value="mg">Minas Gerais</option> 
                    <option value="pa">Pará</option> 
                    <option value="pb">Paraíba</option> 
                    <option value="pr">Paraná</option> 
                    <option value="pe">Pernambuco</option> 
                    <option value="pi">Piauí</option> 
                    <option value="rj">Rio de Janeiro</option> 
                    <option value="rn">Rio Grande do Norte</option> 
                    <option value="ro">Rondônia</option> 
                    <option value="rs">Rio Grande do Sul</option> 
                    <option value="rr">Roraima</option> 
                    <option value="sc">Santa Catarina</option> 
                    <option value="se">Sergipe</option> 
                    <option value="sp">São Paulo</option> 
                    <option value="to">Tocantins</option> 
                </select>
                
            </div>

            <button type="submit" class="btn btn-default">Cadastrar</button>
        </form>
    </div>
</div> <!-- /container -->

<script type="text/javascript">
    $(document).ready(function () {
        
        $("#form-paciente").validate();

    });
</script>
<%@ include file="/footer.jsp" %> 