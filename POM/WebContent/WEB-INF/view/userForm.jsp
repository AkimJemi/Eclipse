<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<title>ȸ������ ȭ��</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
.clear {
	width: 100px;
	height: 50px
}

#div_1 {
	/* background-color: yellow; */
	width: 1000px;
	height: 90px;
	margin-top: 30px;
	margin: auto;
	position: relative;
}

#div_2 {
	/* background-color: gray; */
	width: 1000px;
	height: 30px;
	margin-bottom: 30px;
	margin: auto;
	display: flex;
}

#div_3 {
	/* background-color: green; */
	width: 1000px;
	height: 120px;
	margin: 30px 0;
	position: relative;
	margin: auto;
}

#div_4 {
	/* background-color: red; */
	width: 1000px;
	height: 90px;
	margin: 30px 0;
	position: relative;
	margin: auto;
}

.div_5 {
	/* background-color: blue; */
	width: 1000px;
	height: 30px;
	position: relative;
	margin: auto;
}

#add_div {
	/*     background-color: blue;  */
	width: 1000px;
	height: auto;
	position: relative;
	margin: auto;
}

#add_div>div {
	width: 1000px;
	height: 30px;
	position: relative;
	margin: auto;
}

.div_5_1 {
	/* 	background-color: blue; */
	width: 1000px;
	height: 30px;
	position: relative;
	margin: auto;
	text-align: right
}

#div_6 {
	/* 	background-color: blue; */
	width: 1000px;
	height: 30px;
	margin: 30px 0;
	position: relative;
	margin: auto;
	text-align: right
}

.div_in_r {
	width: 46%;
	position: absolute;
	left: 54%;
	display: flex;
}

.div_in_l {
	width: 45%;
	position: absolute;
	display: flex;
}

.div_in_l_l {
	width: 40%;
}

.input_title_long {
	width: 22%;
	height: 29px;
	font-size: 12px;
	background-color: #D5D5D5;
	border-bottom: 1px solid black;
	line-height: 29px;
}

.div_in_l_r {
	width: 60%;
}

.input_title {
	width: 100%;
	height: 29px;
	background-color: #D5D5D5;
	border-bottom: 1px solid black;
	font-size: 12px;
	line-height: 29px;
}

.short_input {
	width: 100%;
	height: 30px;
}

.very_short_input {
	width: 30%;
	height: 30px;
	line-height: 30px;
}

.eye_span {
	display: inline-block;
	height: 23px;
	width: 48px;
	background-color: #D5D5D5;
	border-bottom: 1px solid black;
	font-size: 12px;
	padding-top: 5px;
}

#wrap {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.button_style {
	background-color: #5D5D5D;
	color: #EAEAEA;
	border-radius: 2px;
	border: none;
	width: 80px;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
}

.add_button_style {
	background-color: #5D5D5D;
	color: #EAEAEA;
	border-radius: 2px;
	border: none;
	width: 80px;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
}

.face_file {
	height: 30px;
	width: 98%;
	padding-top: 2px;
}

.button_style:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
}

.add_button_style:hover {
	background-color: #8C8C8C;
	color: #EAEAEA;
}

.add_button_style:focus {
	background-color: #5D5D5D;
	color: #EAEAEA;
	border-radius: 2px;
	border: none;
	width: 80px;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
}

#file-upload-button {
	background-color: #5D5D5D;
	color: #EAEAEA;
	border-radius: 2px;
	border: none;
	width: 80px;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
}

input, select {
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 1px solid black;
	font-size: 12px;
}

input:focus {
	outline: none;
	background-color: #F6F6F6;
}

select:focus {
	outline: none;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						var max_fields = 5; //�ִ밳��
						var wr = 1;
						var i = 1;

						$("#create_license")
								.click(
										function() {
											if (i < max_fields) {
												wr++;
												i++;
												$("#add_div")
														.append(
																'<div class="div_5-'+wr+'">'
																		+ '<div class="div_in_l">'
																		+ '<div class="div_in_l_l">'
																		+ '	<div class="input_title">�ڰ���</div>'
																		+ '</div>'
																		+ '<div class="div_in_l_r">'
																		+ '<input class="short_input" type="text" name="license'+wr+'" maxlength="15">'
																		+ '</div>'
																		+ '</div>'
																		+ '<div class="div_in_r">'
																		+ '	<div class="div_in_l_l">'
																		+ '	<div class="input_title">�ڰ������</div>'
																		+ '</div>'
																		+ '	<div class="div_in_l_r">'
																		+ '	<input class="short_input" type="date" name="license_day'+wr+'"	maxlength="15">'
																		+ '</div>'
																		+ '</div>'
																		+ '</div>');
											}
										});
						$("#delete_license").click(function() {
							$('div').remove('.div_5-' + wr + '');
							wr--;
							i--;

						})
					});
