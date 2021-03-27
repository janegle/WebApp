import smtplib

gmail_user = "jlregsystem"
gmail_password = "apple539"

sent_from = gmail_user
to = ['lethugiang1606@gmail.com']
subject = 'Course overload notification'
body = 'Your registration is pending because you have exceeded the 3-course limit. We will let you ' \
       'know of the final outcome of your registration pending approval from your department chair. '
# body.format(course_id)

email_text = """\
From: %s
To: %s
Subject: %s
%s
""" % (sent_from, ", ".join(to), subject, body)


def send_overload_email():
    try:
        server_ssl = smtplib.SMTP_SSL('smtp.gmail.com', 465)
        server_ssl.ehlo()
        server_ssl.login(gmail_user, gmail_password)
        server_ssl.sendmail(sent_from, to, email_text)

    except Exception as err:
        print(err)


if __name__ == "__main__":
    send_overload_email()