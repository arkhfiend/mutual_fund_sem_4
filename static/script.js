const API_KEY = "499d03534f224e8890dcd1f95376001c"
const url = "https://newsapi.org/v2/everything?q=financial&"



async function fetchData(query){
    const res = await fetch(`${url}${query}&apiKey=${API_KEY}`)
    const data = await res.json()
    return data
}
fetchData("all").then(data => renderMain(data.articles))

//menu btn
let mobilemenu = document.querySelector(".mobile")
let menuBtn = document.querySelector(".menuBtn")
let menuBtnDisplay = true;

menuBtn.addEventListener("click",()=>{
    mobilemenu.classList.toggle("hidden")
})


//render news 
function renderMain(arr){
    let mainHTML = ''
    for(let i = 0 ; i < arr.length ;i++){
        if(arr[i].urlToImage){
        mainHTML += ` <div class="card">
                        <a href=${arr[i].url}>
                        <img src=${arr[i].urlToImage} lazy="loading" />
                        <h4>${arr[i].title}</h4>
                        <div class="publishbyDate">
                            <p>${arr[i].source.name}</p>
                            <span>•</span>
                            <p>${new Date(arr[i].publishedAt).toLocaleDateString()}</p>
                        </div>
                        <div class="desc">
                           ${arr[i].description}
                        </div>
                        </a>
                     </div>
        `
        }
    }

    document.querySelector("main").innerHTML = mainHTML
}


// const searchBtn = document.getElementById("searchForm")
// const searchBtnMobile = document.getElementById("searchFormMobile")
// const searchInputMobile = document.getElementById("searchInputMobile") 
// const searchInput = document.getElementById("searchInput")

searchBtn.addEventListener("submit",async(e)=>{
    e.preventDefault()
    console.log(searchInput.value)

    const data = await fetchData(searchInput.value)
    renderMain(data.articles)

})
searchBtnMobile.addEventListener("submit",async(e)=>{
    e.preventDefault()
    const data = await fetchData(searchInputMobile.value)
    renderMain(data.articles)
})


async function Search(query){
    const data = await fetchData(query)
    renderMain(data.articles)
}


// code to search elements
// function search() {
//   let filter = document.getElementById('find').value.toUpperCase();
//   let item = document.querySelectorAll('.desc');
//   let l = document.getElementsByTagName('.desc');
//   for(var i = 0;i<=l.length;i++){
//   let a=item[i].getElementsByTagName('.desc')[0];
//   let value=a.innerHTML || a.innerText || a.textContent;
//   if(value.toUpperCase().indexOf(filter) >      -1) {
//   item[i].style.display="";
//   }
//   else
//   {
//   item[i].style.display="none";
//   }
//   }
//   }



