#define GREEN 1
#define RED 0

// Define variables
bool N_SENSE = false;
bool S_SENSE = false;
bool E_SENSE = false;
bool P_SENSE = false;
bool W_SENSE = false;

bool NS_LOCK = false;
bool WE_LOCK = false;

bool N_REQ = false;
bool S_REQ = false;
bool E_REQ = false;
bool P_REQ = false;
bool W_REQ = false;

byte N_LIGHT = RED;
byte S_LIGHT = RED;
byte E_LIGHT = RED;
byte P_LIGHT = RED;
byte W_LIGHT = RED;

chan N_channel = [0] of { byte };
chan S_channel = [0] of { byte };
chan E_channel = [0] of { byte };
chan P_channel = [0] of { byte };
chan W_channel = [0] of { byte };


proctype sleep(int time) {
  byte i = 0;
  do
  :: (i < time) -> {
    i = i + 1;
  }
  od
}

proctype trafficGenerator() {
    byte selection;
    select(selection : 1 .. 5);
    if
    :: (selection == 1) ->
        N_SENSE = true;
    // :: (selection == 2) ->
    //     S_SENSE = true;
    :: (selection == 3) ->
        E_SENSE = true;
    :: (selection == 4) ->
        P_SENSE = true;
    :: (selection == 5) ->
        W_SENSE = true;
    fi
}

proctype environment() {
  do
  :: true ->
      run trafficGenerator();
      if
      :: (!N_REQ && N_SENSE) ->
          N_REQ = true;
          N_SENSE = false;
          printf("Car from North\n");
          // Introduce a small delay.
          byte delay = 100;
          do
          :: delay > 0 ->
              delay--;
          :: else ->
              // Process the request after the delay.
              run controllerN();
          od
      :: (!E_REQ && E_SENSE) ->
          E_REQ = true;
          E_SENSE = false;
          printf("Car from East\n");
          // Introduce a delay
          delay = 100;
          do
          :: delay > 0 ->
              delay--;
          :: else ->
              // Process the request after the delay
              run controllerE();
          od
      :: (!P_REQ && P_SENSE) ->
          P_REQ = true;
          P_SENSE = false;
          printf("Pedestrian\n");
          // Introduce a delay
          delay = 100;
          do
          :: delay > 0 ->
              delay--;
          :: else ->
              // Process the request after the delay
              run controllerP();
          od
      :: (!W_REQ && W_SENSE) ->
          W_REQ = true;
          W_SENSE = false;
          printf("Car from West\n");
          // Introduce a delay
          delay = 100;
          do
          :: delay > 0 ->
              delay--;
          :: else ->
              // Process the request after the delay
              run controllerW();
          od
      fi
      run sleep(1000);
  od
}

// Controller processes
proctype controllerN() {
    do
    :: true ->
        if
        ::(N_REQ && !WE_LOCK && !N_SENSE && !E_REQ && !W_REQ) ->
            atomic {
                NS_LOCK = true;
                N_LIGHT = GREEN;
                printf("Controller N: N_LIGHT = %d\n", N_LIGHT);
                if
                ::(S_LIGHT == RED) ->
                    NS_LOCK = false;
                fi;
                N_LIGHT = RED;
                N_REQ = false;
            }
        fi
    od
}

proctype controllerE() {
    do
    :: true ->
        if
        ::(E_REQ && !NS_LOCK && !E_SENSE && !W_REQ && !E_REQ) ->
            atomic {
                WE_LOCK = true;
                E_LIGHT = GREEN;
                printf("Controller E: E_LIGHT = %d\n", E_LIGHT);
                // E_SENSE!1;
                E_LIGHT = RED;
                E_REQ = false;
                NS_LOCK = false; // Reset the NS_LOCK variable
            }
        fi
    od
}

proctype controllerW() {
    do
    :: true ->
        if
        ::(W_REQ && !NS_LOCK && !E_REQ && !N_REQ) ->
            atomic {
                NS_LOCK = true;
                W_LIGHT = GREEN;
            }
            printf("Controller W: W_LIGHT = %d\n", W_LIGHT);
            // W_channel!1;
            atomic {
                W_LIGHT = RED;
                W_REQ = false;
            }
        fi
    od
}

proctype controllerP() {
    do
    :: true ->
        if
        ::(P_REQ && !NS_LOCK && !WE_LOCK && !N_REQ && !E_REQ) ->
            atomic {
                NS_LOCK = true;
                WE_LOCK = true;
                P_LIGHT = GREEN;
            }
            printf("Controller P: P_LIGHT = %d\n", P_LIGHT);
            // P_channel!1;
            atomic {
                P_LIGHT = RED;
                printf("You reached the reset\n");
                P_REQ = false;
            }
        fi
    od
}

// proctype controllerS() {
//     do
//     :: true ->
//         if
//         ::(S_REQ &&!WE_LOCK &&!N_REQ &&!E_REQ) ->
//             atomic {
//                 WE_LOCK = true;
//                 S_LIGHT = GREEN;
//             }
//             printf("Controller S: S_LIGHT = %d\n", S_LIGHT);
//             S_channel!1;
//             if
//             ::(N_LIGHT == RED) ->
//                 NS_LOCK = false;
//             fi;
//             atomic {
//                 S_LIGHT = RED;
//                 S_REQ = false;
//                 WE_LOCK = false; // Reset the WE_LOCK variable
//             }
//         fi
//     od
// }

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