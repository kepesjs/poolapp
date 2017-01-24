

// window.onload=recount_wins();

//$(document).on('turbolinks:load', recount_wins()); // Turbolinks 5

// document.ready=recount_wins();

$( document ).ready(function() {
   recount_wins();
});

function recount_wins() {

//	alert("in recount_wins");

	var team_a = document.getElementsByClassName("team_a")[0].value;
  var team_b = document.getElementsByClassName("team_b")[0].value;

//	alert("in recount_wins: " + team_a + " " + team_b);

	var ddd = document.getElementsByClassName("winning_team");
	var outp = document.getElementsByClassName("current_score");
                                             
	var team_a_score = 0;
	var team_b_score = 0;
	
	for (var i=0; i < ddd.length; i++) 
	{    
		if (ddd[i].value == 0)
		  { break; }

		if (ddd[i].value == team_a) {
			team_a_score += 1
		}
		else if (ddd[i].value == team_b) {
			team_b_score += 1
		}

		outp[i].innerHTML = "<h5>" + team_a_score + " - " + team_b_score + "</h5>";

	}
}

// function called on select team on add/edit Match 

// 		sends the selected team.id to the server
//      (and left/right ??)
//    get the team members back
//    update the players selections for one side 

function left_team_change(link) {

//	var strUser = link.options[link.selectedIndex].value;
//		var e = document.getElementById("elementId");

	alert("Changed Left Team" + link);  
// 	  alert("Changed Team" + link.value); 

	var new_team_id = link.value;		  

//  Now reset all the radio buttons to have the new team id

	var ddd = document.getElementsByClassName("select_player_left");
                                             
//  alert("Loadded ddd" + ddd.length + ddd[0].innerHTML);  
//  alert("Loadded ddd" + ddd.length + ddd[0]);  

  // testing //
  var xhttp;
  var stuff = ' ';

  xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
       alert("got responce"); 
       alert("this" + this.responseText);
       
       stuff = this.responseText.substr(84);

       alert("this" + stuff);

       // document.getElementById("txtHint").innerHTML = this.responseText;
    }
  };

  var my_path = "/team_players/" + new_team_id;
  xhttp.open("GET", my_path, true);
  xhttp.send();

	alert("after send"+stuff)

	var fff = "";
	for (var i=0; i < ddd.length; i++) 
	{    
 		  ddd[i].innerHTML = stuff;
 		  alert("Changed team" + fff + "length: " + ddd.length + ddd[i].innerHTML);    	
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
 //   	ddd[i].value = new_team_id;
    	fff = ddd[i].value;
//			alert("Changed question" + fff + ddd.length);    	
		}
	}
}