<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="personnel.model.Personnel"%>
<%@ page import="user.model.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="main.model.WorkExperience"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
body {
	display: flex;
}

.clear {
	width: 100px;
	height: 50px
}

.clear1 {
	width: 100px;
	height: 10px;
}

.clear2 {
	width: 100px;
	height: 7px;
}

.clear3 {
	width: 100px;
	height: 5px;
}

#div_1 {
	/* background-color: yellow; */
	width: 1000px;
	height: 120px;
	margin-top: 30px;
	margin: auto;
	position: relative;
}

#div_A {
	/* background-color: yellow; */
	width: 1000px;
	height: 30px;
	margin-top: 30px;
	margin: auto;
	position: relative;
}

#div_B {
	/* background-color: yellow; */
	width: 1000px;
	height: 36px;
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
	width: 900px;
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
	width: 900px;
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
	width: 50%;
	position: absolute;
	left: 50%;
	display: flex;
}

.div_in_l {
	width: 50%;
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
	width: 50%;
}

.div_in_l_m {
	width: 100%;
}

.input_title {
	width: 96%;
	height: 29px;
	background-color: #D5D5D5;
	border-bottom: 1px solid black;
	font-size: 12px;
	line-height: 27px;
}

.input_title1 {
	width: 100%;
	height: 29px;
	background-color: #D5D5D5;
	border-bottom: 1px solid black;
	font-size: 12px;
	line-height: 27px;
	float: left;
}

#full {
	width: 600px;
	height: 50px;
	float: center;
}

#title_left {
	width: 40%;
	float: left;
}

#title_right {
	width: 60%;
	float: right;
}

#full_main {
	width: 100%;
	margin: auto
}

#left {
	width: 300px;
	float: left;
}

#right {
	width: 300px;
	float: left;
}

.short_input {
	width: 90%;
	height: 27px;
}

.very_short_input {
	width: 30%;
	height: 29px;
	line-height: 27px;
}

.very_short_input1 {
	width: 100%;
	height: 28px;
	line-height: 27px;
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

.left_form {
	width: 100%;
	display: flex;
	justify-content: center;
}

.left_table {
	width: 95%;
	height: 700px;
	text-align: center;
	border-collapse: collapse
}

.mid_button_box {
	position: absolute;
	top: 2px;
	left: 31%;
}

#forEEE {
	display: inline-block;
}

.form-search {
	border: none;
	font-size: 15px;
}

.searchField {
	font-size: 20px;
	height: 24px;
	margin: 30px 0;
	width: 80%;
}

.left_table_tr1>:nth-child(1) {
	width: 20%;
}

.left_table_tr1>:nth-child(2) {
	width: 80%;
}

.left_table_tr1 {
	height: 8%;
	border-bottom: 1px solid black;
}

.left_table_tr2 {
	height: 5%;
	border-bottom: 1px solid black;
}

.left_table_tr3 {
	height: 50%;
	border-bottom: 1px solid black;
}

.left_table_tr4 {
	width: 100%;
	height: 5%;
	border-bottom: 1px solid black;
}

#tr_page_a {
	width: 100%;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.left_table_tr5 {
	height: 10%;
}

.left_table_button {
	position: absolute;
	top: 710px;
	left: 45%;
}

.enter {
	position: absolute;
	top: 85%;
	left: 18%;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						var max_fields = 5 - $
						{
							workexperience.size()
						}
						; //최대개수
						var wr = $
						{
							workexperience.size()
						}
						;
						var i = 1;
						$("#WE_addBtn")
								.click(
										function() {
											if (i <= max_fields) {
												wr++;
												i++;
												$("#forWE")
														.before(
																'<tr class="div_5-'+wr+'" >'
																		+ '<td>業務履歴_官庁</td>'
																		+ '<td><select name="mini_no'+wr+'">'
																		+ '<option value="10" >경영처</option>'
																		+ '<option value="20" >회계처</option>'
																		+ '<option value="30" >무역처</option>'
																		+ '<option value="40" >개발처</option>'
																		+ '<option value="50" >국내영업처</option>'
																		+ '<option value="60" >국외영업처</option>'
																		+ '<option value="70" >인사관리처</option>'
																		+ '<option value="80" >법무처</option>'
																		+ '</select></td></tr>'
																		+ '<tr class="div_5-'+ wr+ '" >'
																		+ '<td>業務履歴_部署</td>'
																		+ '<td><select name="dept_no' + wr + '" >'
																		+ '<option value="10" >경영부</option>'
																		+ '<option value="20" >회계부</option>'
																		+ '<option value="30" >무역부</option>'
																		+ '<option value="40" >개발부</option>'
																		+ '<option value="50" >국내영업부</option>'
																		+ '<option value="60" >국외영업부</option>'
																		+ '<option value="70" >인사관리부</option>'
																		+ '<option value="80" >법무부</option>'
																		+ '</select></td></tr>'
																		+ '<tr class="div_5-'+wr+'">'
																		+ '<td>期間</td>'
																		+ '<td><input type="date" name="begin_date'+wr+'"/>-<input type="date" name="end_date'+wr+'"/></td><input type="hidden" name="we_no'+wr+'" value="'+wr+'"></tr>'
																		+ '')
											}
										});
						$("#WE_delBtn").click(function() {
							$('tr').remove('.div_5-' + wr + '');
							wr--;
							i--;
						})

						var max_Edufields = 5 - $
						{
							eduList.size()
						}
						; //최대개수
						var er = $
						{
							eduList.size()
						}
						;
						var j = 1;
						$("#Edu_addBtn")
								.click(
										function() {
											if (j <= max_Edufields) {
												er++;
												j++;
												$("#forEdu")
														.before(
																'<tr class="div_5-'+er + '">'
																		+ '<td>教育履歴</td>'
																		+ '<td><input type="text" name="edu_content'+er + '" /></td>'
																		+ '<input type="hidden" name="edu_no'+er + '" value="'+er + '" /> </tr>')
											}
										});
						$("#Edu_delBtn").click(function() {
							$('tr').remove('.div_5-' + er + '');
							er--;
							j--;
						})
					});
