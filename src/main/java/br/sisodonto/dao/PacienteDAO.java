/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.sisodonto.dao;

import br.sisodonto.entity.Paciente;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;

/**
 *
 * @author marcio.moreira
 */
public class PacienteDAO {
    
    private final EntityManager entityManager;
    
    public PacienteDAO() {
        this(null);
    }
    
    @Inject
    public PacienteDAO(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
 
    
    public List<Paciente> listAll() {
        
        return this.entityManager
                   .createQuery("SELECT p FROM Paciente p", Paciente.class)
                   .getResultList();
        
    }
    
}
