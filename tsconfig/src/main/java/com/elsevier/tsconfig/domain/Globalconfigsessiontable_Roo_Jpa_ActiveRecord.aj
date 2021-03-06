// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.elsevier.tsconfig.domain;

import com.elsevier.tsconfig.domain.Globalconfigsessiontable;
import com.elsevier.tsconfig.domain.GlobalconfigsessiontablePK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Globalconfigsessiontable_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Globalconfigsessiontable.entityManager;
    
    public static final EntityManager Globalconfigsessiontable.entityManager() {
        EntityManager em = new Globalconfigsessiontable().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Globalconfigsessiontable.countGlobalconfigsessiontables() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Globalconfigsessiontable o", Long.class).getSingleResult();
    }
    
    public static List<Globalconfigsessiontable> Globalconfigsessiontable.findAllGlobalconfigsessiontables() {
        return entityManager().createQuery("SELECT o FROM Globalconfigsessiontable o", Globalconfigsessiontable.class).getResultList();
    }
    
    public static Globalconfigsessiontable Globalconfigsessiontable.findGlobalconfigsessiontable(GlobalconfigsessiontablePK id) {
        if (id == null) return null;
        return entityManager().find(Globalconfigsessiontable.class, id);
    }
    
    public static List<Globalconfigsessiontable> Globalconfigsessiontable.findGlobalconfigsessiontableEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Globalconfigsessiontable o", Globalconfigsessiontable.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Globalconfigsessiontable.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Globalconfigsessiontable.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Globalconfigsessiontable attached = Globalconfigsessiontable.findGlobalconfigsessiontable(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Globalconfigsessiontable.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Globalconfigsessiontable.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Globalconfigsessiontable Globalconfigsessiontable.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Globalconfigsessiontable merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
