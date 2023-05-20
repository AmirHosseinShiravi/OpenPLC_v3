/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_IEC_BISON_HH_INCLUDED
# define YY_YY_IEC_BISON_HH_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 255 "iec_bison.yy"

/* define a new data type to store the locations, so we can also store
 * the filename in which the token is expressed.
 */
/* NOTE: since this code will be placed in the iec_bison.hh header file,
 * as well as the iec.cc file that also includes the iec_bison.hh header file,
 * declaring the typedef struct yyltype__local here would result in a 
 * compilation error when compiling iec.cc, as this struct would be
 * declared twice.
 * We therefore use the #if !defined YYLTYPE ...
 * to make sure only the first declaration is parsed by the C++ compiler.
 */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE {
    int         first_line;
    int         first_column;
    const char *first_file;
    long int    first_order;
    int         last_line;
    int         last_column;
    const char *last_file;
    long int    last_order;
} YYLTYPE;
#define YYLTYPE_IS_DECLARED 1
#define YYLTYPE_IS_TRIVIAL 0
#endif


#line 78 "iec_bison.hh"

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    END_OF_INPUT = 0,              /* END_OF_INPUT  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    BOGUS_TOKEN_ID = 258,          /* BOGUS_TOKEN_ID  */
    prev_declared_variable_name_token = 259, /* prev_declared_variable_name_token  */
    prev_declared_direct_variable_token = 260, /* prev_declared_direct_variable_token  */
    prev_declared_fb_name_token = 261, /* prev_declared_fb_name_token  */
    prev_declared_simple_type_name_token = 262, /* prev_declared_simple_type_name_token  */
    prev_declared_subrange_type_name_token = 263, /* prev_declared_subrange_type_name_token  */
    prev_declared_enumerated_type_name_token = 264, /* prev_declared_enumerated_type_name_token  */
    prev_declared_array_type_name_token = 265, /* prev_declared_array_type_name_token  */
    prev_declared_structure_type_name_token = 266, /* prev_declared_structure_type_name_token  */
    prev_declared_string_type_name_token = 267, /* prev_declared_string_type_name_token  */
    prev_declared_ref_type_name_token = 268, /* prev_declared_ref_type_name_token  */
    prev_declared_derived_function_name_token = 269, /* prev_declared_derived_function_name_token  */
    prev_declared_derived_function_block_name_token = 270, /* prev_declared_derived_function_block_name_token  */
    prev_declared_program_type_name_token = 271, /* prev_declared_program_type_name_token  */
    disable_code_generation_pragma_token = 272, /* disable_code_generation_pragma_token  */
    enable_code_generation_pragma_token = 273, /* enable_code_generation_pragma_token  */
    pragma_token = 274,            /* pragma_token  */
    EN = 275,                      /* EN  */
    ENO = 276,                     /* ENO  */
    REF = 277,                     /* REF  */
    DREF = 278,                    /* DREF  */
    REF_TO = 279,                  /* REF_TO  */
    NULL_token = 280,              /* NULL_token  */
    identifier_token = 281,        /* identifier_token  */
    integer_token = 282,           /* integer_token  */
    binary_integer_token = 283,    /* binary_integer_token  */
    octal_integer_token = 284,     /* octal_integer_token  */
    hex_integer_token = 285,       /* hex_integer_token  */
    real_token = 286,              /* real_token  */
    safeboolean_true_literal_token = 287, /* safeboolean_true_literal_token  */
    safeboolean_false_literal_token = 288, /* safeboolean_false_literal_token  */
    boolean_true_literal_token = 289, /* boolean_true_literal_token  */
    boolean_false_literal_token = 290, /* boolean_false_literal_token  */
    FALSE = 291,                   /* FALSE  */
    TRUE = 292,                    /* TRUE  */
    single_byte_character_string_token = 293, /* single_byte_character_string_token  */
    double_byte_character_string_token = 294, /* double_byte_character_string_token  */
    fixed_point_token = 295,       /* fixed_point_token  */
    fixed_point_d_token = 296,     /* fixed_point_d_token  */
    integer_d_token = 297,         /* integer_d_token  */
    fixed_point_h_token = 298,     /* fixed_point_h_token  */
    integer_h_token = 299,         /* integer_h_token  */
    fixed_point_m_token = 300,     /* fixed_point_m_token  */
    integer_m_token = 301,         /* integer_m_token  */
    fixed_point_s_token = 302,     /* fixed_point_s_token  */
    integer_s_token = 303,         /* integer_s_token  */
    fixed_point_ms_token = 304,    /* fixed_point_ms_token  */
    integer_ms_token = 305,        /* integer_ms_token  */
    end_interval_token = 306,      /* end_interval_token  */
    erroneous_interval_token = 307, /* erroneous_interval_token  */
    T_SHARP = 308,                 /* T_SHARP  */
    D_SHARP = 309,                 /* D_SHARP  */
    BYTE = 310,                    /* BYTE  */
    WORD = 311,                    /* WORD  */
    DWORD = 312,                   /* DWORD  */
    LWORD = 313,                   /* LWORD  */
    LREAL = 314,                   /* LREAL  */
    REAL = 315,                    /* REAL  */
    SINT = 316,                    /* SINT  */
    INT = 317,                     /* INT  */
    DINT = 318,                    /* DINT  */
    LINT = 319,                    /* LINT  */
    USINT = 320,                   /* USINT  */
    UINT = 321,                    /* UINT  */
    UDINT = 322,                   /* UDINT  */
    ULINT = 323,                   /* ULINT  */
    WSTRING = 324,                 /* WSTRING  */
    STRING = 325,                  /* STRING  */
    BOOL = 326,                    /* BOOL  */
    TIME = 327,                    /* TIME  */
    DATE = 328,                    /* DATE  */
    DATE_AND_TIME = 329,           /* DATE_AND_TIME  */
    DT = 330,                      /* DT  */
    TIME_OF_DAY = 331,             /* TIME_OF_DAY  */
    TOD = 332,                     /* TOD  */
    SAFEBYTE = 333,                /* SAFEBYTE  */
    SAFEWORD = 334,                /* SAFEWORD  */
    SAFEDWORD = 335,               /* SAFEDWORD  */
    SAFELWORD = 336,               /* SAFELWORD  */
    SAFELREAL = 337,               /* SAFELREAL  */
    SAFEREAL = 338,                /* SAFEREAL  */
    SAFESINT = 339,                /* SAFESINT  */
    SAFEINT = 340,                 /* SAFEINT  */
    SAFEDINT = 341,                /* SAFEDINT  */
    SAFELINT = 342,                /* SAFELINT  */
    SAFEUSINT = 343,               /* SAFEUSINT  */
    SAFEUINT = 344,                /* SAFEUINT  */
    SAFEUDINT = 345,               /* SAFEUDINT  */
    SAFEULINT = 346,               /* SAFEULINT  */
    SAFEWSTRING = 347,             /* SAFEWSTRING  */
    SAFESTRING = 348,              /* SAFESTRING  */
    SAFEBOOL = 349,                /* SAFEBOOL  */
    SAFETIME = 350,                /* SAFETIME  */
    SAFEDATE = 351,                /* SAFEDATE  */
    SAFEDATE_AND_TIME = 352,       /* SAFEDATE_AND_TIME  */
    SAFEDT = 353,                  /* SAFEDT  */
    SAFETIME_OF_DAY = 354,         /* SAFETIME_OF_DAY  */
    SAFETOD = 355,                 /* SAFETOD  */
    ANY = 356,                     /* ANY  */
    ANY_DERIVED = 357,             /* ANY_DERIVED  */
    ANY_ELEMENTARY = 358,          /* ANY_ELEMENTARY  */
    ANY_MAGNITUDE = 359,           /* ANY_MAGNITUDE  */
    ANY_NUM = 360,                 /* ANY_NUM  */
    ANY_REAL = 361,                /* ANY_REAL  */
    ANY_INT = 362,                 /* ANY_INT  */
    ANY_BIT = 363,                 /* ANY_BIT  */
    ANY_STRING = 364,              /* ANY_STRING  */
    ANY_DATE = 365,                /* ANY_DATE  */
    ASSIGN = 366,                  /* ASSIGN  */
    DOTDOT = 367,                  /* DOTDOT  */
    TYPE = 368,                    /* TYPE  */
    END_TYPE = 369,                /* END_TYPE  */
    ARRAY = 370,                   /* ARRAY  */
    OF = 371,                      /* OF  */
    STRUCT = 372,                  /* STRUCT  */
    END_STRUCT = 373,              /* END_STRUCT  */
    direct_variable_token = 374,   /* direct_variable_token  */
    incompl_location_token = 375,  /* incompl_location_token  */
    VAR_INPUT = 376,               /* VAR_INPUT  */
    VAR_OUTPUT = 377,              /* VAR_OUTPUT  */
    VAR_IN_OUT = 378,              /* VAR_IN_OUT  */
    VAR_EXTERNAL = 379,            /* VAR_EXTERNAL  */
    VAR_GLOBAL = 380,              /* VAR_GLOBAL  */
    END_VAR = 381,                 /* END_VAR  */
    RETAIN = 382,                  /* RETAIN  */
    NON_RETAIN = 383,              /* NON_RETAIN  */
    R_EDGE = 384,                  /* R_EDGE  */
    F_EDGE = 385,                  /* F_EDGE  */
    AT = 386,                      /* AT  */
    standard_function_name_token = 387, /* standard_function_name_token  */
    FUNCTION = 388,                /* FUNCTION  */
    END_FUNCTION = 389,            /* END_FUNCTION  */
    CONSTANT = 390,                /* CONSTANT  */
    standard_function_block_name_token = 391, /* standard_function_block_name_token  */
    FUNCTION_BLOCK = 392,          /* FUNCTION_BLOCK  */
    END_FUNCTION_BLOCK = 393,      /* END_FUNCTION_BLOCK  */
    VAR_TEMP = 394,                /* VAR_TEMP  */
    VAR = 395,                     /* VAR  */
    PROGRAM = 396,                 /* PROGRAM  */
    END_PROGRAM = 397,             /* END_PROGRAM  */
    ACTION = 398,                  /* ACTION  */
    END_ACTION = 399,              /* END_ACTION  */
    TRANSITION = 400,              /* TRANSITION  */
    END_TRANSITION = 401,          /* END_TRANSITION  */
    FROM = 402,                    /* FROM  */
    TO = 403,                      /* TO  */
    PRIORITY = 404,                /* PRIORITY  */
    INITIAL_STEP = 405,            /* INITIAL_STEP  */
    STEP = 406,                    /* STEP  */
    END_STEP = 407,                /* END_STEP  */
    L = 408,                       /* L  */
    D = 409,                       /* D  */
    SD = 410,                      /* SD  */
    DS = 411,                      /* DS  */
    SL = 412,                      /* SL  */
    N = 413,                       /* N  */
    P = 414,                       /* P  */
    P0 = 415,                      /* P0  */
    P1 = 416,                      /* P1  */
    prev_declared_global_var_name_token = 417, /* prev_declared_global_var_name_token  */
    prev_declared_program_name_token = 418, /* prev_declared_program_name_token  */
    prev_declared_resource_name_token = 419, /* prev_declared_resource_name_token  */
    prev_declared_configuration_name_token = 420, /* prev_declared_configuration_name_token  */
    CONFIGURATION = 421,           /* CONFIGURATION  */
    END_CONFIGURATION = 422,       /* END_CONFIGURATION  */
    TASK = 423,                    /* TASK  */
    RESOURCE = 424,                /* RESOURCE  */
    ON = 425,                      /* ON  */
    END_RESOURCE = 426,            /* END_RESOURCE  */
    VAR_CONFIG = 427,              /* VAR_CONFIG  */
    VAR_ACCESS = 428,              /* VAR_ACCESS  */
    WITH = 429,                    /* WITH  */
    SINGLE = 430,                  /* SINGLE  */
    INTERVAL = 431,                /* INTERVAL  */
    READ_WRITE = 432,              /* READ_WRITE  */
    READ_ONLY = 433,               /* READ_ONLY  */
    EOL = 434,                     /* EOL  */
    sendto_identifier_token = 435, /* sendto_identifier_token  */
    LD = 436,                      /* LD  */
    LDN = 437,                     /* LDN  */
    ST = 438,                      /* ST  */
    STN = 439,                     /* STN  */
    NOT = 440,                     /* NOT  */
    S = 441,                       /* S  */
    R = 442,                       /* R  */
    S1 = 443,                      /* S1  */
    R1 = 444,                      /* R1  */
    CLK = 445,                     /* CLK  */
    CU = 446,                      /* CU  */
    CD = 447,                      /* CD  */
    PV = 448,                      /* PV  */
    IN = 449,                      /* IN  */
    PT = 450,                      /* PT  */
    AND = 451,                     /* AND  */
    AND2 = 452,                    /* AND2  */
    OR = 453,                      /* OR  */
    XOR = 454,                     /* XOR  */
    ANDN = 455,                    /* ANDN  */
    ANDN2 = 456,                   /* ANDN2  */
    ORN = 457,                     /* ORN  */
    XORN = 458,                    /* XORN  */
    ADD = 459,                     /* ADD  */
    SUB = 460,                     /* SUB  */
    MUL = 461,                     /* MUL  */
    DIV = 462,                     /* DIV  */
    MOD = 463,                     /* MOD  */
    GT = 464,                      /* GT  */
    GE = 465,                      /* GE  */
    EQ = 466,                      /* EQ  */
    LT = 467,                      /* LT  */
    LE = 468,                      /* LE  */
    NE = 469,                      /* NE  */
    CAL = 470,                     /* CAL  */
    CALC = 471,                    /* CALC  */
    CALCN = 472,                   /* CALCN  */
    RET = 473,                     /* RET  */
    RETC = 474,                    /* RETC  */
    RETCN = 475,                   /* RETCN  */
    JMP = 476,                     /* JMP  */
    JMPC = 477,                    /* JMPC  */
    JMPCN = 478,                   /* JMPCN  */
    SENDTO = 479,                  /* SENDTO  */
    OPER_NE = 480,                 /* OPER_NE  */
    OPER_GE = 481,                 /* OPER_GE  */
    OPER_LE = 482,                 /* OPER_LE  */
    OPER_EXP = 483,                /* OPER_EXP  */
    RETURN = 484,                  /* RETURN  */
    IF = 485,                      /* IF  */
    THEN = 486,                    /* THEN  */
    ELSIF = 487,                   /* ELSIF  */
    ELSE = 488,                    /* ELSE  */
    END_IF = 489,                  /* END_IF  */
    CASE = 490,                    /* CASE  */
    END_CASE = 491,                /* END_CASE  */
    FOR = 492,                     /* FOR  */
    BY = 493,                      /* BY  */
    DO = 494,                      /* DO  */
    END_FOR = 495,                 /* END_FOR  */
    WHILE = 496,                   /* WHILE  */
    END_WHILE = 497,               /* END_WHILE  */
    REPEAT = 498,                  /* REPEAT  */
    UNTIL = 499,                   /* UNTIL  */
    END_REPEAT = 500,              /* END_REPEAT  */
    EXIT = 501                     /* EXIT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define END_OF_INPUT 0
#define YYerror 256
#define YYUNDEF 257
#define BOGUS_TOKEN_ID 258
#define prev_declared_variable_name_token 259
#define prev_declared_direct_variable_token 260
#define prev_declared_fb_name_token 261
#define prev_declared_simple_type_name_token 262
#define prev_declared_subrange_type_name_token 263
#define prev_declared_enumerated_type_name_token 264
#define prev_declared_array_type_name_token 265
#define prev_declared_structure_type_name_token 266
#define prev_declared_string_type_name_token 267
#define prev_declared_ref_type_name_token 268
#define prev_declared_derived_function_name_token 269
#define prev_declared_derived_function_block_name_token 270
#define prev_declared_program_type_name_token 271
#define disable_code_generation_pragma_token 272
#define enable_code_generation_pragma_token 273
#define pragma_token 274
#define EN 275
#define ENO 276
#define REF 277
#define DREF 278
#define REF_TO 279
#define NULL_token 280
#define identifier_token 281
#define integer_token 282
#define binary_integer_token 283
#define octal_integer_token 284
#define hex_integer_token 285
#define real_token 286
#define safeboolean_true_literal_token 287
#define safeboolean_false_literal_token 288
#define boolean_true_literal_token 289
#define boolean_false_literal_token 290
#define FALSE 291
#define TRUE 292
#define single_byte_character_string_token 293
#define double_byte_character_string_token 294
#define fixed_point_token 295
#define fixed_point_d_token 296
#define integer_d_token 297
#define fixed_point_h_token 298
#define integer_h_token 299
#define fixed_point_m_token 300
#define integer_m_token 301
#define fixed_point_s_token 302
#define integer_s_token 303
#define fixed_point_ms_token 304
#define integer_ms_token 305
#define end_interval_token 306
#define erroneous_interval_token 307
#define T_SHARP 308
#define D_SHARP 309
#define BYTE 310
#define WORD 311
#define DWORD 312
#define LWORD 313
#define LREAL 314
#define REAL 315
#define SINT 316
#define INT 317
#define DINT 318
#define LINT 319
#define USINT 320
#define UINT 321
#define UDINT 322
#define ULINT 323
#define WSTRING 324
#define STRING 325
#define BOOL 326
#define TIME 327
#define DATE 328
#define DATE_AND_TIME 329
#define DT 330
#define TIME_OF_DAY 331
#define TOD 332
#define SAFEBYTE 333
#define SAFEWORD 334
#define SAFEDWORD 335
#define SAFELWORD 336
#define SAFELREAL 337
#define SAFEREAL 338
#define SAFESINT 339
#define SAFEINT 340
#define SAFEDINT 341
#define SAFELINT 342
#define SAFEUSINT 343
#define SAFEUINT 344
#define SAFEUDINT 345
#define SAFEULINT 346
#define SAFEWSTRING 347
#define SAFESTRING 348
#define SAFEBOOL 349
#define SAFETIME 350
#define SAFEDATE 351
#define SAFEDATE_AND_TIME 352
#define SAFEDT 353
#define SAFETIME_OF_DAY 354
#define SAFETOD 355
#define ANY 356
#define ANY_DERIVED 357
#define ANY_ELEMENTARY 358
#define ANY_MAGNITUDE 359
#define ANY_NUM 360
#define ANY_REAL 361
#define ANY_INT 362
#define ANY_BIT 363
#define ANY_STRING 364
#define ANY_DATE 365
#define ASSIGN 366
#define DOTDOT 367
#define TYPE 368
#define END_TYPE 369
#define ARRAY 370
#define OF 371
#define STRUCT 372
#define END_STRUCT 373
#define direct_variable_token 374
#define incompl_location_token 375
#define VAR_INPUT 376
#define VAR_OUTPUT 377
#define VAR_IN_OUT 378
#define VAR_EXTERNAL 379
#define VAR_GLOBAL 380
#define END_VAR 381
#define RETAIN 382
#define NON_RETAIN 383
#define R_EDGE 384
#define F_EDGE 385
#define AT 386
#define standard_function_name_token 387
#define FUNCTION 388
#define END_FUNCTION 389
#define CONSTANT 390
#define standard_function_block_name_token 391
#define FUNCTION_BLOCK 392
#define END_FUNCTION_BLOCK 393
#define VAR_TEMP 394
#define VAR 395
#define PROGRAM 396
#define END_PROGRAM 397
#define ACTION 398
#define END_ACTION 399
#define TRANSITION 400
#define END_TRANSITION 401
#define FROM 402
#define TO 403
#define PRIORITY 404
#define INITIAL_STEP 405
#define STEP 406
#define END_STEP 407
#define L 408
#define D 409
#define SD 410
#define DS 411
#define SL 412
#define N 413
#define P 414
#define P0 415
#define P1 416
#define prev_declared_global_var_name_token 417
#define prev_declared_program_name_token 418
#define prev_declared_resource_name_token 419
#define prev_declared_configuration_name_token 420
#define CONFIGURATION 421
#define END_CONFIGURATION 422
#define TASK 423
#define RESOURCE 424
#define ON 425
#define END_RESOURCE 426
#define VAR_CONFIG 427
#define VAR_ACCESS 428
#define WITH 429
#define SINGLE 430
#define INTERVAL 431
#define READ_WRITE 432
#define READ_ONLY 433
#define EOL 434
#define sendto_identifier_token 435
#define LD 436
#define LDN 437
#define ST 438
#define STN 439
#define NOT 440
#define S 441
#define R 442
#define S1 443
#define R1 444
#define CLK 445
#define CU 446
#define CD 447
#define PV 448
#define IN 449
#define PT 450
#define AND 451
#define AND2 452
#define OR 453
#define XOR 454
#define ANDN 455
#define ANDN2 456
#define ORN 457
#define XORN 458
#define ADD 459
#define SUB 460
#define MUL 461
#define DIV 462
#define MOD 463
#define GT 464
#define GE 465
#define EQ 466
#define LT 467
#define LE 468
#define NE 469
#define CAL 470
#define CALC 471
#define CALCN 472
#define RET 473
#define RETC 474
#define RETCN 475
#define JMP 476
#define JMPC 477
#define JMPCN 478
#define SENDTO 479
#define OPER_NE 480
#define OPER_GE 481
#define OPER_LE 482
#define OPER_EXP 483
#define RETURN 484
#define IF 485
#define THEN 486
#define ELSIF 487
#define ELSE 488
#define END_IF 489
#define CASE 490
#define END_CASE 491
#define FOR 492
#define BY 493
#define DO 494
#define END_FOR 495
#define WHILE 496
#define END_WHILE 497
#define REPEAT 498
#define UNTIL 499
#define END_REPEAT 500
#define EXIT 501

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 286 "iec_bison.yy"

    symbol_c 	*leaf;
    list_c	*list;
    char 	*ID;	/* token value */

#line 596 "iec_bison.hh"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
};
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


extern YYSTYPE yylval;
extern YYLTYPE yylloc;

int yyparse (void);


#endif /* !YY_YY_IEC_BISON_HH_INCLUDED  */
