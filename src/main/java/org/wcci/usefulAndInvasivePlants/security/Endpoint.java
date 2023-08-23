package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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

    // Note that `curl -i http://localhost:8080/api/triple/3` redirects to "/login".
    @GetMapping("/api/triple/{val}")
    public int tripleNumber(@PathVariable final int val) {
        return val * 3;
    }

    // Note that `curl -i http://localhost:8080/api/double/999` returns 1998
    @GetMapping("/api/double/{val}")
    public int doubleNumber(@PathVariable final int val) {
        return val * 2;
    }

    // curl -iX POST http://localhost:8080/api/register -d '{"username":"marshall", "password":"gene"}' -H "Content-Type: application/json"
    @PostMapping("/api/register")
    public DBUser register(@RequestBody DBUser nameAndPassword) {
        return userService.save(new DBUser(nameAndPassword.getUsername(),
                passwordEncoder.encode(nameAndPassword.getPassword()), "USER"));
    }
}
