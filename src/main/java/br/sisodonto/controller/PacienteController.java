/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.sisodonto.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.sisodonto.dao.PacienteDAO;
import br.sisodonto.entity.Paciente;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author rodrigo
 */
@Controller
public class PacienteController {

    @Inject
    private Result result;

    @Inject
    private PacienteDAO pacienteDAO;

    @Path("/")
    public void index() {
        result.redirectTo(PacienteController.class).home();
    }
    
    @Path("/pacientes")
    public void home() {

        result.include("pacientes", pacienteDAO.listAll());
    }

    @Path("/paciente/{codigo}")
    public void visualizar(Integer codigo) {
        result.include("paciente", pacienteDAO.buscarPorCodigo(codigo));
    }
    
    @Path("/paciente/novo")
    public void novo() {
    }

    @Path("/paciente/editar/{codigo}")
    public void editar(Integer codigo) {

        Paciente paciente = pacienteDAO.buscarPorCodigo(codigo);

        result.include("p", paciente);
    
    }
    
    @Path("/paciente/excluir/{codigo}")
    public void excluir(Integer codigo) {

        pacienteDAO.excluir(codigo);
    
        result.redirectTo(PacienteController.class).home();
        
    }
    @Path("/paciente/salvar")
    public void salvar(Paciente paciente) {

        if (! (paciente.getCodigo() == null)) {
            
            Paciente p = pacienteDAO.buscarPorCodigo(paciente.getCodigo());
            p.setNome(paciente.getNome());
            p.setDataNascimento(paciente.getDataNascimento());
            p.setCpf(paciente.getCpf());
            p.setRg(paciente.getRg());            
            p.setLogradouro(paciente.getLogradouro());
            p.setNumero(paciente.getNumero());
            p.setComplemento(paciente.getComplemento());
            p.setBairro(paciente.getBairro());
            p.setCidade(paciente.getCidade());
            p.setEstado(paciente.getEstado());            
            
            pacienteDAO.salvar(p);
            
        } else {
            paciente.setDataCadastro(Calendar.getInstance().getTime());
            pacienteDAO.salvar(paciente);
        }
        
        result.redirectTo(PacienteController.class).home();

    }

}
