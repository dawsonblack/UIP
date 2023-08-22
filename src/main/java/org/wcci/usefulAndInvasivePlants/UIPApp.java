package org.wcci.usefulAndInvasivePlants;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@SpringBootApplication
public class UIPApp {
    public static void main(String[] args) {
        SpringApplication.run(UIPApp.class, args);
    }

    @Bean
    public UserDetailsService userDetailsService() {
        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(
                User.withDefaultPasswordEncoder().username("marshall").password("gene").roles("USER").build());
        manager.createUser(
                User.withDefaultPasswordEncoder().username("magic").password("abracadabra").roles("USER").build());
        return manager;
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeHttpRequests(
                        (authorizationManager) -> authorizationManager
                                .requestMatchers("/api/users").authenticated()
                                .requestMatchers("/api/users/*").authenticated()
                                .requestMatchers("/User").authenticated()
                                .anyRequest().permitAll()
                )
                .formLogin((formLoginConfigurer) ->
                    formLoginConfigurer
                        .loginPage("/Login")
                        .loginProcessingUrl("/authenticate")
                        .permitAll()
                )
                .rememberMe((rememberMeConfigurer) -> rememberMeConfigurer.alwaysRemember(false))
                .build();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
            .withUser("username")
            .password("{noop}password") // Use {noop} to indicate no password encoder for simplicity
            .roles("USER");
    }
}