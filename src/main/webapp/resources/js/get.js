function getBookDetail(id){
 // GET : http://localhost:8081/book/api/books/{id} : id : 책번호
 fetch("http://localhost:8081/book/api/books/"+id)
 .then(function(resp){
   if(!resp.ok){
     throw new Error("not error");
   }
   return resp.json(); // {       }
  })
 .then(function(book){
    //let title=book.title;
    document.getElementById("title").value=book.title;
    document.getElementById("price").value=book.price;
    document.getElementById("author").value=book.author;
    document.getElementById("page").value=book.page;
  })
 .catch(function(error){
   console.log(error);
 });

}
function goDel(id){
  // DELETE : http://localhost:8081/book/api/books/{id}
  fetch("http://localhost:8081/book/api/books/"+id,{
    method : "DELETE"
   })
  .then(function(resp){
     if(!resp.ok){
       throw new Error("not error");
     }
    location.href="/book/ui/list";
   })
  .catch(function(error){
     console.log(error);
   });
}