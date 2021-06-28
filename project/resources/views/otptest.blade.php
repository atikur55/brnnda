
<html>
<head>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
<h1>Hi</h1>
<script>
// const settings = {
// 	"async": true,
// 	"crossDomain": true,
// 	"url": "https://d7sms.p.rapidapi.com/secure/send",
// 	"method": "POST",
// 	"headers": {
// 		"content-type": "application/json",
// 		"authorization": "Basic YWJvbzM3NjI6bWVOd2RPb28=",
// 		"x-rapidapi-key": "566e7884damshfccbfa835d12671p191435jsn17c0aebbe886",
// 		"x-rapidapi-host": "d7sms.p.rapidapi.com"
// 	},
// 	"processData": false,
// 	"data": "{\r
//     \"coding\": \"8\",\r
//     \"from\": \"SMSInfo\",\r
//     \"hex-content\": \"00480065006c006c006f\",\r
//     \"to\": 971562316353\r
// }"
// };

// $.ajax(settings).done(function (response) {
// 	console.log(response);
// });

var form = new FormData();
form.append("mobile", "+8801515691480");
form.append("sender_id", "SMSINFO");
form.append("message", "Your otp code is {code}");
form.append("expiry", "900");

var settings = {
  "url": "https://d7networks.com/api/verifier/send",
  "method": "POST",
  "timeout": 0,
  "headers": {
    "Authorization": "Token 35cddbe978c7f53802328a2f8fa68bc5c2c03abb"
  },
  "processData": false,
  "mimeType": "multipart/form-data",
  "contentType": false,
  "data": form
};

$.ajax(settings).done(function (response) {
  console.log(response);
  alert('sent');
});

</script>
</body>
</html>
