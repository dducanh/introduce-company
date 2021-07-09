function Validator(options) {
    // validate
    function validate(inputElement, rule) {
        let errorMessage = rule.test(inputElement.value);
        let errorElement =
                inputElement.parentElement.querySelector(options.errorSelector);
        if (errorMessage) {
            errorElement.innerText = errorMessage;
        } else {
            errorElement.innerText = "";
        }

        return !errorMessage;
    }
    //get form to validate
    var formElement = document.querySelector(options.form);
    if (formElement) {
        options.rules.forEach(function (rule) {
            let inputElement = formElement.querySelector(rule.selector);
            if (inputElement) {
                // when user blur from input
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                };
                // when user enter to input
                inputElement.oninput = function () {
                    let errorElement =
                            inputElement.parentElement.querySelector(options.errorSelector);
                    errorElement.innerText = "";
                };
            }
        });
    }


    formElement.onsubmit = function (e) {
        let formValid = true;
        options.rules.forEach(function (rule) {
            let inputElement = formElement.querySelector(rule.selector);
            var isValid = validate(inputElement, rule);
            if (!isValid) {
                formValid = false;
            }
        });
        if (!formValid) {
            e.preventDefault();
        }
        else{
            alert("Thank you for your message. It has been sent.");
        }
    }
}

Validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : "The field is required.";
        },
    };
};

Validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            let regex =
                    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            return regex.test(value)
                    ? undefined
                    : "The e-mail address entered is invalid.";
        },
    };
};
