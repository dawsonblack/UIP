package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.beans.factory.annotation.Autowired;
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

    // curl -iX POST http://localhost:8080/api/register -d '{"username":"marshall", "password":"gene"}' -H "Content-Type: application/json"
    @PostMapping("/Register")
    public DBUser register(@RequestBody DBUser registeredUser) {
        DBUser newUser = new DBUser(registeredUser.getUsername(), passwordEncoder.encode(registeredUser.getPassword()), "USER");
        newUser.setEmail(registeredUser.getEmail());
        newUser.setFirstName(registeredUser.getFirstName());
        
        return userService.save(newUser);
    }
}
