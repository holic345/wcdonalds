function openPopup(url, name, options){
    var form = document.createElement("form");
    form.setAttribute("charset", "UTF-8");
    form.setAttribute("method", "Post");  //Post 諛⑹떇
    form.setAttribute("action", url); //�붿껌 蹂대궪 二쇱냼
    form.setAttribute("target", name); //targetName

    document.body.appendChild(form);
    window.open('', name, options);
    form.submit()

    document.body.removeChild(form);
}