function sendRequest(url, data, method, callback) {
	$.ajax({
		url : url,
		type : method,
		data : data,
		contentType : 'application/json',
		success : callback,
		error : function(request, msg, error) {
			// handle failure
		}
	});
};

function sendGetRequest(url, callback) {
	sendRequest(url, "", 'GET', callback);
};

function sendPostRequest(url, data, callback) {
	sendRequest(url, data, 'POST', callback);
};

function sendPutRequest(url, data, callback) {
	sendRequest(url, data, 'PUT', callback);
};

function sendDeleteRequest(url, callback) {
	sendRequest(url, "", 'DELETE', callback);
};

// chu de
function addChuDe() {
	location.href='/thihuong/admin/add-chude';
}

function editChuDe(id) {
	location.href='/thihuong/admin/edit-chude?maChuDe=' + id;
};

function deleteChuDe(id) {
	var r = confirm("Bạn chắc chăn muốn xóa");
	if (r == true) {
		location.href='/thihuong/admin/delete-chude?maChuDe=' + id;
	}	
};