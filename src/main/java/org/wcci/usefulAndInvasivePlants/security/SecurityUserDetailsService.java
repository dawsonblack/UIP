package org.wcci.usefulAndInvasivePlants.security;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.wcci.usefulAndInvasivePlants.entities.DBUser;
import org.wcci.usefulAndInvasivePlants.repositories.UserRepo;

@Component
public class SecurityUserDetailsService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) {
        DBUser user = userRepo.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new User(user.getUsername(),
                user.getPassword(),
                user.getRoles().stream().map(SimpleGrantedAuthority::new).collect(Collectors.toList()));
    }

    public boolean emailInUse(String email) {
        DBUser user = userRepo.findByEmail(email);
        return user != null;
    }

    public boolean usernameInUse(String username) {
        DBUser user = userRepo.findByUsername(username);
        return user != null;
    }

    public DBUser save(DBUser dbUser) {
        return userRepo.save(dbUser);
    }
}