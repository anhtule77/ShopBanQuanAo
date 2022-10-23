package com.devpro.shop14.entities;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "tbl_users")
public class User extends BaseEntity implements UserDetails{
	
	@Column(name="username", length = 45,nullable = false)
	private String username;
	@Column(name="password", length = 100,nullable = false)
	private String password;
	@Column(name="email", length = 45,nullable = false)
	private String email;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "tbl_users_roles", 
				   joinColumns = @JoinColumn(name= "user_id"), //khóa phụ cho khóa chính bảng role
				   inverseJoinColumns = @JoinColumn(name = "role_id"))// khóa phụ cho khóa chính ở bảng user
	private Set<Role> roles = new HashSet<Role>();
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "user")
	private Set<Saleorder>saleorder = new HashSet<Saleorder>();
	
	public Set<Saleorder> getSaleorder() {
		return saleorder;
	}

	public void setSaleorder(Set<Saleorder> saleorder) {
		this.saleorder = saleorder;
	}

	public void addRoles(Role role) {
		role.getUsers().add(this);
		roles.add(role);
	}
	
	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return roles;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
}
