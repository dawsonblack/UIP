package org.wcci.usefulAndInvasivePlants.security;

/*import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
    private final SecurityUserDetailsService userDetailsService;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public SecurityConfig(@Autowired SecurityUserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        final DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder);
        return provider;
    }

    // @Bean
    // public UserDetailsService userDetailsService() {
    // InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
    // manager.createUser(
    // User.withDefaultPasswordEncoder().username("marshall").password("gene").roles("USER").build());
    // manager.createUser(
    // User.withDefaultPasswordEncoder().username("magic").password("abracadabra").roles("USER").build());
    // return manager;
    // }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeHttpRequests(
                        (authorizationManager) -> authorizationManager // first matcher to match wins
                                .requestMatchers("/api/double/*").permitAll() // do not require login
                                .anyRequest().authenticated() // require login for everything else
                )
                .formLogin((formLoginConfigurer) -> formLoginConfigurer.permitAll())
                .rememberMe((rememberMeConfigurer) -> rememberMeConfigurer.alwaysRemember(false))
                .build();
    }
}*/