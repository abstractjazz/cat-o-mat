
function fetchCats() {
    return fetch("https://api.thecatapi.com/v1/images/search")
      .then(resp => resp.json())
      .then(json => renderCats(json))
  }

  function renderCats(cats) {
    const main = document.querySelector('div.cat-container')
    cats.forEach(cat => {
      const img = document.createElement('img')
      img.src = cat.url
      img.width = "200";
      img.height ="200";
      img.id = "cat"
      main.appendChild(img)
    })
  }

  const button = document.querySelector('input#btn')
  button.addEventListener('click', function() {
    const cat = document.getElementById('cat')
   
    if (cat) {cat.remove();
     
    fetchCats();
  } else {
    fetchCats()
  }
  })


  
  document.addEventListener('click', function() {
    const catPic = document.getElementById('cat').src;
    document.getElementById('cat_cat_url').value = catPic
  });