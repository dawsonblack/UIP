package org.wcci.usefulAndInvasivePlants.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

// should we add age as a field??? 
@Entity
public class User {
    @Id
    @GeneratedValue
    private Long id; /// should I use Int here instead? 
    private String email;
    private String firstName;
    private String userName;
    private String passWord;

    // is line 12-15 a constructor? if not what is a constructor and where is it
    public User(Long id, String email, String firstName, String userName, String passWord) {
        this.id = id;
        this.email = email;
        this.firstName = firstName;
        this.userName = userName;
        this.passWord = passWord;
    }

    public User(){
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    
}
