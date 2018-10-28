/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class mail {
    public static void main(String[] args)throws MessagingException {
        String sender_email = "ajcalesthetics@gmail.com",
        sender_password = "projectcal",
        sender_host = "smtp.gmail.com",
        sender_port = "465",
        receiver_id = "ajcalesthetics@gmail.com",
        subject_to_be_given = "Java Mail",
        message_mi = "hieeee";
        Properties props = new Properties();
        props.put("mail.smtp.user", sender_email);
        props.put("mail.smtp.host", sender_host);
        props.put("mail.smtp.port", sender_port);
        props.put("mail.smtp.starttls.enable","True");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port",sender_port);
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        try{
            Authenticator auth = new SMTPAuthenticator1();
            Session session = Session.getInstance(props, auth);
            MimeMessage msg = new MimeMessage(session);
            msg.setText(message_mi);
            msg.setSubject(subject_to_be_given);
            msg.setFrom(new InternetAddress(sender_email));
            msg.addRecipient(Message.RecipientType.TO,new
            InternetAddress(receiver_id));
            Transport.send(msg);
            System.out.println("Message sent successfully!!!!");
        }
        catch (Exception mex){
            mex.printStackTrace();
        }
    }
}
class SMTPAuthenticator1 extends javax.mail.Authenticator
{
    String sender_email = "ajcalesthetics@gmail.com",
    sender_password = "projectcal",
    sender_host = "smtp.gmail.com",
    sender_port = "465",
    receiver_id = "ajcalesthetics@gmail.com",
    subject_to_be_given = "java mail",
    message_mi = "hieeee";
    public PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(sender_email, sender_password);
    }

}
