package com.Locify.Locify.Model;

import javax.sql.rowset.serial.SerialBlob;



import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class user {
	@Id
private String username;
private String firstname;
private String lastname;
private String email;
private String password;
@Lob
@jakarta.persistence.Column(columnDefinition = "MEDIUMBLOB")
private byte[] image;
private String resetPasswordToken;


public user() {
	// TODO Auto-generated constructor stub
}
public user(String username, String firstname, String lastname, String email, String password,byte[] image) {
	super();
	this.username = username;
	this.firstname = firstname;
	this.lastname = lastname;
	this.email = email;
	this.password = password;
	this.image=image;
	//this.profileImage = profileImage;
}
//public SerialBlob getProfileImage() {
//    return profileImage;
//}
//
//public void setProfileImage(SerialBlob profileImage) {
//    this.profileImage = profileImage;
//}

@Override
public String toString() {
	return "user [username=" + username + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
			+ ", password=" + password + "]";
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public byte[] getImage() {
    return image;
}

public void setImage(byte[] image) {
    this.image = image;
}
public void setResetPasswordToken(String resetPasswordToken2) {
	// TODO Auto-generated method stub
	
}

}
