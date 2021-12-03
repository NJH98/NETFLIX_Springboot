package com.it.springboot.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration 
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	CustomAuthenticationFailureHandler authFH;
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
        		.antMatchers("/").permitAll()
                .antMatchers("/css/**", "/js/**", "/img/**").permitAll()
                .antMatchers("/security/**").permitAll()
                .antMatchers("/memberjoinForm").permitAll()
                .antMatchers("/guest/**").permitAll()
                .antMatchers("/member/**").hasAnyRole("USER", "ADMIN")
                .antMatchers("/admin/**").hasRole("2");
                //.anyRequest().authenticated();
                // .anyRequest().permitAll();
 
        http.formLogin()
                .loginPage("/loginForm") 
                .loginProcessingUrl("/aaa")
                .failureHandler(authFH)
                .usernameParameter("j_useremail")
                .passwordParameter("j_password")
                .defaultSuccessUrl("/member/welcome")
                .permitAll();
 
        http.logout()
                .permitAll();
        
        http
                .csrf().disable()
        	.cors().disable();
        
    }
    
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
      return new BCryptPasswordEncoder();
    }
    
//    @Override

//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

//    System.out.println(passwordEncoder().encode("rmsepdy3"));
//    }
    
}



