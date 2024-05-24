function goRegister(){
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
 //console.log(JSON.stringify(formData));
 // POST : http://localhost:8081/book/api/books : JSON data
 fetch("http://localhost:8081/book/api/books",{
    method : "POST",
    headers : { "Content-Type" : "application/json" },
    body : JSON.stringify(formData)
  })
 .then(function(resp){
     if(!resp.ok){
       throw new Error("not error");
     }
    //console.log(resp.text()); // ?
    location.href="/book/ui/list";
  })
 .catch(function(error){
    console.log(error);
  });
}