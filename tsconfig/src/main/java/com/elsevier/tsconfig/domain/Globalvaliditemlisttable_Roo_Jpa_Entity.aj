// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.elsevier.tsconfig.domain;

import com.elsevier.tsconfig.domain.Globalvaliditemlisttable;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Globalvaliditemlisttable_Roo_Jpa_Entity {
    
    declare @type: Globalvaliditemlisttable: @Entity;
    
    declare @type: Globalvaliditemlisttable: @Table(schema = "TS_CLIENT", name = "GLOBALVALIDITEMLISTTABLE");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private BigDecimal Globalvaliditemlisttable.id;
    
    public BigDecimal Globalvaliditemlisttable.getId() {
        return this.id;
    }
    
    public void Globalvaliditemlisttable.setId(BigDecimal id) {
        this.id = id;
    }
    
}
