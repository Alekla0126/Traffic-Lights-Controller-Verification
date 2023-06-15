// --------------------------------------> COLOURS
mtype {RED, GREEN}
// --------------------------------------> End of COLOURS of SENSORS
// --------------------------------------> SENSORS
chan N_SENSE = [5] of {bool};
chan E_SENSE = [5] of {bool};
chan W_SENSE = [5] of {bool};
chan P_SENSE = [5] of {bool};
// --------------------------------------> END of SENSORS
// --------------------------------------> LOCKS
bool NS_LOCK, EW_LOCK, WN_LOCK, ES_LOCK, NE_LOCK, P_LOCK;
// --------------------------------------> END of Locks
// --------------------------------------> LIGHTS
mtype N_LIGHT = RED;
mtype E_LIGHT = RED;
mtype W_LIGHT = RED;
mtype P_LIGHT = RED;
// --------------------------------------> END of Lights
// --------------------------------------> FAIRNESS
bool fair_array[5];
// --------------------------------------> END of Fairness Array
// --------------------------------------> REQUEST
bool N_REQ, E_REQ, W_REQ, P_REQ;
// --------------------------------------> END of Request
// --------------------------------------> FAIR CHECK
inline fair_check(pointer) {
    printf("Pointer = %d \n", pointer);
    fair_array[pointer] = true;
    bool result = true;
    int i;
    for (i : 0 .. (4 - 1)) {
        if
            :: fair_array[i] == false -> printf("Element=%d \n", i); result = false;
            :: else -> skip;
        fi;
    }; 
    printf("Result = %d \n", result);
    if
        :: result == true ->
            for (i : 0 .. (4 - 1)) {
                fair_array[i] = false;
            };
        :: else -> skip;
    fi;

}
// --------------------------------------> END FAIR CHECK

proctype generatorN() {
    atomic {
        printf("N car \n");
        do
            :: N_SENSE!true; 
            printf("N car was generated \n");
        od;
    }
}

proctype controllerN() {
    atomic { 
        printf("N Controller triggered \n");
        do
            :: if
                ::len(N_SENSE) > 0 && !fair_array[0] -> 
                (!EW_LOCK && !WN_LOCK && !ES_LOCK && !P_LOCK) -> 
                    NS_LOCK = true;
                    NE_LOCK = true;
                    N_LIGHT = GREEN;
                    printf("N light is green \n");
                    N_SENSE?N_REQ;
                    N_LIGHT = RED;
                    NS_LOCK = false;
                    NE_LOCK = false;
                    printf("N light is red \n");
            fi
            fair_check(0);
        od
    }
}

proctype generatorE() {
    atomic {
        printf("E car approaching \n");
        do
            :: E_SENSE!true; 
            printf("E car was generated \n");
        od
    }
}

proctype controllerE() {
    atomic {
        printf("EW controller was triggered \n");
        do
        :: if
            ::(len(E_SENSE) > 0 && !fair_array[1]) -> 
                (!NS_LOCK && !NE_LOCK && !WN_LOCK && !P_LOCK) ->
                EW_LOCK = true;
                ES_LOCK = true;
                E_LIGHT = GREEN;
                printf("E light is green \n");
                E_SENSE?E_REQ;
                E_LIGHT = RED;
                EW_LOCK = false;
                ES_LOCK = false;
                printf("E light is red \n");
            fi
            fair_check(1);
        od
    }
}

proctype generatorW() {
    atomic {
        printf("W car \n");
        do
            :: W_SENSE!true; 
            printf("W car arrived \n");
        od;
    }
}

proctype controllerW() {
    atomic {
        printf("WN controller was triggered \n");
        do
        :: if
            ::(len(W_SENSE) > 0 && !fair_array[2]) -> 
                (!NS_LOCK && !EW_LOCK && !NE_LOCK) ->
                WN_LOCK = true;
                W_LIGHT = GREEN;
                printf("W light is green \n");
                W_SENSE?W_REQ;
                W_LIGHT = RED;
                WN_LOCK = false;
                printf("W light is red \n");
            fi
            fair_check(2);
        od
    }
}

proctype generatorP() {
    atomic {
        printf("Pedestrian \n");
        do
            :: P_SENSE!true; printf("Pedestrian arrived \n");
        od;
    }
}

proctype controllerP() {
    atomic {
        printf("P controller was triggered \n");
        do
        :: if
            ::(len(P_SENSE) > 0 && !fair_array[3]) -> 
                (!EW_LOCK && !ES_LOCK && !NE_LOCK) ->
                P_LOCK = true;
                P_LIGHT = GREEN;
                printf("P light is green \n");
                P_SENSE?P_REQ;
                P_LIGHT = RED;
                P_LOCK = false;
                printf("P light is red \n");
            fi
            fair_check(3);
        od
    }
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

// Safety Property.
ltl safetyN { [] !((N_LIGHT == GREEN) && ((E_LIGHT == GREEN) || (W_LIGHT == GREEN))) }
ltl safetyE { [] !((E_LIGHT == GREEN) && ((N_LIGHT == GREEN) || (P_LIGHT == GREEN))) }
ltl safetyW { [] !((W_LIGHT == GREEN) && ((E_LIGHT == GREEN) || (N_LIGHT == GREEN))) }
ltl safetyP { [] !((P_LIGHT == GREEN) && ((E_LIGHT == GREEN) || (W_LIGHT == GREEN))) }
// Liveness Properties.
ltl liveness_1 { [] ((len(N_SENSE) > 0) && (N_LIGHT == RED) -> <> (N_LIGHT == GREEN)) }
ltl liveness_2 { [] ((len(E_SENSE) > 0) && (E_LIGHT == RED) -> <> (E_LIGHT == GREEN)) }
ltl liveness_3 { [] ((len(W_SENSE) > 0) && (W_LIGHT == RED) -> <> (W_LIGHT == GREEN)) }
ltl liveness_4 { [] ((len(P_SENSE) > 0) && (P_LIGHT == RED) -> <> (P_LIGHT == GREEN)) }
// Fairness Properties.
ltl fairness_1 { [] <> !((N_LIGHT == GREEN) && N_SENSE[0] == true) }
ltl fairness_2 { [] <> !((E_LIGHT == GREEN) && E_SENSE[0] == true) }
ltl fairness_3 { [] <> !((W_LIGHT == GREEN) && W_SENSE[0] == true) }
ltl fairness_4 { [] <> !((P_LIGHT == GREEN) && P_SENSE[0] == true) }
