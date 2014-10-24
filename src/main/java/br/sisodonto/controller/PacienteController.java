/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.sisodonto.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
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

    /**
     * @deprecated CDI eyes only
     */
    protected PacienteController() {
        this(null);
    }

    @Inject
    public PacienteController(Result result) {
        this.result = result;
    }

    
    
}
