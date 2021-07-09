
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "sarin.c.jacob@gmail.com"
$Password = "ezvutpnkfxhgmteh"
$ip = get-content d:\dev\ip\ext_ip.txt
$ipold= get-content d:\dev\ip\ip_old.txt

$to = "sarin.c.jacob2001@gmail.com"
$subject = "New IP Address Detected"
$body = "Your IP Address changed from '$ipold' to '$ip'"
$attachment = "D:\dev\ip\ext_ip.txt"



$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)

$message.from = IP-Mailer <$username>
$message.attachments.add($attachment)

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
if (($ip -ne $ipold) -And ($ip -ne $null)) {
    Set-Content d:\dev\ip\ip_old.txt $ip
    $smtp.send($message)
}
