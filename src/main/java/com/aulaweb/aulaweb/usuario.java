package com.aulaweb.aulaweb;

import javax.validation.constraints.Email;
import java.util.Date;

public class usuario {
    public usuario(){}
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    private Date dtnas;

    public Email getEmail() {
        return email;
    }

    public void setEmail(Email email) {
        this.email = email;
    }

    private Email email;
    private String nome;

    public Date getDtnas() {
        return dtnas;
    }

    public void setDtnas(Date dtnas) {
        this.dtnas = dtnas;
    }


}
