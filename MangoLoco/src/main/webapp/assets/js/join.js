const form = document.getElementById('form');
uField = form.querySelector('.username');
const username = document.getElementById('username');
eField = form.querySelector('.email');
const email = document.getElementById('email');
pField = form.querySelector('.password');
const password = document.getElementById('password');
p2Field = form.querySelector('.password2');
const password2 = document.getElementById('password2');
const errorIcon = '<i class="icon fa-solid fa-triangle-exclamation"></i>&nbsp';
let isDuplication = false;

// show input error message
function showError(input, message) {
	// const formControl = input.parentElement;
	// formControl.className = 'form-control error';
	$(input).closest('.field').addClass('shake error');
	$(input).closest('.field').removeClass('valid');
	$(input).closest('.input-area').next().html(errorIcon + message);
}

// show success message
function showSuccess(input) {
	// formControl = input.parentElement;
	// formControl.className = 'form-control success';
	$(input).closest('.field').addClass('valid');
	$(input).closest('.field').removeClass('error');


}

//check email is valid
function checkEmail(input) {
	const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if (re.test(input.value.trim())) {
		showSuccess(input);
		return true;
	} else {
		showError(input, '유효한 이메일이 아닙니다');
		return false;
	}
}

//check required fields
function checkRequired(inputArr) {
	let isCheckReq = false;
	inputArr.forEach(function(input) {
		if (input.value.trim() === '') {
			showError(input, `${getFieldName(input)}를 입력해주세요`);
			isCheckReq = false;
		} else {
			isCheckReq = true;
		}
	});
	return isCheckReq;
}

//check input lenght
function checkLength(input, min, max) {
	if (input.value === "") {
		showError(input, `${getFieldName(input)}를 입력해주세요`);
	}
	else if (input.value.length < min) {
		showError(input, `${getFieldName(input)} 은 ${min} 글자 이상이어야 합니다`);
		return false;
	} else if (input.value.length > max) {
		showError(input, `${getFieldName(input)} 은 ${max} 글자 이하이어야 합니다`);
		return false;
	} else {
		showSuccess(input);
		return true;
	}
}

// check passwords match

function checkPasswordsMatch(input1, input2) {
	if (input1.value !== input2.value) {
		showError(input2, 'Password가 일치하지 않습니다');
		return false;
	} else if (input2.value === "") {
		showError(input2, 'password를 입력하세요');
		return false;
	} else {
		showSuccess(input2);
		return true;
	}
}

// Get fieldname
function getFieldName(input) {
	return input.id.charAt(0).toUpperCase() + input.id.slice(1);
}

function dupcheck(isDuplication) {
	let temp = "";
	if (!isDuplication) {
		showError(email, "중복확인이 완료되지 않았습니다");
	}
}

$('#username').keyup(function() { checkLength(username, 3, 15); })
$('#password').keyup(function() { checkLength(password, 3, 25); })
$('#password2').keyup(function() { checkPasswordsMatch(password, password2); })
// Event listeners

form.addEventListener('submit', function(e) {
	e.preventDefault();

	let isCR = checkRequired([username, password, password2]);
	let isuCL = checkLength(username, 3, 15);
	let ispCL = checkLength(password, 3, 25);
	let isCPM = checkPasswordsMatch(password, password2);
	dupcheck(isDuplication);
	setTimeout(() => { //remove shake class after 500ms
		$('.username').removeClass("shake");
		$('.email').removeClass("shake");
		$('.password').removeClass("shake");
		$('.password2').removeClass("shake");
	}, 500);
	if (isCR && isuCL && ispCL && isCPM && isDuplication) {
		//ajax 데이터 전송
	}
});
/*document.getElementById('emailCheck').addEventListener('click', function() { // 이 코드는 바로 밑의 ajax 코드로 변경!(중복확인)
	if (checkRequired([email]) && checkEmail(email)) {
		isDuplication = true;
		$('.email').children('.error-txt').addClass('success');
		$('.email').children('.success').html(`<ion-icon name="shield-checkmark-outline"></ion-icon>&nbsp사용 가능한 email입니다`);
	} else {
		$('.email').children('.error-txt').removeClass('success');
		isDuplication = false;
	}
	setTimeout(() => { //remove shake class after 500ms
		$('.username').removeClass("shake");
		$('.email').removeClass("shake");
		$('.password').removeClass("shake");
		$('.password2').removeClass("shake");
	}, 500);
})*/
$('#emailCheck').on(
	{
		'click': function() {
			if (checkEmail(email)) {

				$.ajax({
					url: "CheckIdCon",
					type:'post',
					data: "email="+ $('#email').val(),
					dataType: "text",
					success: function(data) {
						console.log(data);
						let temp = "";
						if (data == "true") {
							// 중복 이메일 일때
							isDuplication = false;
							$('.email').children('.error-txt').removeClass('success');
							showError(email,'중복된 이메일입니다');
						} else {
							// 사용 가능 이메일일때
							$('.email .error-txt').addClass('success');
							temp += '<ion-icon name="shield-checkmark-outline"></ion-icon>&nbsp사용 가능한 이메일입니다'
							$('.email .error-txt').html(temp);
							isDuplication = true;
						}
					},
					error: function(e) {
					}
				})
			}
		}
	})
