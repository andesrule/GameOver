$(document)
		.ready(
				function() {
					var countError1 = 0;
					var countError2 = 0;
					$('#submit')
							.click(
									function(e) {
										
										e.preventDefault();
										var user = $('#username').val();
										var pwd = $('#password').val();
										var userValid = /^[0-9a-zA-Z]+$/;

										
										
										if (!(user.match(userValid))
												&& countError1 < 1) {
											countError1 += 1;
											$("#username")
													.after(
															"<b><p id=UserError style='color: red;'>Username Invalido (non inserire caratteri speciali)</p></b> <br>");
										}
										
										if (user.match(userValid)) {
											$("#UserError").remove();
											$.ajax({
														url : 'UserLogServlet',
														type : 'Post',
														data : {
															user : user,
															pwd : pwd
														},
														success : function(
																result) {

															if (result == 'Ok') {
																$(location)
																		.attr(
																				'href',
																				'index.jsp');
															} else if (result == 'No'
																	&& countError2 < 1) {
																countError2 += 1;
																$("#password")
																		.after(
																				"<b><p id=erroreUtente style='color: red;'>Utente non trovato...Controlla username o password</p></b> <br>");
															}
														}

													});
										}
									});
				});