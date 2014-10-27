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

    @Inject
    private EntityManager entityManager;
    
    public List<Paciente> listAll() {
        
        return this.entityManager
                   .createQuery("SELECT p FROM Paciente p", Paciente.class)
                   .getResultList();
        
    }

    public void salvar(Paciente paciente) {
        
        if (paciente.getCodigo() != null) {
            entityManager.persist(paciente);
        } else {
            entityManager.merge(paciente);
        }
    }

    public Paciente buscarPorCodigo(Integer codigo) {
        
        return entityManager.find(Paciente.class, codigo);
        
    }
        
}
