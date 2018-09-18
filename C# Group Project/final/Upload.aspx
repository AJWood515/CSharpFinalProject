<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="final.Upload" ClientIDMode="Static" %>

 <asp:Content ID="head" ContentPlaceHolderID="headPlaceholder" runat="server">
     <link href="Content/UploadCSS.css" rel="stylesheet" />
 </asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <form id="form1" runat="server">
        <p id = "colors" class="check" style="background-color: white";>
            &nbsp;</p>
            <button class = "button" id = "colorButton" type ="button">Change Color</button>
	
	    <p id = "test">&nbsp;</p>
	
	    <br/>
		
	    <p id = "name"></p>
	
	    <br/>
		<button class = "button" id = "previous" type ="button">Previous</button>
		
		<button class = "button" id = "delete" type ="button">Delete</button>
		
		<button class = "button" id = "next" type ="button">Next</button><br/><br/>
		
	    <h3 id = "info">Please enter an image url to put in the slideshow.</h3>
	
		<input type="text" id="new_image_box" size= "60" />	
	
        <button class = "button" id = "newimage" type ="button">Add New Image</button>	
        <br/><br/>

        <h3 id = "info2">Or find an image on your computer to add to the slides.
            </h3>
            <br/>
	
        <input type ="file" id ="browseButton"/>

        <button class = "button" id = "newImageBrowse" type ="button" onchange ="openFile(event)">Add New Image</button>

        <script>
            var openFile = function (event) {
                var input = event.target;

                var reader = new FileReader();
                reader.onload = function () {
                    var dataURL = reader.result;
                    var output = document.getElementById('output');
                    output.src = dataURL;
                };
                images.push(reader.readAsDataURL(input.files[0]));
        
            };


            var images = new Array();
                images[0] = "Images/cartoon-cat-min.jpg";
                images[1] = "Images/dinosaurs-min.jpg";
                images[2] = "Images/dragon-min.jpg";

            var colors = new Array();
            colors[0] = "blue";
            colors[1] = "red";
            colors[2] = "yellow";

	
	        var pic = document.getElementById("newimage");
	        var next = document.getElementById("next");
	        var prev = document.getElementById("previous");
	        var deletePic = document.getElementById("delete");
	        var colors = document.getElementById("colorButton");
	        var browse = document.getElementById("newImageBrowse");
	        var counter = 0;
	        var count = 0;
	
	        document.getElementById("test").innerHTML =("<p class = 'test'><img src=" + 
	        images[counter] + " width='250' height='250' /></br></br>" + 
	        images[counter] + "</p>");
	
	        next.addEventListener('click', function(){
		        if(counter < images.length-1)
		        getEl();
		        counter++;
		
		        if(counter > images.length-1)
			        counter = 0;
			        getEl();
            })
		
	        prev.addEventListener('click', function(){
               if(counter < images.length-1)
		        getEl();
                counter--;
		
		        if(counter < 0)
			        counter = (images.length-1);
			        getEl();
            })
	
	        pic.addEventListener('click', function(){
		        if(document.getElementById("new_image_box").value != '')
		        {
			        var picTextBox = document.getElementById("new_image_box").value;
			        images.push(picTextBox);
			        document.getElementById("info").innerHTML =  'Your image was added!';
		        }
		        else
		        alert('Please enter a valid URL.')
	        })

	        browse.addEventListener('click', function () {
	            
	            var picTextBox = document.getElementById("browseButton").value;
        
	            //picTextBox.Save(".../Images/user.jpg");
	    
	            images.push(picTextBox);
	            document.getElementById("info").innerHTML = 'Your image was added!';
	    
	        })

	        colors.addEventListener('click', function () {
	            switch (count) {
	                case 0:
	                    document.getElementById("colors").style.backgroundColor = "red";
	                    count++;
	                    break;
	                case 1:
	                    document.getElementById("colors").style.backgroundColor = "blue";
	                    count++;
	                    break;
	                case 2:
	                    document.getElementById("colors").style.backgroundColor = "yellow";
	                    count++;
	                    break;
	                case 3:
	                    document.getElementById("colors").style.backgroundColor = "black";
	                    count++;
	                    break;
	                case 4:
	                    document.getElementById("colors").style.backgroundColor = "green";
	                    count++;
	                    break;
	                case 5:
	                    document.getElementById("colors").style.backgroundColor = "purple";
	                    count++;
	                    break;
	                default:
	                    count = 0;
	                    document.getElementById("colors").style.backgroundColor = "white";
	                    break;
	            }

	   
	    
	        })

	        deletePic.addEventListener('click', function(){
		        takeOut();
	        })

        function getEl()
        {
	
	        document.getElementById("test").innerHTML =("<p class = 'test'><img src=" + 
	        images[counter] + " width='250' height='250'/>");
	
	        document.getElementById("name").innerHTML = ("<p ="+ images[counter] +">" 
	        + images[counter] + "</p>");
        }

        function takeOut()
        {
	        images.splice(counter,1);
	        document.getElementById("test").innerHTML =("<p class = 'test'><img src=" + 
	        images[counter] + " width='250' height='250'/>");
	        document.getElementById("name").innerHTML = ("<p ="+ images[counter] +">" + images[counter] + "</p>");
	        if(counter < images.length-1)
		        getEl();
		        counter++;
		
	        if(counter > images.length-1)
		        counter = 0;
		        getEl();
        }
 

        </script>

    </form>

</asp:Content>
