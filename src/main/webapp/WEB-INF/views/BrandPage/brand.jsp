<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/brand_style.css" />
<title>Insert title here</title>
<header>
<%@include file="../../../../resources/common/header.jsp" %>       
</header>
</head>
<img src="../img/coffee.jpg" alt="">
<img src="../img/coffee.jpg" alt="">
<img src="../img/coffee.jpg" alt="">
<img src="../img/coffee.jpg" alt="">
<body>
<table class="brand_images">
        <script>
            //이미지
            document.write("<tr class='images'>");
            for (i = 1; i < 6; i++) {
                document.write(
                    "<td><a href='brand" + i + "'><img src='resources/brandimg/brand_" + i + ".jpg' width='250', height='150'></a></td>"
                );
            }
            document.write("<tr class='images'>");
            for (i = 6; i < 11; i++) {
                document.write(
                    "<td><a href='brand" + i + "'><img src='resources/brandimg/brand_" + i + ".jpg' width='250', height='150'></a></td>"
                );
            }
        </script>
    </table>
    <div class="box">
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>
            <input type="search" id="search" placeholder="브랜드 명을 입력하세요." />
        </div>
    </div>
    <div id="brand_search">
        <table class="brand_table">
            <tr>
                <td><a href="#ㄱ">ㄱ</a></td>
                <td><a href="">ㄲ</a></td>
                <td><a href="">ㄴ</a></td>
                <td><a href="">ㄷ</a></td>
                <td><a href="">ㄸ</a></td>
                <td><a href="">ㄹ</a></td>
                <td><a href="">ㅁ</a></td>
                <td><a href="">ㅂ</a></td>
                <td><a href="">ㅃ</a></td>
                <td><a href="">ㅅ</a></td>
                <td><a href="">ㅆ</a></td>
                <td><a href="">ㅇ</a></td>
                <td><a href="">ㅈ</a></td>
                <td><a href="">ㅉ</a></td>
                <td><a href="">ㅊ</a></td>
                <td><a href="">ㅋ</a></td>
                <td><a href="">ㅌ</a></td>
                <td><a href="">ㅍ</a></td>
                <td><a href="">ㅎ</a></td>
            </tr>
            <tr>
                <td><a href="">A</a></td>
                <td><a href="">B</a></td>
                <td><a href="">C</a></td>
                <td><a href="">D</a></td>
                <td><a href="">E</a></td>
                <td><a href="">F</a></td>
                <td><a href="">G</a></td>
                <td><a href="">H</a></td>
                <td><a href="">I</a></td>
                <td><a href="">J</a></td>
                <td><a href="">K</a></td>
                <td><a href="">L</a></td>
                <td><a href="">M</a></td>
                <td><a href="">N</a></td>
                <td><a href="">O</a></td>
                <td><a href="">P</a></td>
                <td><a href="">Q</a></td>
                <td><a href="">R</a></td>
                <td><a href="">S</a></td>
            </tr>
            <tr>
                <td><a href="">T</a></td>
                <td><a href="">U</a></td>
                <td><a href="">V</a></td>
                <td><a href="">W</a></td>
                <td><a href="">X</a></td>
                <td><a href="">Y</a></td>
                <td><a href="">Z</a></td>
                <td><a href="">0-9</a></td>
            </tr>
        </table>
    </div>
    <hr />
    <div class="brand_name">
        <dl>ㄱ <br>
            <dt>
            <dd id="ㄱ"><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㄲ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㄴ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㄷ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㄸ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㄹ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅁ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅂ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅃ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅅ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅆ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅇ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅈ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅉ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅊ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅋ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅌ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅍ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>ㅎ
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>A
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>B
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>C
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>D
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>E
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>F
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>G
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>H
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>I
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>J
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>K
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>L
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>M
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>N
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>O
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>P
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>Q
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>R
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>S
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>T
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>U
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>V
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>W
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>X
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>Y
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>Z
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
        <dl>0-9
            <dt>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            <dd><a href="">브랜드 이름</a></dd>
            </dt>
        </dl> <br><br>
    </div>

<footer>
<%@include file="../../../../resources/common/footer.jsp" %>
</footer>
</body>
</html>