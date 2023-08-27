package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.wcci.usefulAndInvasivePlants.entities.DBUser;

public class IncomingUserData {
    private String email;
    private String firstName;
    private String username;
    private String password;
    private String confirmPassword;
    private boolean reCaptcha;

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

    public String getUsername() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public boolean getReCaptcha() {
        return reCaptcha;
    }

    public void setReCaptcha(boolean reCaptcha) {
        this.reCaptcha = reCaptcha;
    }

    public DBUser toDBUser(PasswordEncoder passwordEncoder) {
        DBUser user = new DBUser(this.username, passwordEncoder.encode(this.password), "USER");
        user.setEmail(this.email);
        user.setFirstName(this.firstName);
        return user;
    }
}
