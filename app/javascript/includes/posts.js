document.addEventListener("turbolinks:load", function() {
    let form = document.querySelector('#save_views');
    if(form !== null) form.submit();
})