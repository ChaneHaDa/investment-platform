package com.chan.stock_portfolio_backtest_api.user.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {
	private final JavaMailSender mailSender;
	private final String fromEmail;

	public EmailService(JavaMailSender mailSender, @Value("${spring.mail.username}") String fromEmail) {
		this.mailSender = mailSender;
		this.fromEmail = fromEmail;
	}

	@Async("mailExecutor")
	public void sendVerificationEmail(String toEmail, String token) {
		String subject = "이메일 인증 - 인증 토큰 안내";

		// HTML 형식의 본문 작성
		String body = "<html>" +
			"<body style=\"font-family: Arial, sans-serif; margin:0; padding:0; background-color:#f4f4f4;\">" +
			"  <div style=\"max-width:600px; margin:30px auto; background:#fff; padding:20px; border:1px solid #ddd;\">"
			+
			"    <h2 style=\"color:#2e6c80;\">이메일 인증 요청</h2>" +
			"    <p>안녕하세요,</p>" +
			"    <p>아래의 인증 토큰을 확인하고, 애플리케이션에 입력하여 이메일 인증을 완료해 주시기 바랍니다.</p>" +
			"    <div style=\"background-color:#f2f2f2; padding:10px; border:1px solid #ccc; text-align:center; margin:20px 0;\">"
			+
			"      <span style=\"font-size:18px; font-weight:bold;\">" + token + "</span>" +
			"    </div>" +
			"    <p>감사합니다.<br/><strong>Stock helper</strong></p>" +
			"  </div>" +
			"</body>" +
			"</html>";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setTo(toEmail);
			helper.setSubject(subject);
			helper.setText(body, true);
			helper.setFrom(fromEmail);

			mailSender.send(message);
		} catch (MessagingException e) {
			throw new RuntimeException("Failed to send verification email", e);
		}
	}
}