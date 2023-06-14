// --------------------------------------> COLOURS
mtype {RED, GREEN}
// --------------------------------------> COLOURS of SENSORS
// --------------------------------------> SENSORS
chan NS_SENSE = [5] of {bool};
chan EW_SENSE = [5] of {bool};
chan WN_SENSE = [5] of {bool};
chan ES_SENSE = [5] of {bool};
chan NE_SENSE = [5] of {bool};
chan P_SENSE = [5] of {bool};
// --------------------------------------> END of SENSORS
// --------------------------------------> EMPTY SENSORS
#define NS_SENSE_NEMPTY (len(NS_SENSE) != 0)
#define EW_SENSE_NEMPTY (len(EW_SENSE) != 0)
#define WN_SENSE_NEMPTY (len(WN_SENSE) != 0)
#define ES_SENSE_NEMPTY (len(ES_SENSE) != 0)
#define NE_SENSE_NEMPTY (len(NE_SENSE) != 0)
#define P_SENSE_NEMPTY (len(P_SENSE) != 0)
// --------------------------------------> END of EMPTY SENSORS
// --------------------------------------> LOCKS
bool NS_LOCK, EW_LOCK, WN_LOCK, ES_LOCK, NE_LOCK, P_LOCK;
// --------------------------------------> END of Locks
// --------------------------------------> REQUEST
chan NS_REQ = [1] of {bool}; 
chan EW_REQ = [1] of {bool};
chan WN_REQ = [1] of {bool};
chan ES_REQ = [1] of {bool};
chan NE_REQ = [1] of {bool};
chan P_REQ = [1] of {bool};
// --------------------------------------> END of Request
// --------------------------------------> LIGHTS
mtype NS_LIGHT = RED;
mtype EW_LIGHT = RED;
mtype WN_LIGHT = RED;
mtype ES_LIGHT = RED;
mtype NE_LIGHT = RED;
mtype P_LIGHT = RED;
// --------------------------------------> END of Lights
// --------------------------------------> FAIRNESS
bool fair_array[5];
// --------------------------------------> END of Fairness Array
// --------------------------------------> FAIRNESS
bool NS_BUFFER, EW_BUFFER, WN_BUFFER, ES_BUFFER, NE_BUFFER, P_BUFFER;
// --------------------------------------> END of Fairness Array

// --------------------------------------> FAIR CHECK
inline fair_check(pointer) {
    printf("pointer = %d", pointer);
    fair_array[pointer] = true;
    bool result = true;
    int i;
    for (i : 0 .. (5 - 1)) {
        if
            :: fair_array[i] == false -> printf("elem=%d", i); result = false;
            :: else -> skip;
        fi;
    }; 
    printf("Result = %d", result);
    if
        :: result == true ->
            for (i : 0 .. (5 - 1)) {
                fair_array[i] = false;
            };
        :: else -> skip;
    fi;

}
// --------------------------------------> END FAIR CHECK

proctype generatorNS() {
    printf("NS car");
    do
         :: NS_SENSE!true; printf("NS arrived");
    od;
}

proctype controllerNS() {
    printf("NS Controller triggered");
    do
        :: if
            ::len(NS_SENSE) > 0 && !fair_array[0] -> 
            (!EW_LOCK && !WN_LOCK && !ES_LOCK && !P_LOCK) -> 
                NS_LOCK = true;
                NS_LIGHT = GREEN;
                printf("NS light is green");
                NS_SENSE?NS_BUFFER;
                NS_LIGHT = RED;
                NS_LOCK = false;
                printf("NS light is red");
        fi
        fair_check(0);
    od
}

proctype generatorEW() {
    printf("EW car approaching");
    do
         :: EW_SENSE!true; printf("EW car arrived");
    od;
}

proctype controllerEW() {
    printf("EW controller was triggered");
    do
    :: if
        ::(len(EW_SENSE) > 0 && !fair_array[1]) -> 
            (!NS_LOCK && !NE_LOCK && !WN_LOCK && !P_LOCK) ->
            EW_LOCK = true;
            EW_LIGHT = GREEN;
            printf("EW light is green");
            EW_SENSE?EW_BUFFER;
            EW_LIGHT = RED;
            EW_LOCK = false;
            printf("EW light is red");
        fi
        fair_check(1);
    od
}

proctype generatorES() {
    printf("NS car");
    do
         :: ES_SENSE!true; printf("ES car arrived");
    od;
}

proctype controllerES() {
    printf("ES controller was triggered");
    do
    :: if
        ::(len(ES_SENSE) > 0 && !fair_array[2]) -> 
            (!P_LOCK && !NE_LOCK) ->
            ES_LOCK = true;
            ES_LIGHT = GREEN;
            printf("ES light is green");
            ES_SENSE?ES_BUFFER;
            ES_LIGHT = RED;
            ES_LOCK = false;
            printf("ES light is red");
        fi
        fair_check(2);
    od 
}

proctype generatorWN() {
    printf("WN car");
    do
         :: WN_SENSE!true; printf("WN car arrived");
    od;
}

proctype controllerWN() {
    printf("WN controller was triggered");
    do
    :: if
        ::(len(WN_SENSE) > 0 && !fair_array[3]) -> 
            (!NS_LOCK && !EW_LOCK && !NE_LOCK) ->
            WN_LOCK = true;
            WN_LIGHT = GREEN;
            printf("WN light is green");
            WN_SENSE?WN_BUFFER;
            WN_LIGHT = RED;
            WN_LOCK = false;
            printf("WN light is red");
        fi
        fair_check(3);
    od
}

proctype generatorP() {
    printf("Pedestrian");
    do
         :: P_SENSE!true; printf("Pedestrian arrived");
    od;
}

proctype controllerP() {
    printf("P controller was triggered");
    do
    :: if
        ::(len(P_SENSE) > 0 && !fair_array[4]) -> 
            (!EW_LOCK && !ES_LOCK && !NE_LOCK) ->
            P_LOCK = true;
            P_LIGHT = GREEN;
            printf("P light is green");
            P_SENSE?P_BUFFER;
            P_LIGHT = RED;
            P_LOCK = false;
            printf("P light is red");
        fi
        fair_check(4);
    od
}

proctype environment() {
    run generatorNS();
    run controllerNS();
    run generatorEW();
    run controllerEW();
    run generatorES();
    run controllerES();
    run generatorWN();
    run controllerWN();
    run generatorP();
    run controllerP();
}

// Environment process for running the simulation
init {
    run environment();
}
// // Safety.
// ltl p1 { [] !((N_LIGHT == GREEN || S_LIGHT == GREEN) && (E_LIGHT == GREEN)) }
// // Liveness.
// ltl p2 { [] ((N_SENSE && (N_LIGHT == RED)) -> <> (N_LIGHT == GREEN)) }
// ltl p3 { [] ((S_SENSE && (S_LIGHT == RED)) -> <> (S_LIGHT == GREEN)) }
// ltl p4 { [] ((E_SENSE && (E_LIGHT == RED)) -> <> (E_LIGHT == GREEN)) }
// ltl p5 { [] ((P_SENSE && (P_LIGHT == RED)) -> <> (P_LIGHT == GREEN)) }
// // Fairness.
// ltl p6 { [] <> !((N_LIGHT == GREEN) && N_SENSE) }
// ltl p7 { [] <> !((S_LIGHT == GREEN) && S_SENSE) }
// ltl p8 { [] <> !((E_LIGHT == GREEN) && E_SENSE) }
// ltl p9 { [] <> !((P_LIGHT == GREEN) && P_SENSE) }