</script>
</head>
<body>
	<%
	String img = (String) request.getAttribute("img");
	%>
	<div id="wrap">
		<br> <br> <b><font size="6" color="gray">������</font></b> <br>
		<br> <br>

		<form action="user.do" method="post" enctype="multipart/form-data"
			accept-charset="UTF-8">
			<div id="div_1">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">����</div>
						<div class="input_title">����ó</div>
						<div class="input_title">�ֹε�Ϲ�ȣ</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="name" maxlength="25">
						<input class="short_input" type="text" name="phone" maxlength="13">
						<input class="short_input" type="text" name="reg_num"
							maxlength="14">
					</div>
				</div>

				<div class="div_in_r">
					<div class="div_in_l_l">
						<div class="input_title">����÷��</div>
						<div class="input_title">�̸���</div>
					</div>
					<div class="div_in_l_r">
						<%
						if (img != null) {
						%>
						<img alt="����" style="width: 100px; height: 100px;"
							src="upload\<%=img%>">
						<%
						} else {
						%>
						<input class="face_file" type="file" id="input-file"
							name="filename" maxlength="10">
						<%
						}
						%>
						 <input
							class="short_input" type="text" name="email" maxlength="30">
					</div>
				</div>
			</div>

			<div id="div_2">
				<div class="input_title_long">�ּ�</div>
				<input class="short_input" type="text" name="addr" maxlength="100">
			</div>
			<div class="clear"></div>

			<div id="div_3">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">����</div>
						<div class="input_title">�÷�</div>
						<div class="input_title">ü��</div>
						<div class="input_title">��ȥ����</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="tall" maxlength="15">
						<div>
							<span class="eye_span">��</span><input class="very_short_input"
								type="text" name="eye_L" maxlength="3"> <span
								class="eye_span">��</span><input class="very_short_input"
								type="text" name="eye_R" maxlength="3">
						</div>
						<input class="short_input" type="text" name="marry" maxlength="15">
						<select class="short_input" name="email_2">
							<option>��ȥ</option>
							<option>��ȥ</option>
						</select>
					</div>
				</div>
				<div class="div_in_r">
					<div class="div_in_l_l">
						<div class="input_title">��������</div>
						<div class="input_title">����α���</div>
						<div class="input_title">����ε��</div>
						<div class="input_title">��ֵ����</div>
					</div>
					<div class="div_in_l_r">
						<select class="short_input" name="gender">
							<option>��</option>
							<option>��</option>
						</select> <select class="short_input" name="disabled">
							<option>��</option>
							<option>��</option>
						</select> <select class="short_input" name="disabled_grade">
							<option>-</option>
							<option>1��</option>
							<option>2��</option>
							<option>3��</option>
							<option>4��</option>
							<option>5��</option>
							<option>6��</option>
						</select> <input class="short_input" type="date" name="disabled_day"
							maxlength="15">
					</div>
				</div>
			</div>
			<div class="clear"></div>

			<div id="div_4">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">�б���</div>
						<div class="input_title">����</div>
						<div class="input_title">�����⵵</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="school_name"
							maxlength="15"> <input class="short_input" type="text"
							name="school_major" maxlength="15"> <input
							class="short_input" type="date" name="school_out" maxlength="15">
					</div>
				</div>
			</div>
			<div class="clear"></div>

			<div class="div_5">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">�ڰ���</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="license1"
							maxlength="15">
					</div>
				</div>
				<div class="div_in_r">
					<div class="div_in_l_l">
						<div class="input_title">�ڰ������</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="date" name="license_day1"
							maxlength="15">
					</div>
				</div>
			</div>
			<div id="add_div"></div>
			<div class="div_5_1">
				<input class="add_button_style" type='button' id="create_license"
					value="�߰�" /> <input class="add_button_style" type='button'
					id="delete_license" value="����" />
			</div>
			<div class="clear"></div>

			<div id="div_6">
				<input class="button_style" type="submit" value="������" />
				<button class="button_style" type="button">�ڷ�</button>
			</div>

		</form>
	</div>
</body>
</html>