</script>
</head>
<body>
	<div id='full_main' align='center'>
		<div id='title_left'>
			<%
			String a = "readonly";
			String b = "type='hidden'";
			String c = "readonly";
			String mini_a = "", mini_b = "", mini_c = "", mini_d = "", mini_e = "", mini_f = "", mini_g = "", mini_h = "";
			String dept_a = "", dept_b = "", dept_c = "", dept_d = "", dept_e = "", dept_f = "", dept_g = "", dept_h = "";
			Personnel personnel = (Personnel) request.getAttribute("personnel");
			User user = (User) request.getAttribute("user");
			ArrayList<WorkExperience> workExperiences = (ArrayList<WorkExperience>) request.getAttribute("workexperience");

			int search = 0;
			String searchField = "";
			if (request.getAttribute("search") != null) {
				search = (int) request.getAttribute("search");
				searchField = (String) request.getAttribute("searchField");
			}
			String search_a = "", search_b = "", search_c = "", search_d = "", search_e = "";
			if (search == 0)
				search_a = "selected";
			if (search == 1)
				search_b = "selected";
			if (search == 2)
				search_c = "selected";
			if (search == 3)
				search_d = "selected";
			if (search == 4)
				search_e = "selected";
			%>
			<c:if test="${modify}">
				<%
				a = "required";
				b = "type='button'";
				c = "";

				if (personnel.getMini_no() == 10) {
					mini_a = "selected";
				}
				if (personnel.getMini_no() == 20) {
					mini_b = "selected";
				}
				if (personnel.getMini_no() == 30) {
					mini_c = "selected";
				}
				if (personnel.getMini_no() == 40) {
					mini_d = "selected";
				}
				if (personnel.getMini_no() == 50) {
					mini_e = "selected";
				}
				if (personnel.getMini_no() == 60) {
					mini_f = "selected";
				}
				if (personnel.getMini_no() == 70) {
					mini_g = "selected";
				}
				if (personnel.getMini_no() == 80) {
					mini_h = "selected";
				}

				if (personnel.getDept_no() == 10) {
					dept_a = "selected";
				}
				if (personnel.getDept_no() == 20) {
					dept_b = "selected";
				}
				if (personnel.getDept_no() == 30) {
					dept_c = "selected";
				}
				if (personnel.getDept_no() == 40) {
					dept_d = "selected";
				}
				if (personnel.getDept_no() == 50) {
					dept_e = "selected";
				}
				if (personnel.getDept_no() == 60) {
					dept_f = "selected";
				}
				if (personnel.getDept_no() == 70) {
					dept_g = "selected";
				}
				if (personnel.getDept_no() == 80) {
					dept_h = "selected";
				}
				%>
			</c:if>
			<c:if test="${wrongRoute }">
				<script type="text/javascript">
					alert('사원 번호를 클릭해주세요');
				</script>
			</c:if>
			<c:if test="${searchError2 }">
				<script type="text/javascript">
					alert('종류를 선택해주세요');
				</script>
			</c:if>

			<div style="display: none;" id="addField">
				<div style="display: inline;">
					<table>
						<tr>
							<td>業務履歴_官庁</td>
							<td><input type="text" name="per_mini_no" value="" <%=c%> /></td>
						</tr>
						<tr>
							<td>業務履歴_部署</td>
							<td><input type="text" name="per_dept_no" value="" <%=c%> /></td>
						</tr>
						<tr>
							<td>期間</td>
							<td><input type="date" name="per_begin_date" value="" <%=c%> />
								- <input type="date" name="per_end_date" value="" <%=c%> /></td>
						</tr>
					</table>
				</div>
			</div>
			<form class="left_form"
				action="main.do?NoSummit=direct?&searchInput=notNull" method="post">
				<table class="left_table">
					<tr class="left_table_tr1">
						<td><select class="form-search" name="search">
								<option value="9" <%=search_a%>>選択</option>
								<option value="1" <%=search_b%>>社員番号</option>
								<option value="2" <%=search_c%>>名前</option>
								<option value="3" <%=search_d%>>官庁</option>
								<option value="4" <%=search_e%>>部署</option>
						</select></td>
						<td colspan="12" height="50px"><input class="searchField"
							type="text" name="searchField" value="${searchField}" required />
							<button class="add_button_style" type="submit"
								style="width: 70px; height: 30px;">検索</button></td>

					</tr>
					<tr class="left_table_tr2">
						<td class="td_title">社員番号</td>
						<td class="td_title">名前</td>
						<td class="td_title">部署</td>
						<td class="td_title">官庁</td>
					</tr>
					<tr class="box_line" class="left_table_tr3">
						<c:forEach var="personnelList" items="${personnelList }">

							<td><a class="no_a"
								href="user.do?choose=user&no=${personnelList.no }&search=${search}&searchField=${searchField}">${personnelList.no }</a>
							</td>
							<td>${personnelList.name }</td>
							<td>${personnelList.job_position }</td>
							<td>${personnelList.salary_class }</td>
						</c:forEach>
					</tr>
					<tr class="left_table_tr4">
						<td id="tr_page_a" colspan="22"><c:if
								test="${paging.total/paging.limit<5 }">
								<c:forEach var="currentPage" begin="${paging.startPage }"
									end="${Math.ceil(paging.total/paging.limit)}">
									<a class="page_a"
										href="user.do?currentPage=${ currentPage}&search=${search}&searchField=${searchField}">${currentPage }</a>
								</c:forEach>
							</c:if> <c:if test="${paging.endPage>5 }">
								<a class="page_a"
									href="user.do?startPage=${ paging.startPage-5}&currentPage=${ paging.startPage -1}&search=${search}&searchField=${searchField}">
									前へ</a>
							</c:if> <c:if test="${paging.total/paging.limit>=5 }">
								<c:choose>
									<c:when test="${paging.total/paging.limit<paging.endPage }">
										<c:forEach var="currentPage" begin="${paging.startPage }"
											end="${Math.ceil(paging.total/paging.limit)}">
											<a class="page_a"
												href="user.do?currentPage=${ currentPage}&startPage=${ paging.startPage}&search=${search}&searchField=${searchField}">${currentPage }</a>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:forEach var="currentPage" begin="${paging.startPage }"
											end="${ paging.startPage +4 }">
											<a class="page_a"
												href="user.do?currentPage=${ currentPage}&startPage=${ paging.startPage}&search=${search}&searchField=${searchField}">${currentPage }</a>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<c:if test="${paging.endPage != 10 }">
									<a class="page_a"
										href="user.do?startPage=${ paging.endPage+1}&currentPage=${ paging.endPage +1}&search=${search}&searchField=${searchField}">次へ</a>
								</c:if>
							</c:if></td>
					</tr>


				</table>
				<input class="add_button_style enter" type="button" value="登録"
					style="width: 70px; height: 30px;"
					onclick="location.href = 'userJoin.do'" />
			</form>
			<div class="mid_button_box">
				<input class="add_button_style" type="button" value="人的事項"
					style="width: 70px; height: 30px;"
					onclick="location.href = 'user.do?choose=user&no=${no }&search=${search}&searchField=${searchField}'" />
				<input class="add_button_style" type="button" value="人事記録"
					style="width: 70px; height: 30px;"
					onclick="location.href = 'main.do?choose=personnel&no=${no }&search=${search}&searchField=${searchField}'" />
			</div>
		</div>
		<!-- 오른쪽 페이지 -->
		${choose }
		<c:choose>
			<c:when test="${choose}">
				<div id='title_right'>
					<div id="wrap">
						<br> <br> <b><font size="6" color="gray">人事記録</font></b>
						<br> <br> <br>
						<form
							action="main.do?choose=personnel&search=${search}&searchField=${searchField}"
							method="post"></form>

						<div id="div_1">
							<div class="div_in_l">
								<div class="div_in_l_l">
									<div class="input_title">社員番号</div>
									<div class="input_title">職級</div>
									<div class="input_title">号俸</div>
									<div class="input_title">官庁</div>

								</div>
								<div class="div_in_l_r">
									<input class="short_input" type="text" name="no"
										value="${personnel.no}" <%=a %> /> <input class="short_input"
										type="text" name="job_position"
										value="${personnel.job_position}" <%=a %> /> <input
										class="short_input" type="text" name="salary_class"
										value="${personnel.salary_class}" <%=a %> />
									<c:choose>
										<c:when test="${modify}">
											<select class="very_short_input1" name="mini_no">
												<option value="10" <%=mini_a%>>경영처</option>
												<option value="20" <%=mini_b%>>회계처</option>
												<option value="30" <%=mini_c%>>무역처</option>
												<option value="40" <%=mini_d%>>개발처</option>
												<option value="50" <%=mini_e%>>국내영업처</option>
												<option value="60" <%=mini_f%>>국외영업처</option>
												<option value="70" <%=mini_g%>>인사관리처</option>
												<option value="80" <%=mini_h%>>법무처</option>
											</select>
										</c:when>
										<c:otherwise>
											<input class="short_input" type="text" name="mini_no"
												value="${personnel.mini_name}" readonly />
										</c:otherwise>
									</c:choose>

								</div>
							</div>


							<div class="div_in_r">
								<div class="div_in_l_l">
									<div class="input_title">入社日</div>
									<div class="input_title">退社日</div>
									<div class="input_title">部署</div>
									<div class="input_title">給与</div>

								</div>
								<div class="div_in_l_r">
									<input class="very_short_input1" type="date" name="enter_date"
										value="${personnel.enter_date}" <%=a %> /> <input
										class="very_short_input1" type="date" name="resign_date"
										value="${personnel.resign_date }" <%=c %> />
									<c:choose>
										<c:when test="${modify}">
											<select class="very_short_input1" name="dept_no">
												<option value="10" <%=dept_a%>>경영부</option>
												<option value="20" <%=dept_b%>>회계부</option>
												<option value="30" <%=dept_c%>>무역부</option>
												<option value="40" <%=dept_d%>>개발부</option>
												<option value="50" <%=dept_e%>>국내영업부</option>
												<option value="60" <%=dept_f%>>국외영업부</option>
												<option value="70" <%=dept_g%>>인사관리부</option>
												<option value="80" <%=dept_h%>>법무부</option>
											</select>
										</c:when>
										<c:otherwise>
											<input class="very_short_input1" type="text" name="dept_no"
												value="${personnel.dept_name}" readonly />
										</c:otherwise>
									</c:choose>
									<input class="very_short_input1" type="text" name="money"
										value="${personnel.money}" readonly />


								</div>
							</div>



						</div>
						<div class="clear"></div>

						<div class="input_title">教育履歴</div>

						<c:forEach var="eduList" items="${eduList }">
							<div class="div_5-${eduList.edu_no }">
								<input class="short_input" type="hidden"
									name="edu_no${eduList.edu_no }" value="${eduList.edu_no }" />
								<input class="short_input" type="text"
									name="edu_content${eduList.edu_no}"
									value="${eduList.edu_content}" <%=a%> /> <input
									class="short_input" <%=b%> id="Edu_addBtn" value="追加" /> <input
									class="short_input" <%=b%> id="Edu_delBtn" value="削除" />
							</div>
						</c:forEach>


						<div class="clear"></div>
						<div class="input_title">業務履歴</div>
						<div class="clear1"></div>
						<%
						int i = 0;
						%>
						<c:forEach var="workexperience" items="${workexperience }">
							<%
							String dept_1_a = "", dept_1_b = "", dept_1_c = "", dept_1_d = "", dept_1_e = "", dept_1_f = "", dept_1_g = "",
									dept_1_h = "";

							String mini_1_a = "", mini_1_b = "", mini_1_c = "", mini_1_d = "", mini_1_e = "", mini_1_f = "", mini_1_g = "",
									mini_1_h = "";

							if (workExperiences.get(i).getDept_no() == 10)
								dept_1_a = "selected";
							if (workExperiences.get(i).getDept_no() == 20)
								dept_1_b = "selected";
							if (workExperiences.get(i).getDept_no() == 30)
								dept_1_c = "selected";
							if (workExperiences.get(i).getDept_no() == 40)
								dept_1_d = "selected";
							if (workExperiences.get(i).getDept_no() == 50)
								dept_1_e = "selected";
							if (workExperiences.get(i).getDept_no() == 60)
								dept_1_f = "selected";
							if (workExperiences.get(i).getDept_no() == 70)
								dept_1_g = "selected";
							if (workExperiences.get(i).getDept_no() == 80)
								dept_1_h = "selected";

							if (workExperiences.get(i).getMini_no() == 10)
								mini_1_a = "selected";
							if (workExperiences.get(i).getMini_no() == 20)
								mini_1_b = "selected";
							if (workExperiences.get(i).getMini_no() == 30)
								mini_1_c = "selected";
							if (workExperiences.get(i).getMini_no() == 40)
								mini_1_d = "selected";
							if (workExperiences.get(i).getMini_no() == 50)
								mini_1_e = "selected";
							if (workExperiences.get(i).getMini_no() == 60)
								mini_1_f = "selected";
							if (workExperiences.get(i).getMini_no() == 70)
								mini_1_g = "selected";
							if (workExperiences.get(i).getMini_no() == 80)
								mini_1_h = "selected";

							i++;
							%>

							<div class="div_5-${workexperience.we_no}">
								<input class="short_input" type="hidden"
									name="we_no${workexperience.we_no}"
									value="${workexperience.we_no}" />
							</div>



							<div id="div_A">
								<div class="clear3"></div>
								<div class="div_in_l">
									<div class="div_in_l_l">
										<div class="input_title1">業務履歴_官庁</div>

									</div>


									<c:choose>
										<c:when test="${modify }">
											<select name="mini_no${workexperience.we_no}">
												<option value="10" <%=mini_1_a%>>경영처</option>
												<option value="20" <%=mini_1_b%>>회계처</option>
												<option value="30" <%=mini_1_c%>>무역처</option>
												<option value="40" <%=mini_1_d%>>개발처</option>
												<option value="50" <%=mini_1_e%>>국내영업처</option>
												<option value="60" <%=mini_1_f%>>국외영업처</option>
												<option value="70" <%=mini_1_g%>>인사관리처</option>
												<option value="80" <%=mini_1_h%>>법무처</option>
											</select>
										</c:when>
										<c:otherwise>
											<div class="div_in_l_r">
												<input class="short_input" type="text"
													name="mini_no${workexperience.we_no}"
													value="${workexperience.mini_name}" <%=c%> />
											</div>
										</c:otherwise>
									</c:choose>
									<div class="div_5-${workexperience.we_no}"></div>
								</div>
								<div class="div_in_r">
									<div class="div_in_l_l">
										<div class="input_title1">業務履歴_部署</div>
									</div>
									<c:choose>
										<c:when test="${modify }">
											<select name="dept_no${workexperience.we_no}">
												<option value="10" <%=dept_1_a%>>경영부</option>
												<option value="20" <%=dept_1_b%>>회계부</option>
												<option value="30" <%=dept_1_c%>>무역부</option>
												<option value="40" <%=dept_1_d%>>개발부</option>
												<option value="50" <%=dept_1_e%>>국내영업부</option>
												<option value="60" <%=dept_1_f%>>국외영업부</option>
												<option value="70" <%=dept_1_g%>>인사관리부</option>
												<option value="80" <%=dept_1_h%>>법무부</option>
											</select>
										</c:when>
										<c:otherwise>
											<div class="div_in_l_r">
												<input class="short_input" type="text"
													name="dept_no${workexperience.we_no}"
													value="${workexperience.dept_name}" <%=c%> />
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>

							<div class="div_5-${workexperience.we_no}"></div>


							<div id="div_B">
								<div class="clear2"></div>
								<div class="div_in_l">
									<div class="div_in_l_l">
										<div class="input_title1">期間</div>

									</div>

									<div class="div_in_l_m">
										<input class="very_short_input" type="date"
											name="begin_date${workexperience.we_no}"
											value="${workexperience.start_date }" <%=c%> /> - <input
											class="very_short_input" type="date"
											name="end_date${workexperience.we_no}"
											value="${workexperience.end_date }" <%=c%> />
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div id="forWE"></div>
					<div class="clear"></div>

					<input class="add_button_style" <%=b%> id="WE_addBtn" value="追加" />
					<input class="add_button_style" <%=b%> id="WE_delBtn" value="削除" />


					<c:choose>
						<c:when test="${modify}">
							<input class="add_button_style" type="submit" value="登録"
								style="width: 70px; height: 30px;" />
						</c:when>
						<c:otherwise>
							<input class="add_button_style" type="button"
								onclick="location.href='main.do?choose=personnel&modify=true&no=${personnel.no}&search=${search}&searchField=${searchField}'"
								value="修正" style="width: 70px; height: 30px;" />
						</c:otherwise>
					</c:choose>
				</div>
			</c:when>
			<c:otherwise>
				<form action="user.do" method="post">
					<div id='title_right'>
						<div id="wrap">
							<br> <br> <b><font size="6" color="gray">人事記録</font></b>
							<br> <br> <br>
							<form action="main.do?choose=personnel&search=${search}&searchField=${searchField}" method="post">
								<div id="div_1">
									<div class="div_in_l">
										<div class="div_in_l_l">
											<div class="input_title">社員番号</div>
											<div class="input_title">名</div>
											<div class="input_title">住民番号</div>
											<div class="input_title">連絡先</div>

										</div>
										<div class="div_in_l_r">
											<input class="short_input" type="text" name="no"
												value="${user.no}" <%=a %> /> <input class="short_input"
												type="text" name="name" value="${user.name}" <%=a %> /> <input
												class="short_input" type="text" name="reg_num"
												value="${user.reg_num}" <%=a %> /> <input
												class="short_input" type="text" name="phone"
												value="${user.phone}" <%=a %> />
										</div>
									</div>
									<div class="div_in_r">
										<div class="div_in_l_l">

											<div class="input_title">写真登録</div>
											<div class="input_title"></div>
											<div class="input_title"></div>
											<div class="input_title"></div>

										</div>
										<div class="div_in_l_r">
											<input class="very_short_input1" type="date"
												name="enter_date" value="${user.filerealname}" <%=a %> />
												<%
									String img = (String) request.getAttribute("img");
									%>
									<%
									if (img != null) {
									%>
									<img alt="사진" class="very_short_input1" style="width: 100px; height: 100px;"
										src="upload\2022_상반기_증명사진\<%=img%>">
									<%
									} else {
									%>
									<input class="face_file" type="file" id="input-file"
										name="filename" maxlength="10">
									<%
									}
									%>
										</div>
									</div>
								</div>
								<div class="clear"></div>
								<div class="input_title">教育履歴</div>
								<c:forEach var="eduList" items="${eduList }">
									<div class="div_5-${eduList.edu_no }">
										<input class="short_input" type="hidden"
											name="edu_no${eduList.edu_no }" value="${eduList.edu_no }" />
										<input class="short_input" type="text"
											name="edu_content${eduList.edu_no}"
											value="${eduList.edu_content}" <%=a%> /> <input
											class="short_input" <%=b%> id="Edu_addBtn" value="追加" /> <input
											class="short_input" <%=b%> id="Edu_delBtn" value="削除" />
									</div>
								</c:forEach>


								<div class="clear"></div>
								<div class="input_title">業務履歴</div>
								<div class="clear1"></div>
								<%
								int i = 0;
								%>
								<c:forEach var="workexperience" items="${workexperience }">
									<%
									String dept_1_a = "", dept_1_b = "", dept_1_c = "", dept_1_d = "", dept_1_e = "", dept_1_f = "", dept_1_g = "",
											dept_1_h = "";

									String mini_1_a = "", mini_1_b = "", mini_1_c = "", mini_1_d = "", mini_1_e = "", mini_1_f = "", mini_1_g = "",
											mini_1_h = "";

									if (workExperiences.get(i).getDept_no() == 10)
										dept_1_a = "selected";
									if (workExperiences.get(i).getDept_no() == 20)
										dept_1_b = "selected";
									if (workExperiences.get(i).getDept_no() == 30)
										dept_1_c = "selected";
									if (workExperiences.get(i).getDept_no() == 40)
										dept_1_d = "selected";
									if (workExperiences.get(i).getDept_no() == 50)
										dept_1_e = "selected";
									if (workExperiences.get(i).getDept_no() == 60)
										dept_1_f = "selected";
									if (workExperiences.get(i).getDept_no() == 70)
										dept_1_g = "selected";
									if (workExperiences.get(i).getDept_no() == 80)
										dept_1_h = "selected";

									if (workExperiences.get(i).getMini_no() == 10)
										mini_1_a = "selected";
									if (workExperiences.get(i).getMini_no() == 20)
										mini_1_b = "selected";
									if (workExperiences.get(i).getMini_no() == 30)
										mini_1_c = "selected";
									if (workExperiences.get(i).getMini_no() == 40)
										mini_1_d = "selected";
									if (workExperiences.get(i).getMini_no() == 50)
										mini_1_e = "selected";
									if (workExperiences.get(i).getMini_no() == 60)
										mini_1_f = "selected";
									if (workExperiences.get(i).getMini_no() == 70)
										mini_1_g = "selected";
									if (workExperiences.get(i).getMini_no() == 80)
										mini_1_h = "selected";

									i++;
									%>

									<div class="div_5-${workexperience.we_no}">
										<input class="short_input" type="hidden"
											name="we_no${workexperience.we_no}"
											value="${workexperience.we_no}" />
									</div>



									<div id="div_A">
										<div class="clear3"></div>
										<div class="div_in_l">
											<div class="div_in_l_l">
												<div class="input_title1">業務履歴_官庁</div>

											</div>


											<c:choose>
												<c:when test="${modify }">
													<select name="mini_no${workexperience.we_no}">
														<option value="10" <%=mini_1_a%>>경영처</option>
														<option value="20" <%=mini_1_b%>>회계처</option>
														<option value="30" <%=mini_1_c%>>무역처</option>
														<option value="40" <%=mini_1_d%>>개발처</option>
														<option value="50" <%=mini_1_e%>>국내영업처</option>
														<option value="60" <%=mini_1_f%>>국외영업처</option>
														<option value="70" <%=mini_1_g%>>인사관리처</option>
														<option value="80" <%=mini_1_h%>>법무처</option>
													</select>
												</c:when>
												<c:otherwise>
													<div class="div_in_l_r">
														<input class="short_input" type="text"
															name="mini_no${workexperience.we_no}"
															value="${workexperience.mini_name}" <%=c%> />
													</div>
												</c:otherwise>
											</c:choose>
											<div class="div_5-${workexperience.we_no}"></div>
										</div>

										<div class="div_in_r">
											<div class="div_in_l_l">

												<div class="input_title1">業務履歴_部署</div>

											</div>
											<c:choose>
												<c:when test="${modify }">
													<select name="dept_no${workexperience.we_no}">
														<option value="10" <%=dept_1_a%>>경영부</option>
														<option value="20" <%=dept_1_b%>>회계부</option>
														<option value="30" <%=dept_1_c%>>무역부</option>
														<option value="40" <%=dept_1_d%>>개발부</option>
														<option value="50" <%=dept_1_e%>>국내영업부</option>
														<option value="60" <%=dept_1_f%>>국외영업부</option>
														<option value="70" <%=dept_1_g%>>인사관리부</option>
														<option value="80" <%=dept_1_h%>>법무부</option>
													</select>
												</c:when>
												<c:otherwise>
													<div class="div_in_l_r">
														<input class="short_input" type="text"
															name="dept_no${workexperience.we_no}"
															value="${workexperience.dept_name}" <%=c%> />
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>

									<div class="div_5-${workexperience.we_no}"></div>


									<div id="div_B">
										<div class="clear2"></div>
										<div class="div_in_l">
											<div class="div_in_l_l">
												<div class="input_title1">期間</div>

											</div>

											<div class="div_in_l_m">
												<input class="very_short_input" type="date"
													name="begin_date${workexperience.we_no}"
													value="${workexperience.start_date }" <%=c%> /> - <input
													class="very_short_input" type="date"
													name="end_date${workexperience.we_no}"
													value="${workexperience.end_date }" <%=c%> />
											</div>
										</div>
									</div>
								</c:forEach>
							</form>
						</div>
						<div id="forWE"></div>
						<div class="clear"></div>

						<input class="add_button_style" <%=b%> id="WE_addBtn" value="追加" />
						<input class="add_button_style" <%=b%> id="WE_delBtn" value="削除" />


						<c:choose>
							<c:when test="${modify}">
								<input class="add_button_style" type="submit" value="登録"
									style="width: 70px; height: 30px;" />
							</c:when>
							<c:otherwise>
								<input class="add_button_style" type="button"
									onclick="location.href='main.do?choose=personnel&modify=true&no=${personnel.no}&search=${search}&searchField=${searchField}'"
									value="修正" style="width: 70px; height: 30px;" />
							</c:otherwise>
						</c:choose>
					</div>
					<div>
						<div>
						
						</div>
						<div>
							<div>写真登録</div>
							<input type="file" value="" />
							<div class="div_top_l_l">社員番号</div>
							<div>
								<input class="short_input" type="text" name="no"
									value="${user.no}" <%=a%> />
							</div>
							<div class="div_top_l_l">名</div>
							<div>
								<input class="short_input" type="text" name="name"
									value="${user.name}" <%=a %> />
							</div>

						</div>
					</div>
					<div class="div_top_l_l">住民番号</div>
					<div>
						<input class="short_input" type="text" name="reg_num"
							value="${user.reg_num}" readonly />
					</div>
					<div class="div_top_l_l">連絡先</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input class="short_input" type="text" name="phone"
									value="${user.phone}" />
							</c:when>
							<c:otherwise>
								<input class="short_input" type="text" name="phone"
									value="${user.phone}" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div class="div_long">メール</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input class="long_input" type="text" name="email"
									value="${user.email}" />
							</c:when>
							<c:otherwise>
								<input class="long_input" type="text" name="email"
									value="${user.email}" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div class="div_long">住所</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input class="long_input" type="text" name="addr"
									value="${user.addr}" />
							</c:when>
							<c:otherwise>
								<input class="long_input" type="text" name="addr"
									value="${user.addr}" readonly />
							</c:otherwise>
						</c:choose>
					</div>

					<div>身長</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="text" name="tall" value="${user.tall }" />
							</c:when>
							<c:otherwise>
								<input type="text" name="tall" value="${user.tall }" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>視力</div>
					<div>左</div>
					<c:choose>
						<c:when test="${modify1 }">
							<input type="text" name="eye_l" value="${user.eye_l}" />
						</c:when>
						<c:otherwise>
							<input type="text" name="eye_l" value="${user.eye_l}" readonly />
						</c:otherwise>
					</c:choose>
					<div>右</div>
					<c:choose>
						<c:when test="${modify1 }">
							<input type="text" name="eye_r" value="${user.eye_r}" />
						</c:when>
						<c:otherwise>
							<input type="text" name="eye_r" value="${user.eye_r}" readonly />
						</c:otherwise>
					</c:choose>
					<div>結婚可否</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<select name="marry">
									<option value="Y">既婚者</option>
									<option value="N">未婚者</option>
								</select>
							</c:when>
							<c:otherwise>
								<c:if test="${user.marry eq 'Y' }">
									<input type="text" name="marry" value="既婚者" readonly />
								</c:if>
								<c:if test="${user.marry eq 'N' }">
									<input type="text" name="marry" value="未婚者" readonly />
								</c:if>
							</c:otherwise>
						</c:choose>
					</div>
					<div>体重</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="text" name="weight" value="${user.weight }" />
							</c:when>
							<c:otherwise>
								<input type="text" name="weight" value="${user.weight }"
									readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>性別</div>
					<div>
						<input type="text" name="gender" value="${user.gender}" readonly />
					</div>

					<div>障害者</div>
					<c:choose>
						<c:when test="${modify1 }">
							<select name="disabled">
								<option value="Y">有</option>
								<option value="N">無</option>
							</select>
						</c:when>
						<c:otherwise>
							<c:if test="${user.disabled eq 'Y' }">
								<input type=text name="disabled" value="有" readonly />
							</c:if>
							<c:if test="${user.disabled eq 'N' }">
								<input type=text name="disabled" value="無" readonly />
							</c:if>
						</c:otherwise>
					</c:choose>

					<div>障害者等級</div>
					<c:choose>
						<c:when test="${modify1 }">
							<select name="disabled_grade">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
							</select>
						</c:when>
						<c:otherwise>
							<input type=text name="disabled_grade"
								value="${user.disabled_grade}等級" readonly />
						</c:otherwise>
					</c:choose>

					<div>障害登録日</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="date" name="disabled_day"
									value="${user.disabled_day}" />
							</c:when>
							<c:otherwise>
								<input type="date" name="disabled_day"
									value="${user.disabled_day}" readonly />
							</c:otherwise>
						</c:choose>
					</div>

					<div>卒業名</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="text" name="school_name"
									value="${user.school_name}" />
							</c:when>
							<c:otherwise>
								<input type="text" name="school_name"
									value="${user.school_name}" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>専攻</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="text" name="school_major"
									value="${user.school_major}" />
							</c:when>
							<c:otherwise>
								<input type="text" name="school_major"
									value="${user.school_major}" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>卒業年度</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="date" name="school_out" value="${user.school_out}" />
							</c:when>
							<c:otherwise>
								<input type="date" name="school_out" value="${user.school_out}"
									readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>資格取得</div>
					<div>資格</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="text" name="license" value="${user.license}" />
							</c:when>
							<c:otherwise>
								<input type="text" name="license" value="${user.license}"
									readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>資格取得日</div>
					<div>
						<c:choose>
							<c:when test="${modify1 }">
								<input type="date" name="license_day"
									value="${user.license_day}" />
							</c:when>
							<c:otherwise>
								<input type="date" name="license_day"
									value="${user.license_day}" readonly />
							</c:otherwise>
						</c:choose>
					</div>
					<div>
						<input class="add_button_style" type="button" onclick=""
							value="追加" />
					</div>
					<c:choose>
						<c:when test="${modify1}">
							<input class="add_button_style" type="submit" value="完了"
								style="width: 70px; height: 30px;" />
						</c:when>
						<c:otherwise>
							<input class="add_button_style" type="button"
								onclick="location.href='user.do?choose=user&modify1=true&no=${user.no}'"
								value="修正" style="width: 70px; height: 30px;" />
						</c:otherwise>
					</c:choose>
				</form>
			</c:otherwise>
		</c:choose>
		<div style="display: none;"></div>
	</div>
</body>
</html>