

// window.onload=recount_wins();

//$(document).on('turbolinks:load', recount_wins()); // Turbolinks 5

// document.ready=recount_wins();

$( document ).ready(function() {
   recount_wins();
});

function recount_wins() {

	alert("in recount_wins");

	var team_a = document.getElementsByClassName("team_a")[0].value;
  var team_b = document.getElementsByClassName("team_b")[0].value;

	alert("in recount_wins: " + team_a + " " + team_b);

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
	  alert("Changed Team" + link.value); 

	var new_team_id = link.value;		  

//  Now reset all the radio buttons to have the new team id

	var ddd = document.getElementsByClassName("winning_team_left");
                                             
  alert("Loadded ddd" + ddd.length + ddd[0].innerHTML);    	
	
	var fff = "";
	for (var i=0; i < ddd.length; i++) 
	{    
// 		  ddd[i].innerHTML = '<input value="3" name="mattch[games_attributes][0][winning_team_id]" id="mattch_games_attributes_0_winning_team_id_team_id" type="radio">'
//			alert("Changed team" + fff + "length: " + ddd.length + ddd[i].innerHTML);    	
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