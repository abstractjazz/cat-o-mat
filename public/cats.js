function fetchCats() {
    return fetch("https://api.thecatapi.com/v1/images/search")
      .then(resp => resp.json())
      .then(json => renderCats(json))
  }
  
  function renderCats(cats) {
    const main = document.querySelector('body')
    cats.forEach(cat => {
      const img = document.createElement('img')
      img.src = cat.url
      img.width = "200";
      img.height ="200";
      img.id = "cat"
      main.appendChild(img)
     
    })
  }
  
  const element = document.getElementById('btn')
  element.addEventListener('click', function() {
    const cat = document.getElementById('cat')
    if (cat) {cat.remove();
    fetchCats();
  } else {
    fetchCats()
  }
  })

  document.addEventListener('click', function() {
    document.getElementById('cat_cat_url').value = document.getElementById('cat').src
    });




