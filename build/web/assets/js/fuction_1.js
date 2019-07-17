function fileSelected(evt) {
    var files = evt.target.files;
    var type = '';
	var d ='';
    var fr = new FileReader();
    fr.onload = function(event)
    {
        if(type.indexOf("image") == 0){
            document.getElementById('fileContent').innerHTML = "<br><center> <img  style='width:100px;height:100px;' src='" + event.target.result + "' /></center>";
            document.getElementById('fileContent').innerHTML += "<br/>";
            d= event.target.result;
            d = d.replace("data:;","data:" + type + ";");
            document.getElementById('fileContent').innerHTML += "<strong> </strong> <input type='hidden' value=" + d+">";
        }
    }
     
    for (var i = 0, f; f = files[i]; i++) {
       
      //Gives name of file : f.name
      //Gives type of file : f.type e.g. text/plain or image/png etc
      //Gives size of file : f.size (in bytes)
      //Gives last modified date : f.lastModifiedDate
       
      var fileCopy = f.slice(0, f.size); //i.e. read entire file, as reading half image file doesn't solve any purpose
       
      type = f.type;
    if(f.type.indexOf("image") == 0)
        fr.readAsDataURL(fileCopy); //on successful read, fr.onload function will be called and that will populate the result in fileContent container
    }
  }
   
  //attach change event of file control
  document.getElementById('files').addEventListener('change', fileSelected, false);