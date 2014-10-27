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

    @Path("/pacientes")
    public void home() {        
        
        result.include("pacientes", pacienteDAO.listAll());
    }
 
    @Path("/paciente/novo")
    public void novo() { }

    @Path("/paciente/salvar")
    public void salvar(Paciente paciente) {
        
        paciente.setDataCadastro(Calendar.getInstance().getTime());
        
        pacienteDAO.salvar(paciente);
        
        result.redirectTo(PacienteController.class).home();
     
    }
    
}
