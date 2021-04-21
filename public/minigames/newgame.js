const arr = ["https://media1.giphy.com/media/cfuL5gqFDreXxkWQ4o/200w.gif?c…47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200w.gif&ct=g", "https://media2.giphy.com/media/Kxy2YUDnDrvdxVsVb8/giphy.gif?…7i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=giphy.gif&ct=g", "https://media0.giphy.com/media/3o72EX5QZ9N9d51dqo/200w.gif?c…47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200w.gif&ct=g", "https://media4.giphy.com/media/aC45M5Q4D07Pq/200.gif?cid=ecf…e47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200.gif&ct=g", "https://media4.giphy.com/media/2x0VePimPaFJDpGZ7H/200w.gif?c…47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200w.gif&ct=g", "https://media3.giphy.com/media/OmK8lulOMQ9XO/200w.gif?cid=ec…47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200w.gif&ct=g", "https://media3.giphy.com/media/11c7UUfN4eoHF6/giphy.gif?cid=…7i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=giphy.gif&ct=g", "https://media0.giphy.com/media/26xBLq0QJdxy57CV2/200w.gif?ci…47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200w.gif&ct=g", "https://media1.giphy.com/media/5oBRpcOT04dq0/200.gif?cid=ecf…e47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200.gif&ct=g", "https://media3.giphy.com/media/ND6xkVPaj8tHO/200.gif?cid=ecf…e47i9shwstqrru0g0s1yb862ctr9fsfof6j57eplaly&rid=200.gif&ct=g"]
// const link = arr[Math.floor(Math.random()*arr.length)]


const elArr = []




document.addEventListener('DOMContentLoaded', function() {   

    
    for(i = 0; i < (Math.floor(Math.random()*10)); i++) {
   elArr.push(arr[Math.ceil(Math.random()*arr.length)]);
        }
        
        for(i = 0; i < elArr.length; i++) {
        catPic = document.createElement('img')
        const link = elArr[Math.floor(Math.random()*arr.length)]
        catPic.src = link 

        catPic.style.width = "200px";
        catPic.style.height = "200px";
        catPic.style.background = "url('cat-vector.jpg')";
        document.body.appendChild(catPic)
        }

        const cats = document.getElementsByTagName('img')

        for (const element of cats) {
      element.addEventListener('click', function() {
        element.remove();
      });
    }


});

const el = document.querySelectorAll('input')
const button = el[4]


let animals = document.getElementsByTagName('img')

button.addEventListener('click', function(event){
while (animals.length > 0 ) {
   event.preventDefault();
   event.clear();   
 }
});


