import  pyotp


def otp_test(h):
	totp = pyotp.TOTP(h)
	print("Current OTP:", totp.now())
	return	totp.now()
	