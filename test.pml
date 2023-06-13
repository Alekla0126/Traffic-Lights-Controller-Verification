#define NUM_SENSORS 4

mtype = {NORTH, SOUTH, EAST, PEDESTRIAN}

chan sensors[NUM_SENSORS] = [0] of {mtype}
chan locks[2] = [0] of {bool}
chan traffic_lights[NUM_SENSORS] = [0] of {mtype}

bool cars_waiting[NUM_SENSORS] = [false]
bool pedestrians_waiting = false

proctype CarSensor(int index)
{
    bool car_detected = false;

    do
    :: car_detected == false ->
        if
        :: sensors[index] ? ->
            car_detected = true;
            if
            :: locks[index/2] == false ->
                traffic_lights[index] ! mtype;
                locks[index/2] ! true;
                cars_waiting[index] = true;
            :: else -> skip
            fi
        :: else -> skip
        fi
    :: car_detected == true ->
        if
        :: sensors[index] ? ->
            if
            :: cars_waiting[index] == false ->
                traffic_lights[index] ! mtype;
                cars_waiting[index] = true;
            :: else -> skip
            fi
        :: else -> skip
        fi;
        car_detected = false;
    od
}

proctype PedestrianSensor()
{
    bool pedestrian_detected = false;

    do
    :: pedestrian_detected == false ->
        if
        :: sensors[3] ? ->
            pedestrian_detected = true;
            if
            :: locks[1] == false ->
                traffic_lights[3] ! mtype;
                locks[1] ! true;
                pedestrians_waiting = true;
            :: else -> skip
            fi
        :: else -> skip
        fi
    :: pedestrian_detected == true ->
        if
        :: sensors[3] ? ->
            if
            :: pedestrians_waiting == false ->
                traffic_lights[3] ! mtype;
                pedestrians_waiting = true;
            :: else -> skip
            fi
        :: else -> skip
        fi;
        pedestrian_detected = false;
    od
}

proctype TrafficLight(mtype direction)
{
    bool light_green = false;

    do
    :: traffic_lights[direction] ? ->
        if
        :: locks[direction/2] ->
            light_green = true;
            locks[direction/2] ! false;
            if
            :: sensors[direction] ? ->
                locks[direction/2] ! true;
                light_green = false;
            :: else -> skip
            fi
        :: else -> skip
        fi
    :: sensors[direction] ? ->
        if
        :: light_green ->
            skip;
        :: else -> skip
        fi
    :: else -> skip
    od
}

init
{
    run CarSensor(0);
    run CarSensor(1);
    run CarSensor(2);
    run CarSensor(3);
    run PedestrianSensor();
    run TrafficLight(NORTH);
    run TrafficLight(SOUTH);
    run TrafficLight(EAST);
    run TrafficLight(PEDESTRIAN);
}
