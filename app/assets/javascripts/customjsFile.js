

// function called on select team on add/edit Match 

// 		sends the selected team.id to the server
//      (and left/right ??)
//    get the team members back
//    update the players selections for one side 

function left_team_change(link) {

//	var strUser = link.options[link.selectedIndex].value;
//		var e = document.getElementById("elementId");

			alert("Changed Left Team" + link);  
			alert("Changed Team" + link.value); 
	var new_team_id = link.value;		  

//  Now reset all the radio buttons to have the new team id

	var ddd = document.getElementsByTagName("input");


	var fff = "";
	for (var i=0; i < ddd.length; i++) 
	{    
    if (ddd[i].type == "radio") 
    {
    	ddd[i].value = new_team_id;
    	fff = ddd[i].value;
			alert("Changed team" + fff + "length: " + ddd.length);    	
		}
	}
}

function right_team_change(link) {

//	var strUser = link.options[link.selectedIndex].value;
//		var e = document.getElementById("elementId");

			alert("Changed Right Team" + link);  
			alert("Changed Team" + link.value);

	var new_team_id = link.value;		  
	
//  Now reset all the radio buttons to have the new team id

	var ddd = document.getElementsByTagName("input");


	var fff = "";
	for (var i=0; i < ddd.length; i++) 
	{    
    if (ddd[i].type == "radio") 
    {
    	ddd[i].value = new_team_id;
    	fff = ddd[i].value;
			alert("Changed question" + fff + ddd.length);    	
		}
	}
}