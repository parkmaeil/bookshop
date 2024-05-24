function bookModifyData(id){
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

function goModify(id){
  // PUT : http://localhost:8081/book/api/books/{id} : id, JSON 데이터
 let title=document.getElementById("title").value;
 let price=document.getElementById("price").value;
 let author=document.getElementById("author").value;
 let page=document.getElementById("page").value;
 // JavaScript Object(JSON) --> String
 let formData={
    title : title,
    price : price,
    author : author,
    page : page
 };
 fetch("http://localhost:8081/book/api/books/"+id,{
    method: "PUT",
    headers : { "Content-Type" : "application/json" },
    body : JSON.stringify(formData)
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