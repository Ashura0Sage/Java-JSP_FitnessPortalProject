/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class MailEx {
    String sender_email = "ajcalesthetics@gmail.com";
   String sender_password = "projectcal",
        sender_host = "smtp.gmail.com",
        sender_port = "465";
      
        public boolean status = false;
        public boolean mail(String to_email,String subject,String message){
        Properties props = new Properties();
        props.put("mail.smtp.user", sender_email);
        props.put("mail.smtp.host", sender_host);
        props.put("mail.smtp.port", sender_port);
        props.put("mail.smtp.starttls.enable","True");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port",sender_port);
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        try{
            Authenticator auth = new SMTPAuthenticator();
            Session session = Session.getInstance(props, auth);
            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(sender_email));
            msg.addRecipient(Message.RecipientType.TO,new
            InternetAddress(to_email));
            Transport.send(msg);
            System.out.println("Message sent successfully!!!!");
            status=true;
        }
        catch (Exception mex){
            mex.printStackTrace();
        }
        return status;
    }
}
class SMTPAuthenticator extends javax.mail.Authenticator
{
    String sender_email = "ajcalesthetics@gmail.com",
    sender_password = "projectcal",
    sender_host = "smtp.gmail.com",
    sender_port = "465";
  
    
    public PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(sender_email, sender_password);
    }
}

    
       

