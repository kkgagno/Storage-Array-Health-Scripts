$From = "noreply@atos.net"
$To = "keith.gagnon@atos.net"


$Subject = "Here's the Email Subject"
$Body = "This is what I want to say"
$SMTPServer = "10.67.12.46"
$SMTPPort = "25"
Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort –DeliveryNotificationOption OnSuccess