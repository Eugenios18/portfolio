const rssFeed = "https://feeds.simplecast.com/54nAGcIl";

fetch(rssFeed, {  
        method: 'GET'
    }
).then(response => {
    return response.text()
})
.then(str => {
    var xmlDoc = $.parseXML(str);
    //$xml = $(xmlDoc);
    const items = xmlDoc.querySelectorAll("item");

    let news = '';

    for (let i = 0; i < 5; i++) {
        var title = items[i].querySelector("title").textContent;
        var description = items[i].querySelector("description").textContent;
        var pubDate = items[i].querySelector("pubDate").textContent;
        var link = items[i].querySelector("link").textContent;
        // console.log(title, description, pubDate, link);

        news = news +
            `<article>
                <h3>${title}</h3>
                ${description.substring(0, 500)}(...)
                <br>
                <br>
                ${pubDate}
                <a href = "${link}">${link}</a>
                <hr>
            </article>`
    }

    document.getElementById('news').innerHTML = news;

})



// const rssFeed = "http://rss.cnn.com/rss/cnn_topstories.rss";
// // xmlDoc = $.parseXML(xml),
// // $xml = $(xmlDoc),
// // $title = $xml.find('title');

// // $("#title").append($title.text());

// fetch(rssFeed)
// .then(response => response.text())
// .then(str => new window.DOMParser().parseFromString(str, "text/xml"))
// .then(data => {
//   console.log(data);
//   const items = data.querySelectorAll("item");
//   let html = ``;
//   items.forEach(el => {
//     html += `
//       <article>
//         <img src="${el.querySelector("link").innerHTML}/image/large.png" alt="">
//         <h2>
//           <a href="${el.querySelector("link").innerHTML}" target="_blank" rel="noopener">
//             ${el.querySelector("title").innerHTML}
//           </a>
//         </h2>
//       </article>
//     `;
//   });
//   document.body.insertAdjacentHTML("beforeend", html);
// });