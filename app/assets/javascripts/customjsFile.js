

// window.onload=recount_wins();

//$(document).on('turbolinks:load', recount_wins()); // Turbolinks 5

// document.ready=recount_wins();
// $( document ).ready(function() {



$(document).on('turbolinks:load', function() {
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

	var new_team_id = link.value;		  
                                           
  var xhttp;
  xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
       
      var stuff = this.responseText.substr(84);

			//  Now reset all the radio buttons to have the new team id
			
			var ddd = document.getElementsByClassName("select_player_left");

			for (var i=0; i < ddd.length; i++) 
			{    
 		  	ddd[i].innerHTML = stuff;
			}
    }
 	};

  var my_path = "/team_players/" + new_team_id;
  xhttp.open("GET", my_path, true);
  xhttp.send();

	alert("after send"+stuff)

}

function right_team_change(link) {

	var new_team_id = link.value;		  
	
  var xhttp;
  xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
       
      var stuff = this.responseText.substr(84);

			//  Now reset all the radio buttons to have the new team id
			
			var ddd = document.getElementsByClassName("select_player_right");

			for (var i=0; i < ddd.length; i++) 
			{    
 		  	ddd[i].innerHTML = stuff;
			}
    }
 	};

  var my_path = "/team_players/" + new_team_id;
  xhttp.open("GET", my_path, true);
  xhttp.send();

	alert("after send"+stuff)
}