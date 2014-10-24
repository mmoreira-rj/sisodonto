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
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author rodrigo
 */
@Controller
public class PacienteController {

    private final Result result;
    private final PacienteDAO pacienteDAO;
    
    @Inject    
    public PacienteController(Result result, PacienteDAO pacienteDAO) {
        this.result = result;
        this.pacienteDAO = pacienteDAO;
    }

    @Path("/")
    public void home() {        
                
        result.include("pacientes", pacienteDAO.listAll());
    }
    
    
}
