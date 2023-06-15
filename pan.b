	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM fairness_4 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM fairness_3 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM fairness_2 */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM fairness_1 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness_4 */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness_3 */
;
		;
		;
		;
		
	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness_2 */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM liveness_1 */
;
		;
		;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safetyP */
;
		
	case 27: // STATE 1
		goto R999;

	case 28: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safetyW */
;
		
	case 29: // STATE 1
		goto R999;

	case 30: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safetyE */
;
		
	case 31: // STATE 1
		goto R999;

	case 32: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM safetyN */
;
		
	case 33: // STATE 1
		goto R999;

	case 34: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 35: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 36: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC environment */

	case 37: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 38: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 39: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 40: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 41: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 42: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 43: // STATE 7
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 44: // STATE 8
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 45: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controllerP */
;
		;
		;
		;
		
	case 48: // STATE 5
		;
		now.P_LIGHT = trpt->bup.ovals[1];
		now.P_LOCK = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 49: // STATE 9
		;
		now.P_LOCK = trpt->bup.ovals[2];
		now.P_LIGHT = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.P_SENSE, XX-1, 0, ((int)now.P_REQ), 1);
		now.P_REQ = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 50: // STATE 17
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.ovals[3];
		((P7 *)_this)->_13_8_4_i = trpt->bup.ovals[2];
		((P7 *)_this)->_13_8_4_result = trpt->bup.ovals[1];
		now.fair_array[3] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 52: // STATE 26
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.ovals[1];
		((P7 *)_this)->_13_8_4_result = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 53: // STATE 26
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 26
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 55: // STATE 32
		goto R999;

	case 56: // STATE 34
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.ovals[1];
	/* 0 */	((P7 *)_this)->_13_8_4_result = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 57: // STATE 37
		;
		((P7 *)_this)->_13_8_4_i = trpt->bup.ovals[1];
		now.fair_array[ Index(((P7 *)_this)->_13_8_4_i, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 58: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC generatorP */
;
		;
		
	case 60: // STATE 2
		;
		_m = unsend(now.P_SENSE);
		;
		goto R999;

	case 61: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controllerW */
;
		;
		;
		;
		
	case 64: // STATE 5
		;
		now.W_LIGHT = trpt->bup.ovals[1];
		now.WN_LOCK = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 65: // STATE 9
		;
		now.WN_LOCK = trpt->bup.ovals[2];
		now.W_LIGHT = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.W_SENSE, XX-1, 0, ((int)now.W_REQ), 1);
		now.W_REQ = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 66: // STATE 17
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.ovals[3];
		((P5 *)_this)->_11_6_3_i = trpt->bup.ovals[2];
		((P5 *)_this)->_11_6_3_result = trpt->bup.ovals[1];
		now.fair_array[2] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 68: // STATE 26
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.ovals[1];
		((P5 *)_this)->_11_6_3_result = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 26
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 26
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 71: // STATE 32
		goto R999;

	case 72: // STATE 34
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.ovals[1];
	/* 0 */	((P5 *)_this)->_11_6_3_result = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 73: // STATE 37
		;
		((P5 *)_this)->_11_6_3_i = trpt->bup.ovals[1];
		now.fair_array[ Index(((P5 *)_this)->_11_6_3_i, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 74: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC generatorW */
;
		;
		
	case 76: // STATE 2
		;
		_m = unsend(now.W_SENSE);
		;
		goto R999;

	case 77: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controllerE */
;
		;
		;
		;
		
	case 80: // STATE 6
		;
		now.E_LIGHT = trpt->bup.ovals[2];
		now.ES_LOCK = trpt->bup.ovals[1];
		now.EW_LOCK = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 81: // STATE 11
		;
		now.ES_LOCK = trpt->bup.ovals[3];
		now.EW_LOCK = trpt->bup.ovals[2];
		now.E_LIGHT = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.E_SENSE, XX-1, 0, ((int)now.E_REQ), 1);
		now.E_REQ = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 82: // STATE 19
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.ovals[3];
		((P3 *)_this)->_9_4_2_i = trpt->bup.ovals[2];
		((P3 *)_this)->_9_4_2_result = trpt->bup.ovals[1];
		now.fair_array[1] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 84: // STATE 28
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.ovals[1];
		((P3 *)_this)->_9_4_2_result = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 85: // STATE 28
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 28
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 87: // STATE 34
		goto R999;

	case 88: // STATE 36
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_9_4_2_result = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 89: // STATE 39
		;
		((P3 *)_this)->_9_4_2_i = trpt->bup.ovals[1];
		now.fair_array[ Index(((P3 *)_this)->_9_4_2_i, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 90: // STATE 54
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC generatorE */
;
		;
		
	case 92: // STATE 2
		;
		_m = unsend(now.E_SENSE);
		;
		goto R999;

	case 93: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controllerN */
;
		;
		;
		;
		
	case 96: // STATE 6
		;
		now.N_LIGHT = trpt->bup.ovals[2];
		now.NE_LOCK = trpt->bup.ovals[1];
		now.NS_LOCK = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 97: // STATE 11
		;
		now.NE_LOCK = trpt->bup.ovals[3];
		now.NS_LOCK = trpt->bup.ovals[2];
		now.N_LIGHT = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.N_SENSE, XX-1, 0, ((int)now.N_REQ), 1);
		now.N_REQ = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 98: // STATE 19
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.ovals[3];
		((P1 *)_this)->_7_2_1_i = trpt->bup.ovals[2];
		((P1 *)_this)->_7_2_1_result = trpt->bup.ovals[1];
		now.fair_array[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 100: // STATE 28
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.ovals[1];
		((P1 *)_this)->_7_2_1_result = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 101: // STATE 28
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 28
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 103: // STATE 34
		goto R999;

	case 104: // STATE 36
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_7_2_1_result = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 105: // STATE 39
		;
		((P1 *)_this)->_7_2_1_i = trpt->bup.ovals[1];
		now.fair_array[ Index(((P1 *)_this)->_7_2_1_i, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 106: // STATE 54
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC generatorN */
;
		;
		
	case 108: // STATE 2
		;
		_m = unsend(now.N_SENSE);
		;
		goto R999;

	case 109: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;
	}

