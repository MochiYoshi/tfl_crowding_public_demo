# tfl_crowding_public_demo

This project leverages TfL's oyster card tap in/out data, where they have modelled out passenger loads throughout each station on the network at 15 minute intervals throughout the day. I used the TfL API to retrieve train timetables in order to calculate a 'crowdedness score', as well as to retrieve average travel times between links (a pair of adjacent stations). I then reconstructed the TfL transportation network as a graph in networkx, and added crowding and travel time as edge weights. The graph solves for the shortest path between origin A and destination B based on minimising crowding, subject to certain restrictions around excess travel time (relative to the fastest route). This way it tries to strike a balance between a more comfortable journey, without resorting to taking circular routes that are twice as long. The results are displayed using Plotly Dash, and was deployed with Heroku to tfl-crowding-dash-lite.herokuapp.com and was publicly accessible.

Unfortunately with Salesforce no longer supporting the free tier of Heroku as of November 2022, this dash app can no longer be accessed online.

Example of Crowding Activity for a Station
![Crowding Activity for a Station](https://github.com/MochiYoshi/tfl_crowding_public_demo/blob/main/tfl_crowding_app_example.jpg?raw=true)

Visualisation of Top 3 Optimal Routes Suggested
![Visualisation of Top 3 Optimal Routes Suggested](https://github.com/MochiYoshi/tfl_crowding_public_demo/blob/main/crowding_dashboard_1.png?raw=true)
-----
Example of Top Ranked Route for Low Crowding + Reasonably Quick Commute
![Example of Top Ranked Route for Least Crowding while not much slower than the fastest route](https://github.com/MochiYoshi/tfl_crowding_public_demo/blob/main/crowding_dashboard_2.png?raw=true)
-----
Example of 2nd Ranked Route (Least Crowded but Slow)
![Example of 2nd Ranked Route (Lower crowding but slower/interchanges)](https://github.com/MochiYoshi/tfl_crowding_public_demo/blob/main/crowding_dashboard_3.png?raw=true)
-----
Example of 3rd Ranked Route (Very busy route, but fast)
![Example of 3rd Ranked Route (Busy)](https://github.com/MochiYoshi/tfl_crowding_public_demo/blob/main/crowding_dashboard_4.png?raw=true)
-----

