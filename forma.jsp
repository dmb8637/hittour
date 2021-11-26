<!DOCTYPE html>

<head>    
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <title>Заказ тура. Турагенство "Hit-Tour". Тел.+7(952)961-68-43 </title>
    <style>
/* Контейнер */
.modal {

/* Слой перекрытия */
overflow: auto;
position: fixed;
top: 0;
left: 0;
right: 0;
bottom: 0;
background: rgba(0,0,0,0.5);
z-index: 10000;

/* Трансформации прозрачности при открытии  */
-webkit-transition: opacity 500ms ease-in;
-moz-transition: opacity 500ms ease-in;
transition: opacity 500ms ease-in;

/* Скрываем изначально */
opacity: 0;
pointer-events: none;
}

/* Показываем модальное окно */
.modal:target {
opacity: 1;
pointer-events: auto;
}

/* Содержание */
.modal > div {
width: 400px;
background: #ffffff;
position: relative;
margin: 10% auto;

/* По умолчанию минимизируем анимацию */
-webkit-animation: minimise 500ms linear;

/* Придаем хороший вид */
padding: 30px;
-moz-border-radius: 7px;
border-radius: 7px;
-webkit-box-shadow: 0 3px 20px rgba(0,0,0,0.9);
-moz-box-shadow: 0 3px 20px rgba(0,0,0,0.9);
box-shadow: 0 3px 20px rgba(0,0,0,0.9);
text-shadow: 0 1px 0 #fff;
}

/* Изменяем анимацию при открытии модального окна*/
.modal:target > div {
-webkit-animation-name: bounce;
}

.modal h2 {
font-size: 36px;
padding: 0 0 20px;
}

@-webkit-keyframes bounce {
  0% {
   -webkit-transform: scale3d(0.1,0.1,1);
   -webkit-box-shadow: 0 3px 20px rgba(0,0,0,0.9);
  }
  55% {
   -webkit-transform: scale3d(1.08,1.08,1);
   -webkit-box-shadow: 0 10px 20px rgba(0,0,0,0);
  }
  75% {
   -webkit-transform: scale3d(0.95,0.95,1);
   -webkit-box-shadow: 0 0 20px rgba(0,0,0,0.9);
  }
  100% {
   -webkit-transform: scale3d(1,1,1);
   -webkit-box-shadow: 0 3px 20px rgba(0,0,0,0.9);
  }
}

@-webkit-keyframes minimise {
  0% {
   -webkit-transform: scale3d(1,1,1);
  }
  100% {
   -webkit-transform: scale3d(0.1,0.1,1);
  }
}

/* Ссылка на кнопку Закрыть */
.modal a[href="#close"] {
position: absolute;
right: 0;
top: 0;
color: transparent;
}

/* Сбрасываем изменения */
.modal a[href="#close"]:focus {
outline: none;
}

/* Создаем кнопку Закрыть */
.modal a[href="#close"]:after {
content: 'X';
display: block;

/* Позиционируем */
position: absolute;
right: -10px;
top: -10px;
width: 20px;
padding: 1px 1px 1px 2px;

/* Стили */
text-decoration: none;
text-shadow: none;
text-align: center;
font-weight: bold;
background: #000;
color: #ffffff;
border: 3px solid #ffffff;
-moz-border-radius: 20px;
border-radius: 20px;
-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
box-shadow: 0 1px 3px rgba(0,0,0,0.5);
}

.modal a[href="#close"]:focus:after,
.modal a[href="#close"]:hover:after {
-webkit-transform: scale(1.1,1.1);
-moz-transform: scale(1.1,1.1);
}

.modal a[href="#close"]:focus:after {
outline: 0px solid #000;
}

/* Открываем модальное окно */
a.openModal {

}

a.openModal:hover,
a.openModal:focus {
}

.modal .modal_title {
  display: block;
  text-align: center;
  font-size: 22pt;
}

a {text-decoration: none;}

/* Style inputs */
input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    cursor: pointer;
	border-radius:5px;
}

input[type=submit]:hover {
    background-color: #45a049;
}


</style>
<script type="text/javascript">
    
	window.onload = function() {
        var item = document.querySelector(".item");
        var rezStr = decodeURIComponent(window.location.href);
        item.value = rezStr.replace('https://hit-tour.ru/forma.jsp#modal?booklink=','');
    }
	
	window.addEventListener("DOMContentLoaded", function() {
	function setCursorPosition(pos, elem) {
   		 elem.focus();
   		 if (elem.setSelectionRange) elem.setSelectionRange(pos, pos);
    		else if (elem.createTextRange) {
       		 var range = elem.createTextRange();
       		 range.collapse(true);
        		range.moveEnd("character", pos);
        		range.moveStart("character", pos);
        		range.select()
			}
	}

</script
</head>

<body style="font-family:Calibri">
	<div id="modal" class="modal">
		<div>
			<h3>Заказ тура</h3>
			<p> Пожалуйста, оставьте свои контактные данные (имя, телефон, e-mail), наш менеджер свяжется с Вами в ближайшее время.</p>
			<form action="send.php" method="post">
				<p><input type="text" name="fio" placeholder="Укажите ФИО" required></p>
				<p><input type="text" name="email" placeholder="Укажите e-mail" required></p>
				<p><input type="text" name="phone" placeholder="Укажите телефон" required></p>
				<p><input class="item" name="booklink" type="hidden"></p>
				<br><input type="submit" value="Отправить заказ" style="margin-top: 5px;">
			</form>
			<a href="#close" onclick="history.back(); return false;" title="Закрыть">Закрыть</a>
		</div>        
	</div>
</body>
</html>
