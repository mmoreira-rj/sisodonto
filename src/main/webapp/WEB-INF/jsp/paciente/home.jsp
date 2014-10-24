<%@ include file="/header.jsp" %> 
<div class="container">
    <div class="page-header">
        <h1>Pacientes cadastros no sistema</h1>
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
                    <c:forEach items="${paciente}" var="p">
                        <tr>
                            <td><c:out value="${p.cpf}" /></td>
                            <td><c:out value="${p.nome}" /></td>
                            <td><c:out value="${p.dataNascimento}" /></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div> <!-- /container -->
<%@ include file="/footer.jsp" %> 