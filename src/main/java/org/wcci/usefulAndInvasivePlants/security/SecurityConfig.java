package org.wcci.usefulAndInvasivePlants.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
    public SecurityConfig(@Autowired SecurityUserDetailsService userDetailsService,
            @Autowired PasswordEncoder passwordEncoder) {
        this.userDetailsService = userDetailsService;
        this.passwordEncoder = passwordEncoder;
    }

    private final SecurityUserDetailsService userDetailsService;
    private final PasswordEncoder passwordEncoder;

    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        final DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder);
        return provider;
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeHttpRequests(
                        (authoritzationManager) -> authoritzationManager
                                //.requestMatchers(HttpMethod.POST, "api/register").permitAll()
                                //.requestMatchers(HttpMethod.GET, "api/double/*").permitAll()
                                //.requestMatchers("api/users").hasAuthority("USER")
                                .anyRequest().permitAll())
                                //.requestMatchers("api/User").authenticated()
                                //.requestMatchers("api/users").hasAuthority("ADMIN"))
                .csrf((csrf) -> csrf.disable())
                .cors((cors) -> cors.disable())
                .formLogin((formLoginConfigurer) -> formLoginConfigurer.permitAll())
                .rememberMe((rememberMeConfigurer) -> rememberMeConfigurer.alwaysRemember(false))
                .build();
    }
}