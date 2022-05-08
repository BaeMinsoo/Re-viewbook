<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/signlogin/signupuser_final.css">
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
	<div class="signup_body3">
		<nav class="sidemenu">
			<ul class="sidemenu_signup3">
				<li><a class="sidemenu_item sidemenu_topmenu">������ ȸ������</a></li>
				<li><a class="sidemenu_item">�������</a></li>
				<li><a class="sidemenu_item">���� �Է�</a></li>
				<li><a class="sidemenu_item signupuser_final">���� �Ϸ�</a></li>
			</ul>
		</nav>
		<div class="signupuser_final_content">
			<div class="signupuser_final_left">
				<p class="fontimportant">RVB�� �����ϴ�</p>
				<p class="fontimportant">�����ڰ� �ǽ� ��</p>
				<p class="fontimportant">ȯ���ؿ� !</p>
			</div>
			<div class="signupuser_final_right">
				<a class="signupuser_final_link final_link_login" href="<%=request.getContextPath() %>/adlogin">
					<p class="fontevent">�α���</p>
				</a> <a class="signupuser_final_link" href="<%=request.getContextPath() %>/admain">
					<p class="fontimportant2">���������� ></p>
				</a> <a class="signupuser_final_link" href="<%=request.getContextPath() %>/userlist">
					<p class="fontimportant2">ȸ������ ></p>
				</a> <a class="signupuser_final_link" href="<%=request.getContextPath() %>/adnotice">
					<p class="fontimportant2">�������� ></p>
				</a> 
			</div>
		</div>
	</div>
	<%@ include file="../../../view/template_footer.jsp"%>
</body>
</html>