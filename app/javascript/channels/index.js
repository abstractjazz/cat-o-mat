// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

function fetchCats() {
    return fetch("https://api.thecatapi.com/v1/images/search")
      .then(resp => resp.json())
      .then(json => renderCats(json))
  }
  
  function renderCats(cats) {
    const main = document.querySelector('body')
    cats.forEach(cat => {
      const h2 = document.createElement('h2')
      h2.innerHTML = cat.url
      main.appendChild(h2)
    })
  }
  
  document.addEventListener('click', function() {
    fetchCats()
  })
