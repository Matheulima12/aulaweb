package com.aulaweb.aulaweb;

public class email {
    private String email;

    public email() {

    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email= email;
    }

    @Override
    public String toString() {
        return email;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + (email == null ? 0 : email.hashCode());
        return hash;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return false;
        if (this.getClass() != o.getClass()) return false;
        email obj = (email) o;
        return this.email.equals(obj.email);
    }

}
