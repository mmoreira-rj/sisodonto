<%@ include file="/header.jsp" %> 
<div class="container">
    <div class="page-header">
        <h1>Pacientes registrados no Sistema</h1>
    </div>
    <div>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>CPF</th>
                        <th>Nome</th>
                        <th>Data Nascimento</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${empty(pacientes)}">
                        <tr>
                            <td colspan="4">Nenhum Paciente Cadastrado</td>
                        </tr>
                    </c:if>
                    <c:forEach items="${pacientes}" var="p">
                        <tr>
                            
                            <td><c:out value="${p.cpf}" /></td>
                            <td><c:out value="${p.nome}" /></td>
                            <td>
                                <fmt:formatDate pattern="dd/MM/yyyy" value="${p.dataNascimento}" />
                            </td>
                            <td>
                                <a href="<c:url value="/paciente/editar/${p.codigo}"/>" class="btn btn-default">
                                    Editar
                                </a>
                                <a href="javascript:excluir(${p.codigo})" class="btn btn-default">
                                    Excluir
                                </a>
                                <a href="<c:url value="/paciente/${p.codigo}"/>" class="btn btn-default">
                                    Visualizar
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div> <!-- /container -->
<script type="text/javascript">
    function excluir(codigo) {
        if (confirm("Deseja remover este paciente?")) {
            window.location = '<c:url value="/paciente/excluir/"/>' + codigo;
        }
    }
</script>
<%@ include file="/footer.jsp" %> 