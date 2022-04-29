<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/signlogin/signupuser_input.css">
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
<title>RVB Admin</title>
</head>
<body>
<%@ include file="../../../view/template_header.jsp"%>
	<div class="signup_body2">
		<nav class="sidemenu">
			<ul class="sidemenu_signup2">
				<li><a class="sidemenu_item sidemenu_topmenu">ȸ������</a></li>
				<li><a class="sidemenu_item">�������</a></li>
				<li><a class="sidemenu_item signupuser_second">���� �Է�</a></li>
				<li><a class="sidemenu_item">���� �Ϸ�</a></li>
			</ul>
		</nav>
		<div class="signupuser_second_content">
			<form name="frmRegister" method="post"
				action="<%=request.getContextPath()%>/adsignup_input.lo">
				<table class="singupuser_input_info">
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">���̵�</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adId" class="signup_infoinput" id="usId"
							required="required" placeholder="������, ���ڸ� ����� 6���̻� 20������"></td>
						<td class="signupuser_input_btn">
							<button type="submit" id="idCheck" class="signupinfo_idcheck">
								<p class="fontnothing signup_infobtn ">�ߺ�Ȯ��</p>
							</button>
						</td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">��й�ȣ</p>
						</td>
						<td class="signupuser_input_input"><input type="password"
							name="usPassword" class="signup_infoinput" id="adPassword"
							required="required" placeholder="������, ����, Ư�����ڰ� ��� 1���̻�, 8~16����"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">�г���</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="usNickname" class="signup_infoinput" id="adNickname"
							required="required"></td>
						<td class="signupuser_input_btn">
							<button type="submit" id="idCheck" class="signupinfo_idcheck">
								<p class="fontnothing signup_infobtn ">�ߺ�Ȯ��</p>
							</button>
						</td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">����</p>
						</td>
						<td class="signupuser_input_input"><input type="text"
							name="adGender" class="signup_infoinput" id="usGender"
							required="required" placeholder="'F' �Ǵ� 'M' �ѱ��ڸ� �Է�"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">��ȭ��ȣ</p>
						</td>
						<td class="signupuser_input_input"><input type="tel"
							name="adPhone" class="signup_infoinput" id="usPhone"
							required="required" placeholder="'000-0000-0000' �������� �Է�"></td>
					</tr>
					<tr>
						<td class="signupuser_input_text">
							<p class="fontnormal signup_infoname">�̸���</p>
						</td>
						<td class="signupuser_input_input"><input type="email"
							name="adEmail" class="signup_infoinput" id="usEmail"
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
						<td class="signupuser_input_input"><input type="email"
							name="adEmail_chk" class="signup_infoinput" id="usEmail"
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
							name="usCompany" class="signup_infoinput" id="usAddress"
							required="required"></td>
					</tr>
				</table>
				<div class="sigupsuer_second_signupbtn">
					<button type="submit" id="btn_enroll">���ѽ�û</button>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../../../view/template_footer.jsp"%>
</body>
</html>