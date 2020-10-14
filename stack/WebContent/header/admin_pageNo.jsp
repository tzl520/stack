<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   


<div class="span6" style="margin-right: 30px">
          <div class="dataTables_paginate paging_bootstrap pagination">
            <ul>
            	<c:if test="${pageNo==1 }">
					<li class="disabled">
                		<a href="javascript:void(0);"><< 上一页</a>
             		</li>	
				</c:if>
				<c:if test="${pageNo>1 }">
					<li class="prev">
                		<a href="javascript:gotopage(${pageNo-1})"><< 上一页</a>
             	 	</li>
				</c:if>
				 <c:choose>
        <c:when test="${pageCount <= 6}">
            <c:set var="begin" value="1"/>
            <c:set var="end" value="${pageCount}"/>
        </c:when>
        <%--页数超过了6页--%>
        <c:otherwise>
            <c:set var="begin" value="${pageNo - 1}"/>
            <c:set var="end" value="${pageNo + 3}"/>
            <%--如果begin减1后为0,设置起始页为1,最大页为6--%>
            <c:if test="${begin -1 <= 0}">
                <c:set var="begin" value="1"/>
                <c:set var="end" value="6"/>
            </c:if>
            <%--如果end超过最大页,设置起始页=最大页-5--%>
            <c:if test="${end > pageCount}">
                <c:set var="begin" value="${pageCount - 5}"/>
                <c:set var="end" value="${pageCount}"/>
            </c:if>
        </c:otherwise>
    </c:choose>
    <%--遍历--%>
    <c:forEach var="i" begin="${begin}" end="${end}">
        <%--当前页,选中--%>
        <c:choose>
            <c:when test="${i == pageCount}">
                <li class="active"><a href="#">${i}</a></li>
            </c:when>
            <%--不是当前页--%>
            <c:otherwise>
                <li><a href="javascript:gotopage(${i })">${i}</a></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>
				<c:if test="${pageNo == pageCount }">
					<li class="next">
                		<a href="javascript:;">下一页  >></a>
              		</li>
				</c:if>
              	<c:if test="${pageNo < pageCount }">
					<li class="next">
                		<a href="javascript:gotopage(${pageNo+1})">下一页  >></a>
              		</li>
				</c:if>
            </ul>
          </div>
        </div>