jsp/servlet/mvc

# JSP_WebPJ_DY
웹 프로젝트 실습 수업정리 및 프로젝트

.java -> .class -> 외부 라이브러리

eclipse 웹 개발용, apache-tomcat 9.0
eclipse preference -> server -> runtime environment -> add -> tomcat 폴더
create a project -> web -> Dynamic Web project*
Java Resources > src/main/java -> java원본파일
src > main > webapp > jsp파일(META-INF, WEB-INK 폴더는 서버에서 사용하는 폴더)

run as server -> tomcat 9.0 -> port error > Servers폴더 -> Tomcat v9.0 ... -> server.xml -> 20or63 줄에 port변경
혹은 tomcat폴더에 있는 서버 설정 파일에서 변경

html -> xml(네임스페이스[태그] 사용자 지정), 환경설정 파일로 사용 -> json(경량화)

### JSP
> Java를 사용하여 서버 측에서 웹 페이지를 생성해 웹 브라우저로 전송하는 동적 웹 페이지 개발 프로그래밍 언어

서버에서 jsp -> java로 변환 -> class로 컴파일 -> 결과 출력
 > C:\Users\216\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\2023webPrjectB\org\apache\jsp
해당 경로에 jsp파일 저장 및 빌드

#### jsp 구성요소: 지시어/ 스크립트릿/ 선언부 etc
- 지시어: ```<%@지시어명 속성 ... %>``` jsp 환경 설정 명령어
   - ```<%@ page language="java" contentType=" ... %>``` -> jsp 페이지에 대한 환경 설정(언어, 인코딩 등)
   - ```<%@ include file="top.jsp"%> -> 페이지에 포함
- 스크립트릿: ```<% ... %>``` java코드
- 표현식: ```<%= ... %>``` 변수 및 메소드 값 리턴
- 선언부: ```<%! ... %>``` 변수 및 메소드 선언

#### 내장객체
- request
   - ```request.getParameter()``` :파라미터 읽기
   - ```request.getParameterValues()```
- response
   - ```response.sendRedirect()``` : 웹 브라우저에게 다른 페이지로 이동하라고 지시
- out :버퍼를 이용해서 내용을 출력
   - ```flush()``` : 버퍼의 내용을 모두 내보
   -  ```autoFLush()``` : true, false로 자동으로 내보낼지 말지 결
- session, application, pageContext
   - setAttribute("name", "value"): value는 Object객체
   - removeAttribute("name")
   - invalidate() : session 객체의 메소드, 모든 attribute를 제거
   - getAttribute("name:): return 값은 Object객체

- page 영역 : 동일한 페이지에서만 공유. 페이지를 벗어나면 소멸 
- request 영역 : 하나의 요청에 의해 호출된 페이지와 포워드(요청 전달)된 페이지까지 공유. 새로운 페이지를 요청(페이지 이동)하면 소멸 
- session 영역 : 클라이언트가 처음 접속한 후 웹 브라우저를 닫을 때까지 공유. 포워드나 페이지 이동 시에도 영역은 소멸되지 않음
- application 영역 : 한 번 저장되면 웹 애플리케이션이 종료될 때까지 유지. 즉, 서버가 셧다운되지 않는다면 언제까지든 공유되는 영역

* 내장객체 영역: page -> request -> session -> application (서버에서 메모리 생성 / 쿠키만 클라이언트에서 생성)
* 내장객체: page: pageContext, request: request, session: session, application: application

#### 액션태그
- 반드시 종료태그 사용
- <jsp:include>: 한 화면에 출력되도록 include -> 다만 서로 다른 페이지, 그저 한 화면에 출력(두 개의 페이지 영역)
   - ```<jsp:include page="이동할 페이지" flush="true"/>```
   - ```<jsp:include page="이동할 페이지" flush="false"/>``` //중복할게 있을 떄
   - 서로의 페이지에 데이터를 주고 받기(파라미터)
   ```
   <jsp:include page="이동할 페이지" flush="true>
     <jsp:param name="" value=""/>
   <jsp:include/>
   ```
   * <%@ include file=""%>은 같은 페이지 영역을 사용하여 출력됨
   * 실행되어지는 페이지 기준으로 path가 지정되어야 한다. -> 모듈화된 페이지에 a링크가 걸려있을 떄 이 링크는 실행되어지는 페이지를 기준으로 지정해야 한다.
- <jsp:forward> : redirect와 다르게 서버에서 다른 페이지로 변경한 뒤 클라이언트에 넘겨줌
- <jsp:useBean>, <jsp:setProperty>, <jsp:getProperty>
   - ```RegisterBean regBean = new com.dongyang.bean.RegisterBean();``` 는 ```<jsp:useBean class="com.dongyang.bean.RegisterBean" id="regBean" scope="session"></jsp:useBean>``` 와 같음
   - useBean의 scope는 어느 영역을 쓸 결정
   - ```String memId = request.getParameter("id"); regBean.setId(id);``` 는 ```<jsp:setProperty name="regBean" property="memid" value=<%request.getParameter("id")%> />```
   - ```<jsp:setProperty name="regBean" property="*" />``` 파라미터의 name과 DTO 주머니의 객체 이름이 같으면 property="*"을 이용하여 한번에 값을 가져올 수 있다
   - ```<jsp:getProperty property="email" name="regBean"/>``` `````<%=regBean.getEmail()`
- <jsp:param>

_response.sendRedirect() 와 <jsp:forward> : 전자는 클라이언트에게 해당 페이지(jsp)로 이동하라고 전달하여 클라이언트가 해당 페이지를 요청하지만 후자의 경우 서버에서 해당페이지를 바로 넘김_
_response.sendRedirect()는 2개의 request, response가 생기고 <jsp:forword>는 1개의 요청과 응답이 생긴다._

_데이터 전송 -> body: 데이터 본문, header: 데이터 주소 등등_
* post방식: 파라미터가 바디에 포함됨(보안, 데이터 제한 없음, 다루기 까다로움) -> 로그인창 등
* get방식: 파라미터가 헤더에 포함됨(보안에 취약, 전송하는 데이터의 크기가 제한 됨, 다루기 쉬움) -> 검색창 등

* 한글은 post의 경우 서버에서 ```request.setCharacterEncoding("utf-8")```을 통해 변환을 시켜주어야 한다.

#### MVC(Model View Controller) 모델
- Model: javaBean(데이터를 전송하기 위한 주머니)
   - DTO(Data Transform Object): 데이터 모음 (필드를 만들 떄 private로 만들고 getter, setter를 만든다)
   - DAO(Data Access Object): DB 접근 코드를 포함
- View: jsp
- controller: sublet

### Sublet

mysql
8.0.35
