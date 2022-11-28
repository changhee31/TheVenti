function check_input() {
    let login = document.login_form;
    let id=login.id_val.value;
    let pw=login.pw_val.value;
    if (!id)
    {
        alert("아이디를 입력하세요!");
        document.login_form.id_val.focus();
        return;
    }
    if (!pw)
    {
        alert("비밀번호를 입력하세요!");
        return;
    }
    login.method="post";
    login.action="#이동할곳";
    login.submit();
 }