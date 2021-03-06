// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.elsevier.tsconfig.domain;

import com.elsevier.tsconfig.domain.Orderusedinos;
import com.elsevier.tsconfig.domain.OrderusedinosPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Orderusedinos_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Orderusedinos.entityManager;
    
    public static final EntityManager Orderusedinos.entityManager() {
        EntityManager em = new Orderusedinos().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Orderusedinos.countOrderusedinoses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Orderusedinos o", Long.class).getSingleResult();
    }
    
    public static List<Orderusedinos> Orderusedinos.findAllOrderusedinoses() {
        return entityManager().createQuery("SELECT o FROM Orderusedinos o", Orderusedinos.class).getResultList();
    }
    
    public static Orderusedinos Orderusedinos.findOrderusedinos(OrderusedinosPK id) {
        if (id == null) return null;
        return entityManager().find(Orderusedinos.class, id);
    }
    
    public static List<Orderusedinos> Orderusedinos.findOrderusedinosEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Orderusedinos o", Orderusedinos.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Orderusedinos.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Orderusedinos.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Orderusedinos attached = Orderusedinos.findOrderusedinos(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Orderusedinos.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Orderusedinos.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Orderusedinos Orderusedinos.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Orderusedinos merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
