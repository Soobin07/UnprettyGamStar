<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.gamstar.user.model.vo.User" %>
<%
	String orderType=(String)request.getAttribute("orderType");
	String orderTypeClass=(String)request.getAttribute("orderTypeClass");
	List<User> list=(List)request.getAttribute("list");
	int numPerPage=(int)request.getAttribute("numPerPage");
	String pageBar=(String)request.getAttribute("pageBar");
%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Hi+Melody" rel="stylesheet">
<style>
    @media all and (min-width:1067px){
    /* Member Main Table */
    table.type{
        text-align:center; 
        width:100%; 
        padding:10px; 
        margin-top:10px;
        border-collapse: collapse;
    }
    table.type th{
        border-top:1px solid rgba(189,189,189,0.8);
        border-bottom: 1px solid rgba(189,189,189,0.8);
        line-height: 2;
        padding:4px;
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    table.type td{
        line-height:1.8;
        border-bottom: 1px solid rgba(189,189,189,0.4);
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    
    div.userSearch{
        text-align: right;
    }
    div.userSearch>form{
        display:inline;
    }
    div.userSearch>form>select{
        vertical-align: middle;
    }
    div.userSearch>form>input[type=text]{
        vertical-align: middle;
    }
    
    /* 정지 버튼 */
    .stopBtn{
        background-color:rgb(255, 79, 79);
        color:white;
        border:none;
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        margin-right: 3px;
    }
    .stopBtn:focus{
        outline: none;
    }
    /* 정지 취소 버튼 */
    .cancelBtn{
        background-color:white;
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .cancelBtn:focus{
        outline: none;
    }
    
     /* 회원탈퇴 버튼 */
    .deleteBtn{
        background-color:rgba(255, 173, 20, 0.8);
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .deleteBtn:focus{
        outline: none;
    }
    /* 정렬 form 꾸미기 */
	div#orderTypeSelect-container>small>a{
		text-decoration: none;
		color: rgba(0,0,0,0.6);
	}
}


@media all and (min-width:601px) and (max-width:1066px){
    /* Member Main Table */
    table.type{
        text-align:center; 
        width:100%; 
        padding:10px; 
        margin-top:10px;
        border-collapse: collapse;
    }
    table.type th{
        border-top:1px solid rgba(189,189,189,0.8);
        border-bottom: 1px solid rgba(189,189,189,0.8);
        line-height: 2;
        padding:4px;
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    table.type td{
        line-height:1.8;
        border-bottom: 1px solid rgba(189,189,189,0.4);
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    
    div.userSearch{
        text-align: right;
    }
    div.userSearch>form{
        display:inline;
    }
    div.userSearch>form>select{
        vertical-align: middle;
    }
    div.userSearch>form>input[type=text]{
        vertical-align: middle;
    }
    
    /* 정지 버튼 */
    .stopBtn{
        background-color:rgb(255, 79, 79);
        color:white;
        border:none;
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        margin-right: 3px;
    }
    .stopBtn:focus{
        outline: none;
    }
    /* 정지 취소 버튼 */
    .cancelBtn{
        background-color:white;
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .cancelBtn:focus{
        outline: none;
    }
    
     /* 회원탈퇴 버튼 */
    .deleteBtn{
        background-color:rgba(255, 173, 20, 0.8);
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .deleteBtn:focus{
        outline: none;
    }
    /* 정렬 form 꾸미기 */
	div#orderTypeSelect-container>small>a{
		text-decoration: none;
		color: rgba(0,0,0,0.6);
	}
}


@media all and (min-width:150px) and (max-width:600px){
    /* Member Main Table */
    table.type{
        text-align:center; 
        width:100%; 
        padding:10px; 
        margin-top:10px;
        border-collapse: collapse;
    }
    table.type th{
        border-top:1px solid rgba(189,189,189,0.8);
        border-bottom: 1px solid rgba(189,189,189,0.8);
        line-height: 2;
        padding:4px;
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    table.type td{
        line-height:1.8;
        border-bottom: 1px solid rgba(189,189,189,0.4);
        font-family: 'Nanum Gothic', sans-serif;
        color:rgba(0, 0, 0, 0.7);
    }
    
    div.userSearch{
        text-align: right;
    }
    div.userSearch>form{
        display:inline;
    }
    div.userSearch>form>select{
        vertical-align: middle;
    }
    div.userSearch>form>input[type=text]{
        vertical-align: middle;
    }
    
    /* 정지 버튼 */
    .stopBtn{
        background-color:rgb(255, 79, 79);
        color:white;
        border:none;
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        margin-right: 3px;
    }
    .stopBtn:focus{
        outline: none;
    }
    /* 정지 취소 버튼 */
    .cancelBtn{
        background-color:white;
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .cancelBtn:focus{
        outline: none;
    }
    
     /* 회원탈퇴 버튼 */
    .deleteBtn{
        background-color:rgba(255, 173, 20, 0.8);
        color:rgba(0, 0, 0, 0.7);
        border:1px solid rgba(189,189,189,0.8);
        cursor: pointer;
        border-top-right-radius:5px;
        border-bottom-right-radius:5px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
    }
    .deleteBtn:focus{
        outline: none;
    }
	/* 정렬 form 꾸미기 */
	div#orderTypeSelect-container>small>a{
		text-decoration: none;
		color: rgba(0,0,0,0.6);
	}
	.mobileDel{
		display:none;
	}
} 
    </style>
<%@include file='/view/admin/common/header.jsp' %>
    <!-- 콘텐츠 -->
 <section>
     <br/>
     <label id='pageName'>관리자설정</label>
     <br/>
     <br/>
     <br/>
     <div id='orderTypeSelect-container' style="float:left; ">
   		<small>
   			<!-- 선택된걸 누르면 반대로 가니까, 모양은 desc, 표시는 asc -->
   			<% if(orderTypeClass.equals("enroll")) {%>
	    		<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=enrollAsc&class=enroll' class='enroll' 
	    			<%=orderType.equals("enrollDesc")?"style='color: rgba(0,0,0,0.8);'":"style='display:none;'" %>>
	    		가입일↓</a>
	    		<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=enrollDesc&class=enroll' class='enroll'
	    			<%=orderType.equals("enrollAsc")?"style='color: rgba(0,0,0,0.8);'":"style='display:none;'" %>>
	    		가입일↑</a>
	    	<%} else { %>
	   			<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=enrollDesc&class=enroll' class='enroll'>
	    		가입일&nbsp;&nbsp;</a>
    		<%} %>
    		
    		<% if(orderTypeClass.equals("selId")) {%>
	    		<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=idAsc&class=selId' class='selId'
	    			<%=orderType.equals("idDesc")? "style='color: rgba(0,0,0,0.8);'":"style='display:none;'" %>>
	    		아이디↓</a>
	    		<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=idDesc&class=selId' class='selId'
	    			<%=orderType.equals("idAsc")? "style='color: rgba(0,0,0,0.8);'":"style='display:none;'" %>>
	    		아이디↑</a>
	    	<%} else { %>
	    		<a href='<%=request.getContextPath() %>/admin/manager/orderType?type=idDesc&class=selId' class='selId'>
	    		아이디&nbsp;&nbsp;</a>
	    	<%} %>
   		</small>
     </div>
     <!-- 문의사항 리스트 -->
     <table class='type' style='clear: both;'>
         <tr>
         	 <th style="width:5%;" class='mobileDel'></th>
             <th style="width:7%;">Id</th>
             <th style="width:14%;">Name</th>
             <th style="width:14%;" class='mobileDel'>Email</th>
             <th style="width:14%;">Phone</th>
             <th style="width:13%;" class='mobileDel'>EnrollDate</th>
             <th style="width:5%;" ></th>
         </tr>
         <% if(list==null|| list.isEmpty()) { %>
         <tr>
         	<td colspan='7' align='center'>
         		등록된 관리자가 없습니다.
        		</td>
        	</tr>
        	<%}
         for(User m:list) { %>
         <tr>
         	 <td class='mobileDel'>
         	 	<input type='hidden' class='hiddenAdminNo' value='<%=m.getNo() %>'/>
         	 </td>
             <td><%=m.getId() %></td>
             <td><%=m.getName() %></td>
             <td class='mobileDel'><%=m.getEmail() %></td>
             <td><%=m.getPhone() %></td>
             <td class='mobileDel'><%=m.getEnrollDate() %></td>
             <td>            	
             	<button class='deleteBtn' onclick='delAdmin(this);'>삭제</button>
             </td>
         </tr>
         <%} %>
     </table>
     <div style='margin-top:2px;'>
     	<div id='adminState-container' style='float:left; margin-top: 3px; '>
	     	<button class='stopBtn' onclick='createAdmin();'>추가</button>
	     	<form id='adminStateFrm' name='adminStateFrm' style="display:none;" 
	     		action='<%=request.getContextPath() %>/admin/manager/deleteAdmin' onsubmit='return adminDel_val();'>
	     		<input type='hidden' name='stateFrmAdminNo' id='stateFrmAdminNo' value=''/>
	     	</form>
	     	<form id='adminCreateFrm' name='adminCreate' style='display:none;'
	     	    action='<%=request.getContextPath() %>/admin/manager/createAdmin' onsubmit='return createAdmin_val();'>
	     	    <input type='hidden' name='userId' id='userId' value=''/>
	     	    <input type='hidden' name='userName' id='userName' value=''/>
	     	    <input type='hidden' name='userPw' id='userPw' value=''/>
	     	    <input type='hidden' name='userEmail' id='userEmail' value=''/>
	     	    <input type='hidden' name='userPhone' id='userPhone' value=''/>
     	    </form>
     	</div>
     	<div class='userSearch' style='float:right;' >
         	<form id='searchUser' name='searchUser' action="<%=request.getContextPath() %>/admin/manager/searchAdmin">    
	             <select name='searchType'>
	                 <option value='searchId'>아이디</option>
	                 <option value='searchName'>이름</option>
	             </select>
	             <input type='text' name='searchKeyword'/>
	             <button class='searchBtn' type='submit'><img src='<%=request.getContextPath() %>/img/adminImg/search.png'/></button>
	         </form>
     	</div>
     </div>
     <br/>
     <div class='pageChange' style='clear:both;'>
         <%=pageBar %>
     </div>
 </section>
</div>
<script>
    // 모바일 메뉴 열기 위한 함수
    function openAdminMobileMenu(){
        $('nav').toggle();
    }
    
    function delAdmin(el){
    	tr=el.parentNode.parentNode;
    	tr.style.backgroundColor="rgb(234, 242, 253)";
    	
    	adminNo=$(tr).children('td:first-of-type').children(".hiddenAdminNo").val();
    	console.log(adminNo);
    	$('#stateFrmAdminNo').val(adminNo);
    	$('#adminStateFrm').submit();
    }
    function adminDel_val(){
    	result=confirm("관리자를 삭제하시겠습니까?");
    	return result;
    }
    
    function createAdmin(){
    	$('#userId').val(prompt('아이디?'));
    	$('#userPw').val(prompt('비밀번호?'));
    	$('#userName').val(prompt('이름?'));
    	$('#userEmail').val(prompt('이메일?'));
    	$('#userPhone').val(prompt('전화번호?'));
    	$('#adminCreateFrm').submit();
    }
    function createAdmin_val(){
    	if($('#userId').val()!=null)
   		{
    		if($('#userPw').val()!=null)
   			{
   			if($('#userName').val()!=null)
  				{
  				if($('#userEmail').val()!=null)
 					{
					if($('#userPhone').val()!=null)
						{
							return true;
						}	
 					}
  				}
   			}
   		}
    	return false;
    }
</script>
</body>
</html>