package com.customer.onboarding.mappers;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component("sendEmail")
@ConfigurationProperties(prefix = "email")
@Data
public class SendEmail {

	private String host;

	private String hostType;

	private String factoryPort;

	private String factoryPortType;

	private String classes;
	private String classType;
	private String auth;
	private String port;
	private String portType;
	private String from;
	private String password;


	public boolean sendEmailForgotPassword(String toEmailId, String newPassword, String messageInData) {

		String to = toEmailId;

		// Get the session object
		Properties props = new Properties();

		props.put(host, hostType);
		props.put(factoryPort, factoryPortType);
		props.put(classes, classType);
		props.put(auth, "true");
		props.put(port, portType);

		/*
		 * props.put("mail.smtp.host", "smtp.gmail.com");
		 * props.put("mail.smtp.socketFactory.port", "465");
		 * props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		 * props.put("mail.smtp.auth", "true"); props.put("mail.smtp.port", "465");
		 */

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		// compose message
		try {
			MimeMessage message = new MimeMessage(session);

			message.setFrom(new InternetAddress(from, "NoReply-DariAstro"));
			message.setReplyTo(InternetAddress.parse(from, false));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("HSBC Password Alert");
			message.setText(messageInData + newPassword);

			Transport.send(message);
			return true;

		} catch (MessagingException | UnsupportedEncodingException e) {
			return false;
		}

	}

}
