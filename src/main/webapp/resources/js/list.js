// Reject.js
function loadBookList(){
  // 1. GET : http://localhost:8081/book/api/books
  fetch("http://localhost:8081/book/api/books")
  .then(function(resp){
      if(!resp.ok){ // true
         throw new Error("not error");
      }
      return resp.json();// ?
   })
  .then(function(books){
      // 동적인뷰~~ table
      let html="";
      books.forEach(function(book){
        html+="<tr>";
        html+="<td>"+book.id+"</td>";
        html+="<td>"+book.title+"</td>";
        html+="<td>"+book.price+"</td>";
        html+="<td>"+book.author+"</td>";
        html+="<td>"+book.page+"</td>";
        html+="</tr>";
      });
       let tbody=document.getElementById("bookList");
       tbody.innerHTML=html;
     })
  .catch(function(error){
      console.log("error");
   });
}