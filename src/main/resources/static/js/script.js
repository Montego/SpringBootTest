const openRegisterBtn = document.querySelector('.js-open-register');
const closeBtn = document.querySelector('.js-close-btn');
const registerForm = document.querySelector('.registration_form');


openRegisterBtn.addEventListener('click', () => {
    registerForm.classList.remove('hidden');
});

closeBtn.addEventListener('click', () => {
    registerForm.classList.add('hidden');
});

