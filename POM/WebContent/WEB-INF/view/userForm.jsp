<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>회원가입 화면</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
.clear {
	width: 100px;
	height: 50px
}

#div_1 {
	width: 1000px;
	height: 90px;
	margin-top: 30px;
	margin: auto;
	position: relative;
}

#div_2 {
	width: 1000px;
	height: 30px;
	margin-bottom: 30px;
	margin: auto;
	display: flex;
}

#div_3 {
	width: 1000px;
	height: 120px;
	margin: 30px 0;
	position: relative;
	margin: auto;
}

#div_4 {
	width: 1000px;
	height: 90px;
	margin: 30px 0;
	position: relative;
	margin: auto;
}

.div_5 {
	width: 1000px;
	height: 30px;
	position: relative;
	margin: auto;
}

#add_div {
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
	width: 1000px;
	height: 30px;
	position: relative;
	margin: auto;
	text-align: right
}

#div_6 {
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

.short_input2 {
	width: 45%;
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
						var max_fields = 5; //최대개수
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
																		+ '<input type="hidden" name="lic_no'+wr+'" value="'+wr+'" />'
																		+ '<div class="div_in_l">'
																		+ '<div class="div_in_l_l">'
																		+ '	<div class="input_title">자격증</div>'
																		+ '</div>'
																		+ '<div class="div_in_l_r">'
																		+ '<input class="short_input" type="text" name="license'+wr+'" maxlength="15">'
																		+ '</div>'
																		+ '</div>'
																		+ '<div class="div_in_r">'
																		+ '	<div class="div_in_l_l">'
																		+ '	<div class="input_title">자격취득일</div>'
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

	function disabledCheck() {
		var a = Frm.disabled.value;
		if (a == 'N') {
			$("#disabled_grade").attr("disabled", true);
			$("#disabled_day").attr("disabled", true);
		} else {
			$("#disabled_grade").attr("disabled", false);
			$("#disabled_day").attr("disabled", false);
		}
	}

	function fn_check() {

		var name = Frm.name.value;
		if (name == '') {
			alert("성명을 입력해주세요");
			return;
		}
		var phone = Frm.phone.value;
		if (phone == '') {
			alert("연락처를 입력해주세요");
			return;
		}
		var reg_num = Frm.reg_num.value;
		if (reg_num == '') {
			alert("주민번호를 입력해주세요");
			return;
		}
		var addr = Frm.addr.value;
		if (addr == '') {
			alert("주소를 입력해주세요");
			return;
		}
		var email = Frm.email.value;
		if (email == '') {
			alert("이메일을 입력해주세요");
			return;
		}

		var tall = Frm.tall.value;
		if (tall == '') {
			alert("신장을 입력해주세요");
			return;
		}

		var eye_l = Frm.eye_l.value;
		if (eye_l == '') {
			alert("[좌] 시력을 입력해주세요");
			return;
		}
		var eye_r = Frm.eye_r.value;
		if (eye_r == '') {
			alert("[우] 시력을 입력해주세요");
			return;
		}
		var weight = Frm.weight.value;
		if (weight == '') {
			alert("체중을 입력해주세요");
			return;
		}
		var marry = Frm.marry.value;
		if (marry == '9') {
			alert("결혼여부를 선택해주세요");
			return;
		}

		var gender = Frm.gender.value;
		if (gender == '9') {
			alert("성별을 선택해주세요");
			return;
		}
		var disabled = Frm.disabled.value;
		if (disabled == '9') {
			alert("장애인 구분 선택해주세요");
			return;
		}
		if (disabled == 'Y') {
			var disabled_grade = Frm.disabled_grade.value;
			if (disabled_grade == '9') {
				alert("장애인 구분 [유]를 선택하신 경우 장애인 등급을 선택해주세요");
				return;
			}
			var disabled_day = Frm.disabled_day.value;
			if (disabled_day == '') {
				alert("장애인 구분 [유]를 선택하신 경우 장애인 등록일을 선택해주세요");
				return;
			}
		}
		var school_name = Frm.school_name.value;
		if (school_name == '') {
			alert("학교명을 입력해주세요");
			return;
		}
		var school_major = Frm.school_major.value;
		if (school_major == '') {
			alert("전공을 입력해주세요");
			return;
		}
		var school_out = Frm.school_out.value;
		if (school_out == '') {
			alert("졸업연도를 입력해주세요");
			return;
		}
		var filename = Frm.filename.value;
		if (filename == '') {
			alert("사진을 첨부해주세요");
			return;
		}

		if (Frm.lic_no1) {
			var lic_no1 = Frm.lic_no1.value;
			var license1 = Frm.license1.value;
			var license_day1 = Frm.license_day1.value;
		}
		if (Frm.lic_no2) {
			var lic_no2 = Frm.lic_no2.value;
			var license2 = Frm.license2.value;
			var license_day2 = Frm.license_day2.value;
		}
		if (Frm.lic_no3) {
			var lic_no3 = Frm.lic_no3.value;
			var license3 = Frm.license3.value;
			var license_day3 = Frm.license_day3.value;
		}
		if (Frm.lic_no4) {
			var lic_no4 = Frm.lic_no4.value;
			var license4 = Frm.license4.value;
			var license_day4 = Frm.license_day4.value;
		}
		if (Frm.lic_no5) {
			var lic_no5 = Frm.lic_no5.value;
			var license5 = Frm.license5.value;
			var license_day5 = Frm.license_day5.value;
		}
		if (!Frm.lic_no1) {
			if (!confirm("입력 완료하셨습니다. 마지막으로 자격증이 정말 없으십니까?"))
				return;
		}

		Frm.encoding = 'multipart/form-data';
		Frm.action = "userJoin.do?name=" + name + "&reg_num=" + reg_num
				+ "&phone=" + phone + "&addr=" + addr + "&email=" + email
				+ "&school_name=" + school_name + "&school_major="
				+ school_major + "&school_out=" + school_out + "&tall=" + tall
				+ "&weight=" + weight + "&eye_l=" + eye_l + "&eye_r=" + eye_r
				+ "&gender=" + gender + "&marry=" + marry + "&disabled="
				+ disabled + "&disabled_grade=" + disabled_grade
				+ "&disabled_day=" + disabled_day + "&lic_no1=" + lic_no1
				+ "&license1=" + license1 + "&license_day1=" + license_day1
				+ "&lic_no2=" + lic_no2 + "&license2=" + license2
				+ "&license_day2=" + license_day2 + "&lic_no3=" + lic_no3
				+ "&license3=" + license3 + "&license_day3=" + license_day3
				+ "&lic_no4=" + lic_no4 + "&license4=" + license4
				+ "&license_day4=" + license_day4 + "&lic_no5=" + lic_no5
				+ "&license5=" + license5 + "&license_day5=" + license_day5

		;
		Frm.submit();
	}
</script>
</head>
<body>
	<c:if test="${inserError }">
		<script type="text/javascript">
			alert("등록 에러");
		</script>
	</c:if>
	<%
	String img = (String) request.getAttribute("img");
	String ifRequired = "required";
	String ifDisabled = "disabled";
	String ifReadOnly = "";
	%>
	<c:if test="${readonly}">
		<%
		ifRequired = "readonly";
		ifReadOnly = "";
		%>
	</c:if>
	<div id="wrap">
		<br> <br> <b><font size="6" color="gray">사원등록</font></b> <br>
		<br> <br>

		<form id="Frm" action="" method="post" enctype="multipart/form-data"
			accept-charset="UTF-8">
			<div id="div_1">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">성명</div>
						<div class="input_title">연락처</div>
						<div class="input_title">주민등록번호</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="name" maxlength="7"
							value="${user.name }" <%=ifRequired%>> <input
							class="short_input" type="number" name="phone" maxlength="13"
							value="${user.phone }" placeholder="- 없이 입력해주세요" <%=ifRequired%>>
						<input class="short_input" type="number" name="reg_num"
							maxlength="14" value="${user.reg_num }" placeholder="- 없이 입력해주세요"
							<%=ifRequired%>>
					</div>
				</div>

				<div class="div_in_r">
					<div class="div_in_l_l">
						<div class="input_title">파일첨부</div>
						<div class="input_title">이메일</div>
					</div>
					<div class="div_in_l_r">
						<%
						if (img != null) {
						%>
						<img alt="사진" style="width: 100px; height: 100px;"
							src="upload\2022_상반기_증명사진\<%=img%>">
						<%
						} else {
						%>
						<input class="face_file" type="file" id="input-file"
							name="filename" maxlength="20" value="${user.filename}">
						<%
						}
						%>
						<input class="short_input" type="email" name="email"
							maxlength="30" value="${user.email}" <%=ifRequired%>>
					</div>
				</div>
			</div>

			<div id="div_2">
				<div class="input_title_long">주소</div>
				<input class="short_input" type="text" name="addr" maxlength="50"
					value="${user.addr}" <%=ifRequired%>>
			</div>
			<div class="clear"></div>

			<div id="div_3">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">신장</div>
						<div class="input_title">시력</div>
						<div class="input_title">체중</div>
						<div class="input_title">결혼여부</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="number" name="tall" maxlength="3"
							placeholder="숫자만 입력해주세요." value="${user.tall}" <%=ifRequired%>>
						<div>
							<span class="eye_span">좌</span><input class="very_short_input"
								type="text" name="eye_l" placeholder="예) 1.5" maxlength="3"
								value="${user.eye_l}" <%=ifRequired%>> <span
								class="eye_span">우</span><input class="very_short_input"
								type="text" name="eye_r" maxlength="3" value="${user.eye_r}"
								placeholder="예) 1.5" <%=ifRequired%>> <input
								class="short_input" type="number" name="weight" maxlength="3"
								value="${user.weight}" placeholder="숫자만 입력해주세요." <%=ifRequired%>>
						</div>
						<c:choose>
							<c:when test="${!readonly }">
								<select class="short_input" name="marry">
									<option value="9">결혼여부</option>
									<option value="N">미혼</option>
									<option value="Y">기혼</option>
								</select>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${user.marry eq 'Y' }">
										<input type="text" class="short_input" value="기혼" readonly />
									</c:when>
									<c:otherwise>
										<input type="text" class="short_input" value="미혼" readonly />
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="div_in_r">
					<div class="div_in_l_l">
						<div class="input_title">성별구분</div>
						<div class="input_title">장애인구분</div>
						<div class="input_title">장애인등급</div>
						<div class="input_title">장애등록일</div>
					</div>
					<div class="div_in_l_r">
						<c:choose>
							<c:when test="${!readonly}">
								<select class="short_input" name="gender">
									<option value="9">성별</option>
									<option value="M">남</option>
									<option value="F">여</option>
								</select>
								<select class="short_input" name="disabled"
									onchange="disabledCheck()">
									<option value="9">유무</option>
									<option value="N">무</option>
									<option value="Y">유</option>
								</select>
								<select class="short_input" id="disabled_grade"
									name="disabled_grade">
									<option value="9">-</option>
									<option value="1">1급</option>
									<option value="2">2급</option>
									<option value="3">3급</option>
									<option value="4">4급</option>
									<option value="5">5급</option>
									<option value="6">6급</option>
								</select>
								<input class="short_input" type="date" id="disabled_day"
									name="disabled_day" maxlength="15" value="${user.disabled_day}">
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${user.gender eq 'M' }">
										<input type="text" class="short_input" value="남성" readonly />
									</c:when>
									<c:otherwise>
										<input type="text" class="short_input" value="여성" readonly />
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${user.disabled eq 'Y' }">
										<input type="text" class="short_input" value="유" readonly />
										<input class="short_input" type="text" name="disabled_grade"
											maxlength="15" value="${user.disabled_grade}" readonly>
										<input class="short_input" type="date" name="disabled_day"
											maxlength="15" value="${user.disabled_day}" readonly>
									</c:when>
									<c:otherwise>
										<input type="text" class="short_input" value="무" readonly />
										<input class="short_input" type="text" name="disabled_grade"
											maxlength="15" value="무" readonly>
										<input class="short_input" type="text" name="disabled_day"
											maxlength="15" value="무" readonly>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div id="div_4">
				<div class="div_in_l">
					<div class="div_in_l_l">
						<div class="input_title">학교명</div>
						<div class="input_title">전공</div>
						<div class="input_title">졸업년도</div>
					</div>
					<div class="div_in_l_r">
						<input class="short_input" type="text" name="school_name"
							maxlength="15" value="${user.school_name}" <%=ifRequired%>>
						<input class="short_input" type="text" name="school_major"
							maxlength="15" value="${user.school_major}" <%=ifRequired%>>
						<input class="short_input" type="date" name="school_out"
							maxlength="15" value="${user.school_out}" <%=ifRequired%>>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<c:choose>
				<c:when test="${!readonly }">
					<div class="div_5">
						<div class="div_in_l">
							<input type="hidden" name="lic_no1" value="1" />
							<div class="div_in_l_l">
								<div class="input_title">자격증</div>
							</div>
							<div class="div_in_l_r">
								<input class="short_input" type="text" name="license1"
									maxlength="15" value="${user.license }"
									placeholder="자격증이 없을 시 공백으로 해주세요">
							</div>
						</div>
						<div class="div_in_r">
							<div class="div_in_l_l">
								<div class="input_title">자격취득일</div>
							</div>
							<div class="div_in_l_r">
								<input class="short_input" type="date" name="license_day1"
									maxlength="15" value="${user.license_day}">
							</div>
						</div>
					</div>
					<div id="add_div"></div>
					<div class="div_5_1">
						<input class="add_button_style" type='button' id="create_license"
							value="추가" /> <input class="add_button_style" type='button'
							id="delete_license" value="삭제" />
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach var="license" items="${license }">
						<div class="div_5">
							<div class="div_in_l">
								<input type="hidden" name="lic_no${license.lic_no }" value="1" />
								<div class="div_in_l_l">
									<div class="input_title">자격증</div>
								</div>
								<div class="div_in_l_r">
									<input class="short_input" type="text"
										name="license${license.lic_no }" maxlength="15"
										value="${license.license }" readonly>
								</div>
							</div>
							<div class="div_in_r">
								<div class="div_in_l_l">
									<div class="input_title">자격취득일</div>
								</div>
								<div class="div_in_l_r">
									<input class="short_input" type="date"
										name="license_day${license.lic_no }" maxlength="15"
										value="${license.license_day}" readonly>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<div class="clear"></div>
			<div id="div_6">
				<c:choose>
					<c:when test="${!readonly}">
						<input class="button_style" type="button" onclick="fn_check()"
							value="사원등록" />
						<button class="button_style" type="button"
							onclick="location.href='user.do?init=start'">뒤로</button>
					</c:when>
					<c:otherwise>
						<input class="button_style" type="button"
							onclick="location.href='userJoin.do'" value="사원추가" />
						<button class="button_style" type="button"
							onclick="location.href='user.do?init=start'">뒤로</button>
					</c:otherwise>
				</c:choose>
			</div>
		</form>
	</div>
</body>
</html>
