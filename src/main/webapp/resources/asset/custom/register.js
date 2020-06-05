function addUser() {
	var param = {
		username : $('#username').val(),
		name : $('#name').val(),
		surname : $('#surname').val(),
		email : $('#email').val(),
		pass : $('#pass').val(),
		pass2 : $('#pass2').val()
	}

	var ser_data = JSON.stringify(param);

	$.ajax({
		type : "POST",
		contentType : 'application/json; charset=UTF-8',
		url : 'addUser',
		data : ser_data,
		success : function(data) {
			if (data == "1") {
				alert("Parolalar Eşleşmiyor") // pass lar eşleşmiyorsa bunu  yazacak
			} 
			else if (data == "OK") {
				alert("Başarıyla Üye Olundu. Üyeliğinizi aktif Etmek İçin Mail Adresinizi Kontrol Ediniz!!"); // eşleşiyorsa bunu
				$(location).attr('href', 'login');
			} 
			else if (data == "ERROR") {
				alert("Bir Hata Oluştu"); // eşleşiyorsa bunu
			}

		},
		error : function(data) {
			alert("Kullanıcı Adı Ve Email Uniuqe Olmalıdır!!");
		}
	});

}