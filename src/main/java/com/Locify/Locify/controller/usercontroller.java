package com.Locify.Locify.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.sql.rowset.serial.SerialBlob;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Locify.Locify.Model.user;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class usercontroller {
	@Autowired
	SessionFactory sf;
	
  
	
@RequestMapping("page")	
public String name() {
	return "mainpage";
}

@RequestMapping("register")	
public String name1() {
	return "register";
}
//@RequestMapping("create")
//public String name(user u) {
//	Session s=sf.openSession();
//	Transaction t= s.beginTransaction();
//	s.save(u);
//	t.commit();
//	return "mainpage";
//}

@PostMapping("create")
public String saveProduct(@RequestParam("image") MultipartFile image,
                          @RequestParam("username") String username,
                          @RequestParam("firstname") String firstname,
                          @RequestParam("lastname") String lastname,
                          @RequestParam("email") String email,
                          @RequestParam("password") String password) {
    try {
        byte[] imageBytes = image.getBytes();
        user newUser = new user(username, firstname, lastname, email, password, imageBytes);

        // Open Hibernate session and transaction
        try (Session session = sf.openSession()) {
            Transaction transaction = session.beginTransaction();

            // Save the user data to the database
            session.save(newUser);

            // Commit the transaction
            transaction.commit();
        }

        return "mainpage";
    } catch (IOException e) {
        e.printStackTrace();
        // Log the exception and handle it accordingly (e.g., return an error page)
        return "error";
    } catch (Exception e) {
        e.printStackTrace();
        // Log the exception and handle it accordingly (e.g., return an error page)
        return "error";
    }
}

    
@RequestMapping("login")
public String name1(String username, String password) {
  
    Session s = sf.openSession();
    Transaction t = s.beginTransaction();
    user u = s.get(user.class, username);
    if (u != null && u.getPassword().equals(password)) {
    	
        return "mainpage";
    }

    
    return "done";
}
@GetMapping("Forgetpass")
public String showForgotPasswordForm() {
    return "Forgetpass";
}
@RequestMapping("checkemail")
public String checkemail(String username) {
	    Session s = sf.openSession();
	    Transaction t = s.beginTransaction();
	    user u = s.get(user.class, username);
	    if (u != null ) {
	        return "resetpass";
	    }
    return "done";
}


@RequestMapping("savepassword")
public String resetpass(String username,String password) {
	 Session s = sf.openSession();
	    Transaction t = s.beginTransaction();
	    user u = s.get(user.class, username);
	    u.setPassword(password);
	    s.update(u);
	    t.commit();
    return "mainpage";
}



















//private String generateToken() {
//    return UUID.randomUUID().toString();
//}
//
//    @PostMapping("forgot_password")
//    public String sendEmail(@RequestParam String email, Model model) {
//
//        Session s = sf.openSession();
//        Transaction t = s.beginTransaction();
//        user u = s.get(user.class, email); // Retrieve user details directly from repository
//
//        if (u != null) {
//            SimpleMailMessage message = new SimpleMailMessage();
//            message.setFrom("linazambare123@gmail.com"); // Replace with your email address
//            message.setTo(u.getEmail());
//            message.setSubject("Your Email Subject");
//            message.setText("Your email content here");
//
//            try {
//                javaMailSender.send(message);
//                model.addAttribute("success", "Email sent successfully!");
//            } catch (MailException e) {
//                model.addAttribute("error", "Error sending email: " + e.getMessage());
//            }
//        } else {
//            model.addAttribute("error", "User not found with that email");
//        }
//
//        return "mainpage"; // Name of your result view
//    }


//@PostMapping("forgot_password")
//public String forgotPassword(@RequestParam("email") String email, HttpServletRequest request) {
//    if (email == null || email.isEmpty()) {
//        // Handle the case where 'email' parameter is not present
//        return "redirect:/forgetpass?error=email";
//    }
//
//    Session session = sf.openSession();
//    Transaction transaction = session.beginTransaction();
//    user user = (user) session.createQuery("FROM user WHERE email = :email")
//            .setParameter("email", email)
//            .uniqueResult();
//    transaction.commit();
//    session.close();
//
//    if (user != null) {
//        // Generate and set a reset password token (you may use a library for this)
//        String resetPasswordToken = generateToken(); // Implement your token generation logic
//        user.setResetPasswordToken(resetPasswordToken);
//
//        // Save the user with the reset password token
//        session = sf.openSession();
//        transaction = session.beginTransaction();
//        session.update(user);
//        transaction.commit();
//        session.close();
//
//        // Send email with the reset link
//        sendResetPasswordEmail(user.getEmail(), resetPasswordToken);
//    }
//
//    // Redirect to a success or failure page
//    return "redirect:/page"; // Redirect to the login page
//}

// Method to send a reset password email
//private void sendResetPasswordEmail(String to, String resetToken) {
//    SimpleMailMessage message = new SimpleMailMessage();
//    message.setTo(to);
//    message.setSubject("Password Reset Request");
//    message.setText("Click the link below to reset your password:\n"
//            + "http://yourwebsite.com/reset-password?token=" + resetToken);
//
//    javaMailSender.send(message);
//}
}
