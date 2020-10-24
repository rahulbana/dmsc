const config = {
	baseurl: 'http://localhost:90/dboard/',
	dataformat: 'json'
}
async function dataGenerator(url){
	var result = await getDataFormUrl(`${config.baseurl}${url}`, config.dataformat)
	result = new google.visualization.DataTable(result);
	return result
}

async function getDataFormUrl(apiurl, dataformat){
	var jsonData = await $.ajax({
					      	url: apiurl,
					      	dataType: dataformat,
					      	async:false
					      }).responseText;
	return jsonData
}