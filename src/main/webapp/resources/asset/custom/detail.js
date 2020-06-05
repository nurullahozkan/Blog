$(document).ready(function() {

	getNote();

});

function getNote() {

	$("#note_title").attr("disabled", true);
	$("#note_detail").attr("disabled", true);
	$("#updateBtn").html("Güncelle");

	$.ajax({
		type : "POST",
		url : './../getNote',
		contentType : 'application/json; charset=UTF-8',
		data : $("#id").val() + '',
		success : function(data) {
			$("#note_title").val(data.title);
			$("#note_detail").val(data.content);
		},
		error : function(data) {
			alert(data);
		}
	});

}

var updates = false;
function update() {
	if (!updates) {
		$("#note_title").attr("disabled", false);
		$("#note_detail").attr("disabled", false);
		$("#updateBtn").html("Kaydet");

		updates = true;
	} else {
		updateNote();
		updates = false;
	}

}

function updateNote() {
	var param = {
		id : $("#id").val(),
		title : $('#note_title').val(),
		content : $('#note_detail').val()
	}

	var ser_data = JSON.stringify(param);

	$.ajax({
		type : "POST",
		contentType : 'application/json; charset=UTF-8',
		url : './../updateNote',
		data : ser_data,
		success : function(data) {
			alert(data);
			getNote();
			window.history.back(); // bir önceki sayfaya dönsün sildikten sonra
		},
		error : function(data) {
			alert(data);
		}
	});
}

function deleteNote() {
	var param = {
		id : $("#id").val()
	}

	var ser_data = JSON.stringify(param);

	$.ajax({
		type : "POST",
		contentType : 'application/json; charset=UTF-8',
		url : './../deleteNote',
		data : ser_data,
		success : function(data) {
			alert(data);
			window.history.back(); // bir önceki sayfaya dönsün sildikten sonra
		},
		error : function(data) {
			alert(data);
		}
	});
}