<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/signlogin/signupuser_second.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/all/header.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/all/reset.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/all/all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/all/footer.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>RVB Admin</title>
</head>
<body>
	<%@ include file="../../../view/template_header.jsp"%>
	<div class="signup_body2">
		<nav class="sidemenu">
			<ul class="sidemenu_signup2">
				<li><a class="sidemenu_item sidemenu_topmenu">������ ȸ������</a></li>
				<li><a class="sidemenu_item">�������</a></li>
				<li><a class="sidemenu_item signupuser_second">���� �Է�</a></li>
				<li><a class="sidemenu_item">���� �Ϸ�</a></li>
			</ul>
		</nav>
		<div class="signupuser_second_content">
			<form name="frmRegisterad" method="post"
				action="<%=request.getContextPath()%>/adsignup_input.lo">
				<table class="singupuser_input_info">
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">���̵�</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adId" class="signup_infoinput" id="adId"
							required="required" placeholder="������, ���ڸ� ����� 6���̻� 20������"></td>
						<td class="signupuser_input_btn">
							<button type="submit" id="idCheck" onclick="winopenad()"
								class="signupinfo_idcheck">
								<p class="fontnothing signup_infobtn ">�ߺ�Ȯ��</p>
							</button>
						</td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">��й�ȣ</p>
						</td>
						<td class="signupuser_input_input"><input type="password"
							name="adPassword" class="signup_infoinput" id="adPassword"
							required="required" placeholder="������, ����, Ư�����ڰ� ��� 1���̻�, 8~16����"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">�г���</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adNickname" class="signup_infoinput" id="adNickname"
							required="required"></td>
						<td class="signupuser_input_btn">
							<button type="submit" id="idCheck" onclick="winopenad2()"
								class="signupinfo_idcheck">
								<p class="fontnothing signup_infobtn ">�ߺ�Ȯ��</p>
							</button>
						</td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">����</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adGender" class="signup_infoinput" id="adGender"
							required="required" placeholder="'F' �Ǵ� 'M' �ѱ��ڸ� �Է�"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">��ȭ��ȣ</p>
						</td>
						<td class="signupuser_input_input"><input type="tel"
							name="adPhone" class="signup_infoinput" id="adPhone"
							required="required" placeholder="'000-0000-0000' �������� �Է�"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">�̸���</p>
						</td>
						<td class="signupuser_input_input"><input type="email"
							name="adEmail" class="signup_infoinput" id="adEmail"
							required="required"></td>
						<td class="signupuser_input_btn"><button type="submit"
								id="btn_email" class="signupinfo_emailcheck">
								<p class="fontnothing signup_infobtn">�̸��� �����ϱ�</p>
							</button></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">������ȣ</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adEmail_chk" class="signup_infoinput" id="adEmail"
							required="required"></td>
						<td class="signupuser_input_btn"><button type="submit"
								id="btn_email_chk" class="signupinfo_emailcheck">
								<p class="fontnothing signup_infobtn">����Ȯ��</p>
							</button></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">ȸ��(�Ҽ�)</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adCompany" class="signup_infoinput" id="adCompany"
							required="required"></td>
					</tr>
				</table>
				<div class="sigupsuer_second_signupbtn">
					<button type="submit" id="adbtn_enroll">���ѽ�û</button>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../../../view/template_footer.jsp"%>
	<script>
		$("#adbtn_enroll")
				.click(
						function() {
							console.log("a");
							var usId = $("#adId").val().trim();
							var regExpId = /[A-Za-z0-9]{6,20}$/;
							//var regExpId = /^[A-Za-z][A-Za-z0-9!_]{2,4}$/;   // ù���ڴ� ������, �����ڼ���!_���� 3-5�� �Է°���
							if (!regExpId.test(mId)) {
								alert("���̵� �Է¶����� ������, ���ڸ� ����� 6���̻� 20������");
								$("#adId").focus();
								return false;
							}
							//��й�ȣ Ȯ�� �Է�ĭ ���� 
							/*var password = $("#usPassword").val().trim();
							if(!password || password != $("#usPassword_re").val().trim()){
								alert("�н����� �Է¶��� Ȯ�ζ��� ���� �ʽ��ϴ�.");
								$("#usPassword").val("");
								$("#usPassword_re").val("");
								$("#usPassword").focus();
								return false;
							}*/
							var regExpPassword = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{8,16}$/; // ������, ����, Ư�����ڰ� ��� 1���̻�, 8~16����
							if (!regExpPassword.test(password)) {
								alert("�н����� �Է¶����� ������, ����, Ư�����ڰ� ��� 1���̻�, 8~16����");
								$("#adPassword").focus();
								return false;
							}

							var phone = $("#adhone").val().trim();
							var regExpPhone = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/; // ����3-����3,4-����4
							if (!regExpPhone.test(phone)) {
								alert("��ȭ��ȣ �Է¶����� 000-0000-0000 ����");
								$("#adPhone").focus();
								return false;
							}

							var frm = document.frmRegisterad;
							frm.action = "adsignup_input.lo";
							frm.method = "post";
							frm.submit();
						});

		function winopenad() {
			window.open("adsignup_checkid?adId="
					+ document.frmRegisterad.adId.value, "",
					"width=500, height=150");
		}
		function winopenad2() {
			window.open("adsignup_checknick?adNickname="
					+ document.frmRegisterad.adNickname.value, "",
					"width=500, height=150");
		}
	</script>
</body>
</html>