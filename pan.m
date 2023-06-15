#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM fairness_4 */
	case 3: // STATE 1 - _spin_nvr.tmp:116 - [(!(!(((P_LIGHT==GREEN)&&(P_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][1] = 1;
		if (!( !( !(((now.P_LIGHT==1)&&(now.P_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:121 - [(!(!(((P_LIGHT==GREEN)&&(P_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][8] = 1;
		if (!( !( !(((now.P_LIGHT==1)&&(now.P_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:123 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[21][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM fairness_3 */
	case 6: // STATE 1 - _spin_nvr.tmp:105 - [(!(!(((W_LIGHT==GREEN)&&(W_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][1] = 1;
		if (!( !( !(((now.W_LIGHT==1)&&(now.W_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:110 - [(!(!(((W_LIGHT==GREEN)&&(W_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][8] = 1;
		if (!( !( !(((now.W_LIGHT==1)&&(now.W_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:112 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[20][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM fairness_2 */
	case 9: // STATE 1 - _spin_nvr.tmp:94 - [(!(!(((E_LIGHT==GREEN)&&(E_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][1] = 1;
		if (!( !( !(((now.E_LIGHT==1)&&(now.E_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:99 - [(!(!(((E_LIGHT==GREEN)&&(E_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][8] = 1;
		if (!( !( !(((now.E_LIGHT==1)&&(now.E_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:101 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[19][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM fairness_1 */
	case 12: // STATE 1 - _spin_nvr.tmp:83 - [(!(!(((N_LIGHT==GREEN)&&(N_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][1] = 1;
		if (!( !( !(((now.N_LIGHT==1)&&(now.N_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:88 - [(!(!(((N_LIGHT==GREEN)&&(N_SENSE==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][8] = 1;
		if (!( !( !(((now.N_LIGHT==1)&&(now.N_SENSE==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:90 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[18][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM liveness_4 */
	case 15: // STATE 1 - _spin_nvr.tmp:72 - [((!(!(((len(P_SENSE)>0)&&(P_LIGHT==RED))))&&!((P_LIGHT==GREEN))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][1] = 1;
		if (!(( !( !(((q_len(now.P_SENSE)>0)&&(now.P_LIGHT==2))))&& !((now.P_LIGHT==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:77 - [(!((P_LIGHT==GREEN)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][8] = 1;
		if (!( !((now.P_LIGHT==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:79 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[17][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM liveness_3 */
	case 18: // STATE 1 - _spin_nvr.tmp:61 - [((!(!(((len(W_SENSE)>0)&&(W_LIGHT==RED))))&&!((W_LIGHT==GREEN))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][1] = 1;
		if (!(( !( !(((q_len(now.W_SENSE)>0)&&(now.W_LIGHT==2))))&& !((now.W_LIGHT==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:66 - [(!((W_LIGHT==GREEN)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][8] = 1;
		if (!( !((now.W_LIGHT==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - _spin_nvr.tmp:68 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM liveness_2 */
	case 21: // STATE 1 - _spin_nvr.tmp:50 - [((!(!(((len(E_SENSE)>0)&&(E_LIGHT==RED))))&&!((E_LIGHT==GREEN))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!(( !( !(((q_len(now.E_SENSE)>0)&&(now.E_LIGHT==2))))&& !((now.E_LIGHT==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:55 - [(!((E_LIGHT==GREEN)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][8] = 1;
		if (!( !((now.E_LIGHT==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:57 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM liveness_1 */
	case 24: // STATE 1 - _spin_nvr.tmp:39 - [((!(!(((len(N_SENSE)>0)&&(N_LIGHT==RED))))&&!((N_LIGHT==GREEN))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!(( !( !(((q_len(now.N_SENSE)>0)&&(now.N_LIGHT==2))))&& !((now.N_LIGHT==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - _spin_nvr.tmp:44 - [(!((N_LIGHT==GREEN)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][8] = 1;
		if (!( !((now.N_LIGHT==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safetyP */
	case 27: // STATE 1 - _spin_nvr.tmp:30 - [(!(!(((P_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(W_LIGHT==GREEN))))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!( !( !(((now.P_LIGHT==1)&&((now.E_LIGHT==1)||(now.W_LIGHT==1)))))))
			continue;
		/* merge: assert(!(!(!(((P_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(W_LIGHT==GREEN)))))))(0, 2, 6) */
		reached[13][2] = 1;
		spin_assert( !( !( !(((now.P_LIGHT==1)&&((now.E_LIGHT==1)||(now.W_LIGHT==1)))))), " !( !( !(((P_LIGHT==1)&&((E_LIGHT==1)||(W_LIGHT==1))))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[13][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safetyW */
	case 29: // STATE 1 - _spin_nvr.tmp:21 - [(!(!(((W_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(N_LIGHT==GREEN))))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!( !( !(((now.W_LIGHT==1)&&((now.E_LIGHT==1)||(now.N_LIGHT==1)))))))
			continue;
		/* merge: assert(!(!(!(((W_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(N_LIGHT==GREEN)))))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !( !(((now.W_LIGHT==1)&&((now.E_LIGHT==1)||(now.N_LIGHT==1)))))), " !( !( !(((W_LIGHT==1)&&((E_LIGHT==1)||(N_LIGHT==1))))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safetyE */
	case 31: // STATE 1 - _spin_nvr.tmp:12 - [(!(!(((E_LIGHT==GREEN)&&((N_LIGHT==GREEN)||(P_LIGHT==GREEN))))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!( !( !(((now.E_LIGHT==1)&&((now.N_LIGHT==1)||(now.P_LIGHT==1)))))))
			continue;
		/* merge: assert(!(!(!(((E_LIGHT==GREEN)&&((N_LIGHT==GREEN)||(P_LIGHT==GREEN)))))))(0, 2, 6) */
		reached[11][2] = 1;
		spin_assert( !( !( !(((now.E_LIGHT==1)&&((now.N_LIGHT==1)||(now.P_LIGHT==1)))))), " !( !( !(((E_LIGHT==1)&&((N_LIGHT==1)||(P_LIGHT==1))))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[11][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM safetyN */
	case 33: // STATE 1 - _spin_nvr.tmp:3 - [(!(!(((N_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(W_LIGHT==GREEN))))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!( !( !(((now.N_LIGHT==1)&&((now.E_LIGHT==1)||(now.W_LIGHT==1)))))))
			continue;
		/* merge: assert(!(!(!(((N_LIGHT==GREEN)&&((E_LIGHT==GREEN)||(W_LIGHT==GREEN)))))))(0, 2, 6) */
		reached[10][2] = 1;
		spin_assert( !( !( !(((now.N_LIGHT==1)&&((now.E_LIGHT==1)||(now.W_LIGHT==1)))))), " !( !( !(((N_LIGHT==1)&&((E_LIGHT==1)||(W_LIGHT==1))))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[10][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 35: // STATE 1 - main.pml:185 - [(run environment())] (0:0:0 - 1)
		IfNotBlocked
		reached[9][1] = 1;
		if (!(addproc(II, 1, 8)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 2 - main.pml:186 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[9][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC environment */
	case 37: // STATE 1 - main.pml:173 - [(run generatorN())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 2 - main.pml:174 - [(run controllerN())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 3 - main.pml:175 - [(run generatorE())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 4 - main.pml:176 - [(run controllerE())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][4] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 5 - main.pml:177 - [(run generatorW())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][5] = 1;
		if (!(addproc(II, 1, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 6 - main.pml:178 - [(run controllerW())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][6] = 1;
		if (!(addproc(II, 1, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 7 - main.pml:179 - [(run generatorP())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][7] = 1;
		if (!(addproc(II, 1, 6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 8 - main.pml:180 - [(run controllerP())] (0:0:0 - 1)
		IfNotBlocked
		reached[8][8] = 1;
		if (!(addproc(II, 1, 7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 9 - main.pml:181 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[8][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC controllerP */
	case 46: // STATE 1 - main.pml:154 - [printf('P controller was triggered \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[7][1] = 1;
		Printf("P controller was triggered \n");
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 2 - main.pml:157 - [(((len(P_SENSE)>0)&&!(fair_array[3])))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][2] = 1;
		if (!(((q_len(now.P_SENSE)>0)&& !(((int)now.fair_array[3])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 3 - main.pml:158 - [(((!(EW_LOCK)&&!(ES_LOCK))&&!(NE_LOCK)))] (7:0:2 - 1)
		IfNotBlocked
		reached[7][3] = 1;
		if (!((( !(((int)now.EW_LOCK))&& !(((int)now.ES_LOCK)))&& !(((int)now.NE_LOCK)))))
			continue;
		/* merge: P_LOCK = 1(7, 4, 7) */
		reached[7][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.P_LOCK);
		now.P_LOCK = 1;
#ifdef VAR_RANGES
		logval("P_LOCK", ((int)now.P_LOCK));
#endif
		;
		/* merge: P_LIGHT = GREEN(7, 5, 7) */
		reached[7][5] = 1;
		(trpt+1)->bup.ovals[1] = now.P_LIGHT;
		now.P_LIGHT = 1;
#ifdef VAR_RANGES
		logval("P_LIGHT", now.P_LIGHT);
#endif
		;
		/* merge: printf('P light is green \\n')(7, 6, 7) */
		reached[7][6] = 1;
		Printf("P light is green \n");
		_m = 3; goto P999; /* 3 */
	case 49: // STATE 7 - main.pml:162 - [P_SENSE?P_REQ] (47:0:3 - 1)
		reached[7][7] = 1;
		if (q_len(now.P_SENSE) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.P_REQ);
		;
		now.P_REQ = qrecv(now.P_SENSE, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("P_REQ", ((int)now.P_REQ));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.P_SENSE);
		sprintf(simtmp, "%d", ((int)now.P_REQ)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: P_LIGHT = RED(47, 8, 47) */
		reached[7][8] = 1;
		(trpt+1)->bup.ovals[1] = now.P_LIGHT;
		now.P_LIGHT = 2;
#ifdef VAR_RANGES
		logval("P_LIGHT", now.P_LIGHT);
#endif
		;
		/* merge: P_LOCK = 0(47, 9, 47) */
		reached[7][9] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.P_LOCK);
		now.P_LOCK = 0;
#ifdef VAR_RANGES
		logval("P_LOCK", ((int)now.P_LOCK));
#endif
		;
		/* merge: printf('P light is red \\n')(47, 10, 47) */
		reached[7][10] = 1;
		Printf("P light is red \n");
		/* merge: .(goto)(0, 12, 47) */
		reached[7][12] = 1;
		;
		_m = 4; goto P999; /* 4 */
	case 50: // STATE 13 - main.pml:27 - [printf('Pointer = %d \\n',3)] (0:29:4 - 1)
		IfNotBlocked
		reached[7][13] = 1;
		Printf("Pointer = %d \n", 3);
		/* merge: fair_array[3] = 1(29, 14, 29) */
		reached[7][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[3]);
		now.fair_array[3] = 1;
#ifdef VAR_RANGES
		logval("fair_array[3]", ((int)now.fair_array[3]));
#endif
		;
		/* merge: result = 1(29, 15, 29) */
		reached[7][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P7 *)_this)->_13_8_4_result);
		((P7 *)_this)->_13_8_4_result = 1;
#ifdef VAR_RANGES
		logval("controllerP:result", ((int)((P7 *)_this)->_13_8_4_result));
#endif
		;
		/* merge: i = 0(29, 16, 29) */
		reached[7][16] = 1;
		(trpt+1)->bup.ovals[2] = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = 0;
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: i = 0(29, 17, 29) */
		reached[7][17] = 1;
		(trpt+1)->bup.ovals[3] = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = 0;
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[7][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 51: // STATE 18 - main.pml:31 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[7][18] = 1;
		if (!((((P7 *)_this)->_13_8_4_i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 19 - main.pml:33 - [((fair_array[i]==0))] (29:0:2 - 1)
		IfNotBlocked
		reached[7][19] = 1;
		if (!((((int)now.fair_array[ Index(((P7 *)_this)->_13_8_4_i, 5) ])==0)))
			continue;
		/* merge: printf('Element=%d \\n',i)(29, 20, 29) */
		reached[7][20] = 1;
		Printf("Element=%d \n", ((P7 *)_this)->_13_8_4_i);
		/* merge: result = 0(29, 21, 29) */
		reached[7][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P7 *)_this)->_13_8_4_result);
		((P7 *)_this)->_13_8_4_result = 0;
#ifdef VAR_RANGES
		logval("controllerP:result", ((int)((P7 *)_this)->_13_8_4_result));
#endif
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[7][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[7][26] = 1;
		(trpt+1)->bup.ovals[1] = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = (((P7 *)_this)->_13_8_4_i+1);
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[7][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 53: // STATE 23 - main.pml:34 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[7][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 25, 29) */
		reached[7][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[7][26] = 1;
		(trpt+1)->bup.oval = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = (((P7 *)_this)->_13_8_4_i+1);
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[7][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 54: // STATE 26 - main.pml:31 - [i = (i+1)] (0:29:1 - 3)
		IfNotBlocked
		reached[7][26] = 1;
		(trpt+1)->bup.oval = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = (((P7 *)_this)->_13_8_4_i+1);
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[7][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 55: // STATE 32 - main.pml:37 - [printf('Result = %d \\n',result)] (0:45:0 - 3)
		IfNotBlocked
		reached[7][32] = 1;
		Printf("Result = %d \n", ((int)((P7 *)_this)->_13_8_4_result));
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 33 - main.pml:39 - [((result==1))] (40:0:2 - 1)
		IfNotBlocked
		reached[7][33] = 1;
		if (!((((int)((P7 *)_this)->_13_8_4_result)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _13_8_4_result */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P7 *)_this)->_13_8_4_result;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P7 *)_this)->_13_8_4_result = 0;
		/* merge: i = 0(0, 34, 40) */
		reached[7][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = 0;
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[7][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 35 - main.pml:40 - [((i<=(4-1)))] (40:0:2 - 1)
		IfNotBlocked
		reached[7][35] = 1;
		if (!((((P7 *)_this)->_13_8_4_i<=(4-1))))
			continue;
		/* merge: fair_array[i] = 0(40, 36, 40) */
		reached[7][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[ Index(((P7 *)_this)->_13_8_4_i, 5) ]);
		now.fair_array[ Index(((P7 *)_this)->_13_8_4_i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("fair_array[controllerP:i]", ((int)now.fair_array[ Index(((P7 *)_this)->_13_8_4_i, 5) ]));
#endif
		;
		/* merge: i = (i+1)(40, 37, 40) */
		reached[7][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P7 *)_this)->_13_8_4_i;
		((P7 *)_this)->_13_8_4_i = (((P7 *)_this)->_13_8_4_i+1);
#ifdef VAR_RANGES
		logval("controllerP:i", ((P7 *)_this)->_13_8_4_i);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[7][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 58: // STATE 52 - main.pml:170 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[7][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC generatorP */
	case 59: // STATE 1 - main.pml:145 - [printf('Pedestrian \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[6][1] = 1;
		Printf("Pedestrian \n");
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 2 - main.pml:147 - [P_SENSE!1] (4:0:0 - 1)
		IfNotBlocked
		reached[6][2] = 1;
		if (q_full(now.P_SENSE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.P_SENSE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.P_SENSE, 0, 1, 1);
		/* merge: printf('Pedestrian arrived \\n')(0, 3, 4) */
		reached[6][3] = 1;
		Printf("Pedestrian arrived \n");
		/* merge: .(goto)(0, 5, 4) */
		reached[6][5] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 61: // STATE 8 - main.pml:150 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[6][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC controllerW */
	case 62: // STATE 1 - main.pml:125 - [printf('WN controller was triggered \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		Printf("WN controller was triggered \n");
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 2 - main.pml:128 - [(((len(W_SENSE)>0)&&!(fair_array[2])))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!(((q_len(now.W_SENSE)>0)&& !(((int)now.fair_array[2])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 3 - main.pml:129 - [(((!(NS_LOCK)&&!(EW_LOCK))&&!(NE_LOCK)))] (7:0:2 - 1)
		IfNotBlocked
		reached[5][3] = 1;
		if (!((( !(((int)now.NS_LOCK))&& !(((int)now.EW_LOCK)))&& !(((int)now.NE_LOCK)))))
			continue;
		/* merge: WN_LOCK = 1(7, 4, 7) */
		reached[5][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.WN_LOCK);
		now.WN_LOCK = 1;
#ifdef VAR_RANGES
		logval("WN_LOCK", ((int)now.WN_LOCK));
#endif
		;
		/* merge: W_LIGHT = GREEN(7, 5, 7) */
		reached[5][5] = 1;
		(trpt+1)->bup.ovals[1] = now.W_LIGHT;
		now.W_LIGHT = 1;
#ifdef VAR_RANGES
		logval("W_LIGHT", now.W_LIGHT);
#endif
		;
		/* merge: printf('W light is green \\n')(7, 6, 7) */
		reached[5][6] = 1;
		Printf("W light is green \n");
		_m = 3; goto P999; /* 3 */
	case 65: // STATE 7 - main.pml:133 - [W_SENSE?W_REQ] (47:0:3 - 1)
		reached[5][7] = 1;
		if (q_len(now.W_SENSE) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.W_REQ);
		;
		now.W_REQ = qrecv(now.W_SENSE, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("W_REQ", ((int)now.W_REQ));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.W_SENSE);
		sprintf(simtmp, "%d", ((int)now.W_REQ)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: W_LIGHT = RED(47, 8, 47) */
		reached[5][8] = 1;
		(trpt+1)->bup.ovals[1] = now.W_LIGHT;
		now.W_LIGHT = 2;
#ifdef VAR_RANGES
		logval("W_LIGHT", now.W_LIGHT);
#endif
		;
		/* merge: WN_LOCK = 0(47, 9, 47) */
		reached[5][9] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.WN_LOCK);
		now.WN_LOCK = 0;
#ifdef VAR_RANGES
		logval("WN_LOCK", ((int)now.WN_LOCK));
#endif
		;
		/* merge: printf('W light is red \\n')(47, 10, 47) */
		reached[5][10] = 1;
		Printf("W light is red \n");
		/* merge: .(goto)(0, 12, 47) */
		reached[5][12] = 1;
		;
		_m = 4; goto P999; /* 4 */
	case 66: // STATE 13 - main.pml:27 - [printf('Pointer = %d \\n',2)] (0:29:4 - 1)
		IfNotBlocked
		reached[5][13] = 1;
		Printf("Pointer = %d \n", 2);
		/* merge: fair_array[2] = 1(29, 14, 29) */
		reached[5][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[2]);
		now.fair_array[2] = 1;
#ifdef VAR_RANGES
		logval("fair_array[2]", ((int)now.fair_array[2]));
#endif
		;
		/* merge: result = 1(29, 15, 29) */
		reached[5][15] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P5 *)_this)->_11_6_3_result);
		((P5 *)_this)->_11_6_3_result = 1;
#ifdef VAR_RANGES
		logval("controllerW:result", ((int)((P5 *)_this)->_11_6_3_result));
#endif
		;
		/* merge: i = 0(29, 16, 29) */
		reached[5][16] = 1;
		(trpt+1)->bup.ovals[2] = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = 0;
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: i = 0(29, 17, 29) */
		reached[5][17] = 1;
		(trpt+1)->bup.ovals[3] = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = 0;
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[5][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 67: // STATE 18 - main.pml:31 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[5][18] = 1;
		if (!((((P5 *)_this)->_11_6_3_i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 19 - main.pml:33 - [((fair_array[i]==0))] (29:0:2 - 1)
		IfNotBlocked
		reached[5][19] = 1;
		if (!((((int)now.fair_array[ Index(((P5 *)_this)->_11_6_3_i, 5) ])==0)))
			continue;
		/* merge: printf('Element=%d \\n',i)(29, 20, 29) */
		reached[5][20] = 1;
		Printf("Element=%d \n", ((P5 *)_this)->_11_6_3_i);
		/* merge: result = 0(29, 21, 29) */
		reached[5][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P5 *)_this)->_11_6_3_result);
		((P5 *)_this)->_11_6_3_result = 0;
#ifdef VAR_RANGES
		logval("controllerW:result", ((int)((P5 *)_this)->_11_6_3_result));
#endif
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[5][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[5][26] = 1;
		(trpt+1)->bup.ovals[1] = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = (((P5 *)_this)->_11_6_3_i+1);
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[5][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 69: // STATE 23 - main.pml:34 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[5][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 25, 29) */
		reached[5][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[5][26] = 1;
		(trpt+1)->bup.oval = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = (((P5 *)_this)->_11_6_3_i+1);
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[5][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 70: // STATE 26 - main.pml:31 - [i = (i+1)] (0:29:1 - 3)
		IfNotBlocked
		reached[5][26] = 1;
		(trpt+1)->bup.oval = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = (((P5 *)_this)->_11_6_3_i+1);
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[5][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 32 - main.pml:37 - [printf('Result = %d \\n',result)] (0:45:0 - 3)
		IfNotBlocked
		reached[5][32] = 1;
		Printf("Result = %d \n", ((int)((P5 *)_this)->_11_6_3_result));
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 33 - main.pml:39 - [((result==1))] (40:0:2 - 1)
		IfNotBlocked
		reached[5][33] = 1;
		if (!((((int)((P5 *)_this)->_11_6_3_result)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _11_6_3_result */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P5 *)_this)->_11_6_3_result;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P5 *)_this)->_11_6_3_result = 0;
		/* merge: i = 0(0, 34, 40) */
		reached[5][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = 0;
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 35 - main.pml:40 - [((i<=(4-1)))] (40:0:2 - 1)
		IfNotBlocked
		reached[5][35] = 1;
		if (!((((P5 *)_this)->_11_6_3_i<=(4-1))))
			continue;
		/* merge: fair_array[i] = 0(40, 36, 40) */
		reached[5][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[ Index(((P5 *)_this)->_11_6_3_i, 5) ]);
		now.fair_array[ Index(((P5 *)_this)->_11_6_3_i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("fair_array[controllerW:i]", ((int)now.fair_array[ Index(((P5 *)_this)->_11_6_3_i, 5) ]));
#endif
		;
		/* merge: i = (i+1)(40, 37, 40) */
		reached[5][37] = 1;
		(trpt+1)->bup.ovals[1] = ((P5 *)_this)->_11_6_3_i;
		((P5 *)_this)->_11_6_3_i = (((P5 *)_this)->_11_6_3_i+1);
#ifdef VAR_RANGES
		logval("controllerW:i", ((P5 *)_this)->_11_6_3_i);
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[5][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 74: // STATE 52 - main.pml:141 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC generatorW */
	case 75: // STATE 1 - main.pml:115 - [printf('W car \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		Printf("W car \n");
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 2 - main.pml:117 - [W_SENSE!1] (4:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (q_full(now.W_SENSE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.W_SENSE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.W_SENSE, 0, 1, 1);
		/* merge: printf('W car arrived \\n')(0, 3, 4) */
		reached[4][3] = 1;
		Printf("W car arrived \n");
		/* merge: .(goto)(0, 5, 4) */
		reached[4][5] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 77: // STATE 8 - main.pml:121 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC controllerE */
	case 78: // STATE 1 - main.pml:93 - [printf('EW controller was triggered \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		Printf("EW controller was triggered \n");
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 2 - main.pml:96 - [(((len(E_SENSE)>0)&&!(fair_array[1])))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(((q_len(now.E_SENSE)>0)&& !(((int)now.fair_array[1])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 3 - main.pml:97 - [((((!(NS_LOCK)&&!(NE_LOCK))&&!(WN_LOCK))&&!(P_LOCK)))] (8:0:3 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(((( !(((int)now.NS_LOCK))&& !(((int)now.NE_LOCK)))&& !(((int)now.WN_LOCK)))&& !(((int)now.P_LOCK)))))
			continue;
		/* merge: EW_LOCK = 1(8, 4, 8) */
		reached[3][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.EW_LOCK);
		now.EW_LOCK = 1;
#ifdef VAR_RANGES
		logval("EW_LOCK", ((int)now.EW_LOCK));
#endif
		;
		/* merge: ES_LOCK = 1(8, 5, 8) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ES_LOCK);
		now.ES_LOCK = 1;
#ifdef VAR_RANGES
		logval("ES_LOCK", ((int)now.ES_LOCK));
#endif
		;
		/* merge: E_LIGHT = GREEN(8, 6, 8) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[2] = now.E_LIGHT;
		now.E_LIGHT = 1;
#ifdef VAR_RANGES
		logval("E_LIGHT", now.E_LIGHT);
#endif
		;
		/* merge: printf('E light is green \\n')(8, 7, 8) */
		reached[3][7] = 1;
		Printf("E light is green \n");
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 8 - main.pml:102 - [E_SENSE?E_REQ] (49:0:4 - 1)
		reached[3][8] = 1;
		if (q_len(now.E_SENSE) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.E_REQ);
		;
		now.E_REQ = qrecv(now.E_SENSE, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("E_REQ", ((int)now.E_REQ));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.E_SENSE);
		sprintf(simtmp, "%d", ((int)now.E_REQ)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: E_LIGHT = RED(49, 9, 49) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[1] = now.E_LIGHT;
		now.E_LIGHT = 2;
#ifdef VAR_RANGES
		logval("E_LIGHT", now.E_LIGHT);
#endif
		;
		/* merge: EW_LOCK = 0(49, 10, 49) */
		reached[3][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EW_LOCK);
		now.EW_LOCK = 0;
#ifdef VAR_RANGES
		logval("EW_LOCK", ((int)now.EW_LOCK));
#endif
		;
		/* merge: ES_LOCK = 0(49, 11, 49) */
		reached[3][11] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.ES_LOCK);
		now.ES_LOCK = 0;
#ifdef VAR_RANGES
		logval("ES_LOCK", ((int)now.ES_LOCK));
#endif
		;
		/* merge: printf('E light is red \\n')(49, 12, 49) */
		reached[3][12] = 1;
		Printf("E light is red \n");
		/* merge: .(goto)(0, 14, 49) */
		reached[3][14] = 1;
		;
		_m = 4; goto P999; /* 5 */
	case 82: // STATE 15 - main.pml:27 - [printf('Pointer = %d \\n',1)] (0:31:4 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		Printf("Pointer = %d \n", 1);
		/* merge: fair_array[1] = 1(31, 16, 31) */
		reached[3][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[1]);
		now.fair_array[1] = 1;
#ifdef VAR_RANGES
		logval("fair_array[1]", ((int)now.fair_array[1]));
#endif
		;
		/* merge: result = 1(31, 17, 31) */
		reached[3][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_9_4_2_result);
		((P3 *)_this)->_9_4_2_result = 1;
#ifdef VAR_RANGES
		logval("controllerE:result", ((int)((P3 *)_this)->_9_4_2_result));
#endif
		;
		/* merge: i = 0(31, 18, 31) */
		reached[3][18] = 1;
		(trpt+1)->bup.ovals[2] = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = 0;
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: i = 0(31, 19, 31) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals[3] = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = 0;
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[3][32] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 83: // STATE 20 - main.pml:31 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][20] = 1;
		if (!((((P3 *)_this)->_9_4_2_i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 21 - main.pml:33 - [((fair_array[i]==0))] (31:0:2 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!((((int)now.fair_array[ Index(((P3 *)_this)->_9_4_2_i, 5) ])==0)))
			continue;
		/* merge: printf('Element=%d \\n',i)(31, 22, 31) */
		reached[3][22] = 1;
		Printf("Element=%d \n", ((P3 *)_this)->_9_4_2_i);
		/* merge: result = 0(31, 23, 31) */
		reached[3][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_9_4_2_result);
		((P3 *)_this)->_9_4_2_result = 0;
#ifdef VAR_RANGES
		logval("controllerE:result", ((int)((P3 *)_this)->_9_4_2_result));
#endif
		;
		/* merge: .(goto)(31, 27, 31) */
		reached[3][27] = 1;
		;
		/* merge: i = (i+1)(31, 28, 31) */
		reached[3][28] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = (((P3 *)_this)->_9_4_2_i+1);
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[3][32] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 85: // STATE 25 - main.pml:34 - [(1)] (31:0:1 - 1)
		IfNotBlocked
		reached[3][25] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(31, 27, 31) */
		reached[3][27] = 1;
		;
		/* merge: i = (i+1)(31, 28, 31) */
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = (((P3 *)_this)->_9_4_2_i+1);
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[3][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 86: // STATE 28 - main.pml:31 - [i = (i+1)] (0:31:1 - 3)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = (((P3 *)_this)->_9_4_2_i+1);
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[3][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 87: // STATE 34 - main.pml:37 - [printf('Result = %d \\n',result)] (0:47:0 - 3)
		IfNotBlocked
		reached[3][34] = 1;
		Printf("Result = %d \n", ((int)((P3 *)_this)->_9_4_2_result));
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 35 - main.pml:39 - [((result==1))] (42:0:2 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		if (!((((int)((P3 *)_this)->_9_4_2_result)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _9_4_2_result */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_9_4_2_result;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_9_4_2_result = 0;
		/* merge: i = 0(0, 36, 42) */
		reached[3][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = 0;
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[3][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 89: // STATE 37 - main.pml:40 - [((i<=(4-1)))] (42:0:2 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		if (!((((P3 *)_this)->_9_4_2_i<=(4-1))))
			continue;
		/* merge: fair_array[i] = 0(42, 38, 42) */
		reached[3][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[ Index(((P3 *)_this)->_9_4_2_i, 5) ]);
		now.fair_array[ Index(((P3 *)_this)->_9_4_2_i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("fair_array[controllerE:i]", ((int)now.fair_array[ Index(((P3 *)_this)->_9_4_2_i, 5) ]));
#endif
		;
		/* merge: i = (i+1)(42, 39, 42) */
		reached[3][39] = 1;
		(trpt+1)->bup.ovals[1] = ((P3 *)_this)->_9_4_2_i;
		((P3 *)_this)->_9_4_2_i = (((P3 *)_this)->_9_4_2_i+1);
#ifdef VAR_RANGES
		logval("controllerE:i", ((P3 *)_this)->_9_4_2_i);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[3][43] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 90: // STATE 54 - main.pml:111 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][54] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC generatorE */
	case 91: // STATE 1 - main.pml:83 - [printf('E car approaching \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		Printf("E car approaching \n");
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 2 - main.pml:85 - [E_SENSE!1] (4:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.E_SENSE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.E_SENSE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.E_SENSE, 0, 1, 1);
		/* merge: printf('E car was generated \\n')(0, 3, 4) */
		reached[2][3] = 1;
		Printf("E car was generated \n");
		/* merge: .(goto)(0, 5, 4) */
		reached[2][5] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 93: // STATE 8 - main.pml:89 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC controllerN */
	case 94: // STATE 1 - main.pml:61 - [printf('N Controller triggered \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("N Controller triggered \n");
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 2 - main.pml:64 - [(((len(N_SENSE)>0)&&!(fair_array[0])))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((q_len(now.N_SENSE)>0)&& !(((int)now.fair_array[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 3 - main.pml:65 - [((((!(EW_LOCK)&&!(WN_LOCK))&&!(ES_LOCK))&&!(P_LOCK)))] (8:0:3 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((( !(((int)now.EW_LOCK))&& !(((int)now.WN_LOCK)))&& !(((int)now.ES_LOCK)))&& !(((int)now.P_LOCK)))))
			continue;
		/* merge: NS_LOCK = 1(8, 4, 8) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.NS_LOCK);
		now.NS_LOCK = 1;
#ifdef VAR_RANGES
		logval("NS_LOCK", ((int)now.NS_LOCK));
#endif
		;
		/* merge: NE_LOCK = 1(8, 5, 8) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.NE_LOCK);
		now.NE_LOCK = 1;
#ifdef VAR_RANGES
		logval("NE_LOCK", ((int)now.NE_LOCK));
#endif
		;
		/* merge: N_LIGHT = GREEN(8, 6, 8) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[2] = now.N_LIGHT;
		now.N_LIGHT = 1;
#ifdef VAR_RANGES
		logval("N_LIGHT", now.N_LIGHT);
#endif
		;
		/* merge: printf('N light is green \\n')(8, 7, 8) */
		reached[1][7] = 1;
		Printf("N light is green \n");
		_m = 3; goto P999; /* 4 */
	case 97: // STATE 8 - main.pml:70 - [N_SENSE?N_REQ] (49:0:4 - 1)
		reached[1][8] = 1;
		if (q_len(now.N_SENSE) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.N_REQ);
		;
		now.N_REQ = qrecv(now.N_SENSE, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("N_REQ", ((int)now.N_REQ));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.N_SENSE);
		sprintf(simtmp, "%d", ((int)now.N_REQ)); strcat(simvals, simtmp);		}
#endif
		;
		/* merge: N_LIGHT = RED(49, 9, 49) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = now.N_LIGHT;
		now.N_LIGHT = 2;
#ifdef VAR_RANGES
		logval("N_LIGHT", now.N_LIGHT);
#endif
		;
		/* merge: NS_LOCK = 0(49, 10, 49) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.NS_LOCK);
		now.NS_LOCK = 0;
#ifdef VAR_RANGES
		logval("NS_LOCK", ((int)now.NS_LOCK));
#endif
		;
		/* merge: NE_LOCK = 0(49, 11, 49) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.NE_LOCK);
		now.NE_LOCK = 0;
#ifdef VAR_RANGES
		logval("NE_LOCK", ((int)now.NE_LOCK));
#endif
		;
		/* merge: printf('N light is red \\n')(49, 12, 49) */
		reached[1][12] = 1;
		Printf("N light is red \n");
		/* merge: .(goto)(0, 14, 49) */
		reached[1][14] = 1;
		;
		_m = 4; goto P999; /* 5 */
	case 98: // STATE 15 - main.pml:27 - [printf('Pointer = %d \\n',0)] (0:31:4 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		Printf("Pointer = %d \n", 0);
		/* merge: fair_array[0] = 1(31, 16, 31) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[0]);
		now.fair_array[0] = 1;
#ifdef VAR_RANGES
		logval("fair_array[0]", ((int)now.fair_array[0]));
#endif
		;
		/* merge: result = 1(31, 17, 31) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_7_2_1_result);
		((P1 *)_this)->_7_2_1_result = 1;
#ifdef VAR_RANGES
		logval("controllerN:result", ((int)((P1 *)_this)->_7_2_1_result));
#endif
		;
		/* merge: i = 0(31, 18, 31) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = 0;
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: i = 0(31, 19, 31) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = 0;
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 99: // STATE 20 - main.pml:31 - [((i<=(4-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (!((((P1 *)_this)->_7_2_1_i<=(4-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 21 - main.pml:33 - [((fair_array[i]==0))] (31:0:2 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((int)now.fair_array[ Index(((P1 *)_this)->_7_2_1_i, 5) ])==0)))
			continue;
		/* merge: printf('Element=%d \\n',i)(31, 22, 31) */
		reached[1][22] = 1;
		Printf("Element=%d \n", ((P1 *)_this)->_7_2_1_i);
		/* merge: result = 0(31, 23, 31) */
		reached[1][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_7_2_1_result);
		((P1 *)_this)->_7_2_1_result = 0;
#ifdef VAR_RANGES
		logval("controllerN:result", ((int)((P1 *)_this)->_7_2_1_result));
#endif
		;
		/* merge: .(goto)(31, 27, 31) */
		reached[1][27] = 1;
		;
		/* merge: i = (i+1)(31, 28, 31) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = (((P1 *)_this)->_7_2_1_i+1);
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 101: // STATE 25 - main.pml:34 - [(1)] (31:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(31, 27, 31) */
		reached[1][27] = 1;
		;
		/* merge: i = (i+1)(31, 28, 31) */
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = (((P1 *)_this)->_7_2_1_i+1);
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 102: // STATE 28 - main.pml:31 - [i = (i+1)] (0:31:1 - 3)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = (((P1 *)_this)->_7_2_1_i+1);
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 103: // STATE 34 - main.pml:37 - [printf('Result = %d \\n',result)] (0:47:0 - 3)
		IfNotBlocked
		reached[1][34] = 1;
		Printf("Result = %d \n", ((int)((P1 *)_this)->_7_2_1_result));
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 35 - main.pml:39 - [((result==1))] (42:0:2 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((int)((P1 *)_this)->_7_2_1_result)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_2_1_result */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_7_2_1_result;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_7_2_1_result = 0;
		/* merge: i = 0(0, 36, 42) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = 0;
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 105: // STATE 37 - main.pml:40 - [((i<=(4-1)))] (42:0:2 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((P1 *)_this)->_7_2_1_i<=(4-1))))
			continue;
		/* merge: fair_array[i] = 0(42, 38, 42) */
		reached[1][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.fair_array[ Index(((P1 *)_this)->_7_2_1_i, 5) ]);
		now.fair_array[ Index(((P1 *)_this)->_7_2_1_i, 5) ] = 0;
#ifdef VAR_RANGES
		logval("fair_array[controllerN:i]", ((int)now.fair_array[ Index(((P1 *)_this)->_7_2_1_i, 5) ]));
#endif
		;
		/* merge: i = (i+1)(42, 39, 42) */
		reached[1][39] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->_7_2_1_i;
		((P1 *)_this)->_7_2_1_i = (((P1 *)_this)->_7_2_1_i+1);
#ifdef VAR_RANGES
		logval("controllerN:i", ((P1 *)_this)->_7_2_1_i);
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[1][43] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 106: // STATE 54 - main.pml:79 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC generatorN */
	case 107: // STATE 1 - main.pml:51 - [printf('N car \\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("N car \n");
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 2 - main.pml:53 - [N_SENSE!1] (4:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.N_SENSE))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.N_SENSE);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.N_SENSE, 0, 1, 1);
		/* merge: printf('N car was generated \\n')(0, 3, 4) */
		reached[0][3] = 1;
		Printf("N car was generated \n");
		/* merge: .(goto)(0, 5, 4) */
		reached[0][5] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 109: // STATE 8 - main.pml:57 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

