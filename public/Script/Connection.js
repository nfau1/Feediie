$(document).ready(function () {
    $("#seePassword").mousedown(function() {
        $("#password").get(0).type = 'text';
    });

    $("#seePassword").mouseup(function() {
        $("#password").get(0).type = 'password'
    });

    $("#btnSubmit").click(function (e) {
        let email = $("#email").val()
        let password = $("#password").val()
        let rememberMe = document.getElementById("rememberMe").checked

        document.getElementById("matchError").hidden = true;
        
        let isValid = true

        var mailFormat = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
        if(!email.match(mailFormat)){
            document.getElementById("emailError").hidden = false;
            isValid = false;
        }else{
            document.getElementById("emailError").hidden = true;
        }

        if(!password.trim() ){
            document.getElementById("passwordError").hidden = false;
            isValid = false;
        }else{
            document.getElementById("passwordError").hidden = true;
        }
        
        if (isValid) {
            $.post("/ajax.php?entity=user&action=connection",
            {
                'email': email,
                'password': password,
                'rememberMe': rememberMe
            })
            .fail(function (e){
                console.log("fail", e)
            })
            .done(function (e){         
                data = JSON.parse(e);
                if (data.status == 'success') {
                    document.location.href = data.data.page;
                } else {
                    document.getElementById("matchError").hidden = false;
                }
            })
        }else{
            $("html, body").animate({scrollTop: 0},"slow");
        }
    
    })

    document.getElementById("email").addEventListener("keyup", function(event) {
        // Number 13 is the "Enter" key on the keyboard
        if (event.keyCode === 13) {
            event.preventDefault();
            document.getElementById("btnSubmit").click();
        }
    });
    document.getElementById("password").addEventListener("keyup", function(event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            document.getElementById("btnSubmit").click();
        }
    });


    $("#btnForgotten").click(function (e) {
        let emailForgotten = $("#email").val()
        
        let isValid = true
    
        if (!emailForgotten.trim()) {
            console.log(email);
            document.getElementById("emailError").hidden = false;
            isValid = false
        }
    
        var mailFormat = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/;
        if(!emailForgotten.match(mailFormat)){
            document.getElementById("emailError").hidden = false;
            isValid = false;
        }else{
            document.getElementById("emailError").hidden = true;
        }
        //Pas encore fait
        if (isValid) {
            $.post("/ajax.php?entity=user&action=passwordForgotten",
            {
                'email': emailForgotten
            })
            .fail(function (e){
                console.log("fail", e)
            })
            .done(function (e){
                if(e['status'] === 'success'){
                    console.log("Success");
                    document.location.href = "/connection";
                }else{
                    //Error
                }
            })
        }
    
    })
});
