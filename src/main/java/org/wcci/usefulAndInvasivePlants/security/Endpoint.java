package org.wcci.usefulAndInvasivePlants.security;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.wcci.usefulAndInvasivePlants.entities.DBUser;

@RestController
@CrossOrigin
public class Endpoint {
    final private PasswordEncoder passwordEncoder;
    final private SecurityUserDetailsService userService;

    public Endpoint(@Autowired final PasswordEncoder passwordEncoder,
            @Autowired final SecurityUserDetailsService userService) {
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
    }

    @PostMapping("/Register")
    public ResponseEntity<String> register(@RequestBody IncomingUserData registeredUser) {
        if (registeredUser.getEmail() == "" || registeredUser.getEmail() == null) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("emptyEmail=true");
        }

        String pattern = "^(\\w|-|\\.)+@(\\w|-|\\.)+\\.\\w{1,63}$";
        if (!Pattern.matches(pattern, registeredUser.getEmail())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("invalidEmail=true");
        }

        if (registeredUser.getFirstName().length() > 256) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("nameTooLong=true");
        }

        if (registeredUser.getUsername() == "" || registeredUser.getUsername() == null) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("emptyUsername=true");
        }

        if (registeredUser.getUsername().contains(" ")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("usernameSpace=true");
        }

        if (registeredUser.getUsername().length() > 50) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("usernameTooLong=true");
        }

        if (registeredUser.getPassword() == null || registeredUser.getPassword() == "") {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("emptyPassword=true");
        }
        
        if (registeredUser.getPassword().length() < 8 || registeredUser.getPassword().length() > 256) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("invalidPassword=true");
        }

        if (registeredUser.getConfirmPassword() == "" || registeredUser.getConfirmPassword() == null) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("emptyConfirmPassword=true");
        }

        if (!registeredUser.getConfirmPassword().equals(registeredUser.getPassword())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("nonMatchingPasswords=true");
        }

        if (!registeredUser.getReCaptchaCompleted()) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("badRecaptcha=true");
        }

        if (userService.emailInUse(registeredUser.getEmail())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("emailUsed=true");
        }

        if (userService.usernameInUse(registeredUser.getUsername())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("usernameUsed=true");
        }
        // If data is good, register the user
        userService.save(registeredUser.toDBUser(passwordEncoder));
        return ResponseEntity.ok("success=true");
    }
}
