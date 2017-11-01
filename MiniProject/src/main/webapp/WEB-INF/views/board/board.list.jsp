<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- Page Content -->
<div class="container">
	<h1 class="my-4">목록</h1>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="card mb-3">
				<div class="card-body">
					<div class="topArea">
						<div class="searchArea">
							<form class="form-inline my-2 my-lg-0 mr-lg-2">
					            <div class="input-group">
					            	<div class="input-group-btn">
							            <button id="search" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">제목 
							            	<span class="caret"></span>
							            </button>
								        <ul class="dropdown-menu" role="menu" aria-labelledby="search">
								          <li role="presentation"><a role="menuitem"  href="#">제목</a></li>
								          <li role="presentation"><a role="menuitem"  href="#">작성자</a></li>
								        </ul>
							        </div>
					           		<div class="input-group-btn">
						            	<input class="pull-left form-control" type="text" placeholder="검색어를 입력하세요.">
						            	<span class="input-group-btn">
						            	</span>
						                <button class="btn btn-primary" type="button" >
						                	<span class="fa fa-search" aria-hidden="true"></span>
						                </button>
						        	</div>
					        	</div>
					     	</form>
						</div>
						<div class="btnArea">
					  		<button type="button" class="pull-right btn btn-primary" onclick="Common.goUrl('/board/write');">글작성</button>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>등록일자</th>
								</tr>
							</thead>
							<!-- 본문 영역 -->
							<tbody>
								<tr>
									<td>1</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Junior Technical Author</td>
									<td>San Francisco</td>
									<td>66</td>
									<td>2009/01/12</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Software Engineer</td>
									<td>London</td>
									<td>41</td>
									<td>2012/10/13</td>
								</tr>
								<tr>
									<td>5</td>
									<td>Personnel Lead</td>
									<td>Edinburgh</td>
									<td>35</td>
									<td>2012/09/26</td>
								</tr>
								<tr>
									<td>6</td>
									<td>Development Lead</td>
									<td>New York</td>
									<td>30</td>
									<td>2011/09/03</td>
								</tr>
								<tr>
									<td>7</td>
									<td>Chief Marketing Officer (CMO)</td>
									<td>New York</td>
									<td>40</td>
									<td>2009/06/25</td>
								</tr>
								<tr>
									<td>8</td>
									<td>Pre-Sales Support</td>
									<td>New York</td>
									<td>21</td>
									<td>2011/12/12</td>
								</tr>
								<tr>
									<td>9</td>
									<td>Sales Assistant</td>
									<td>Sidney</td>
									<td>23</td>
									<td>2010/09/20</td>
								</tr>
								<tr>
									<td>10</td>
									<td>Chief Executive Officer (CEO)</td>
									<td>London</td>
									<td>47</td>
									<td>2009/10/09</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 페이징 영역 -->
				<nav>
				</nav>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
	alert("board");
});
</script>