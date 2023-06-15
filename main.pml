// --------------------------------------> COLOURS
mtype {RED, GREEN}
// --------------------------------------> COLOURS of SENSORS
// --------------------------------------> SENSORS
chan N_SENSE = [5] of {bool};
chan E_SENSE = [5] of {bool};
chan W_SENSE = [5] of {bool};
chan ES_SENSE = [5] of {bool};
chan NE_SENSE = [5] of {bool};
chan P_SENSE = [5] of {bool};
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
mtype N_LIGHT = RED;
mtype E_LIGHT = RED;
mtype W_LIGHT = RED;
mtype P_LIGHT = RED;
// --------------------------------------> END of Lights
// --------------------------------------> FAIRNESS
bool fair_array[5];
// --------------------------------------> END of Fairness Array
// --------------------------------------> FAIRNESS
bool N_BUFFER, E_BUFFER, W_BUFFER, P_BUFFER;
// --------------------------------------> END of Fairness Array

// --------------------------------------> FAIR CHECK
inline fair_check(pointer) {
    printf("Pointer = %d \n", pointer);
    fair_array[pointer] = true;
    bool result = true;
    int i;
    for (i : 0 .. (3 - 1)) {
        if
            :: fair_array[i] == false -> printf("Element=%d \n", i); result = false;
            :: else -> skip;
        fi;
    }; 
    printf("Result = %d \n", result);
    if
        :: result == true ->
            for (i : 0 .. (3 - 1)) {
                fair_array[i] = false;
            };
        :: else -> skip;
    fi;

}
// --------------------------------------> END FAIR CHECK

proctype generatorN() {
    printf("N car \n");
    do
        :: N_SENSE!true; 
        printf("N car was generated \n");
    od;
}

proctype controllerN() {
    printf("N Controller triggered \n");
    do
        :: if
            ::len(N_SENSE) > 0 && !fair_array[0] -> 
            (!EW_LOCK && !WN_LOCK && !ES_LOCK && !P_LOCK) -> 
                NS_LOCK = true;
                NE_LOCK = true;
                N_LIGHT = GREEN;
                printf("N light is green \n");
                N_SENSE?N_BUFFER;
                N_LIGHT = RED;
                NS_LOCK = false;
                NE_LOCK = false;
                printf("N light is red \n");
        fi
        fair_check(0);
    od
}

proctype generatorE() {
    printf("E car approaching \n");
    do
        :: E_SENSE!true; 
        printf("E car was generated \n");
    od;
}

proctype controllerE() {
    printf("EW controller was triggered \n");
    do
    :: if
        ::(len(E_SENSE) > 0 && !fair_array[1]) -> 
            (!NS_LOCK && !NE_LOCK && !WN_LOCK && !P_LOCK) ->
            EW_LOCK = true;
            ES_LOCK = true;
            E_LIGHT = GREEN;
            printf("E light is green \n");
            E_SENSE?E_BUFFER;
            E_LIGHT = RED;
            EW_LOCK = false;
            ES_LOCK = false;
            printf("E light is red \n");
        fi
        fair_check(1);
    od
}

proctype generatorW() {
    printf("W car \n");
    do
        :: W_SENSE!true; 
        printf("W car arrived \n");
    od;
}

proctype controllerW() {
    printf("WN controller was triggered \n");
    do
    :: if
        ::(len(W_SENSE) > 0 && !fair_array[2]) -> 
            (!NS_LOCK && !EW_LOCK && !NE_LOCK) ->
            WN_LOCK = true;
            W_LIGHT = GREEN;
            printf("W light is green \n");
            W_SENSE?W_BUFFER;
            W_LIGHT = RED;
            WN_LOCK = false;
            printf("W light is red \n");
        fi
        fair_check(2);
    od
}

proctype generatorP() {
    printf("Pedestrian \n");
    do
         :: P_SENSE!true; printf("Pedestrian arrived \n");
    od;
}

proctype controllerP() {
    printf("P controller was triggered \n");
    do
    :: if
        ::(len(P_SENSE) > 0 && !fair_array[3]) -> 
            (!EW_LOCK && !ES_LOCK && !NE_LOCK) ->
            P_LOCK = true;
            P_LIGHT = GREEN;
            printf("P light is green \n");
            P_SENSE?P_BUFFER;
            P_LIGHT = RED;
            P_LOCK = false;
            printf("P light is red \n");
        fi
        fair_check(3);
    od
}

proctype environment() {
    run generatorN();
    run controllerN();
    run generatorE();
    run controllerE();
    run generatorW();
    run controllerW();
    run generatorP();
    run controllerP();
}

// Environment process for running the simulation
init {
    run environment();
}
// // Safety.
// ltl p1 { [] !((NS_LIGHT == GREEN || EW_LIGHT == GREEN) && (WN_LIGHT == GREEN)) }
// // Liveness.
// ltl p2 { 
//     [] ((NS_SENSE && (NS_LIGHT == RED)) -> <> (NS_LIGHT == GREEN)) &&
//     [] ((EW_SENSE && (EW_LIGHT == RED)) -> <> (EW_LIGHT == GREEN)) &&
//     [] ((WN_SENSE && (WN_LIGHT == RED)) -> <> (WN_LIGHT == GREEN)) &&
//     [] ((ES_SENSE && (ES_LIGHT == RED)) -> <> (ES_LIGHT == GREEN)) &&
// }
// // Fairness.
// ltl p6 { 
//     [] <> !((N_LIGHT == GREEN) && N_SENSE) } &&
//     [] <> !((S_LIGHT == GREEN) && S_SENSE) &&
//     [] <> !((E_LIGHT == GREEN) && E_SENSE) &&
//     [] <> !((P_LIGHT == GREEN) && P_SENSE) 
// }