component accessors="true"{

	/**
	 * I send an email
	 */
	void function send( required string subject, required string to, required string from, required string body, string type="html", numeric port=587 ){
		/*
		var Email = new mail();
		Email.setServer("smtp.gmail.com");
		Email.setPort(arguments.port);
		Email.setUsername( "webmaster@homeplacefurnace.com" );
		Email.setPassword( "CMtkt93snvip" );
		Email.setUseTLS(true);
		Email.setSubject( arguments.subject );
		Email.setTo( arguments.to );
		Email.setFrom( arguments.from );
		Email.setBody( arguments.body );
		Email.setType( arguments.type );
		Email.send();
*/
savecontent variable="mailBody" {
  writeOutput(arguments.body );
};

// Create and populate the mail object
mailService = new mail(
  to = arguments.from,
  from = arguments.to,
  subject = arguments.subject,
	type = arguments.type, 
  body = mailBody
);

// Send
mailService.send();

	}

}