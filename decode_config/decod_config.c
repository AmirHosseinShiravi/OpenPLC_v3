// Include necessary libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/parser.h>

// Define structures for each driver's datapoint(tag)
struct LIO_Tag {
    char name[32];
    int type;
    int init;
    int address;
    char range[16];
    char deadband[16];
    char desc[64];
    int tagindex;
};

struct DNP_Tag {
    char name[32];
    int type;
    int class;
    int init;
    int address;
    int group;
    char deadband[16];
    int retain;
    char desc[64];
    int tagindex;
};


struct RIO_Tag {
    char blockname[32];
    int type;
    int address;
    char name[32];
    int tagindex;
};

struct SQL_Tag {
    char name[32];
    int type;
    int address;
    char desc[64];
    int tagindex;
};

// Define structure for each driver's options
struct LIO_Options {
    int chatterfiltercount;
    int chatterfilterbasetimems;
    int chatterfilterfreezetimeMs;
    int ioscanspeed;
    int sensortype;
    int aorange;
    char tagconfiguration[16];
};

struct DNP_Options {
    int disable;
    int comport;
    int baudrate;
    int databits;
    int stopbits;
    int parity;
    int flowcontrol;
    int slaveaddress;
    int masteraddress;
    int instance;
    int socketport;
    float physicallayerscantime;
    int sbotimeout;
    int linkstatusperiod;
    int appconfirmationtimeout;
    int maxeventnum;
    int clockvalidperiod;
    int dllackconfirmationtimeout;
    char tagconfiguration[16];
    int unsolicitedretrydelay;
    int unsolicitedsendretries;
    char masteripaddress[16];
    char localipaddress[16];
    int enableunsolicited;
    int sendunsolicitedwhenonline;
    int uselocaltime;
    int diagmode;
    int dllackconfirmation;
    char physicallayer[16];
    int authenticationenabled;
    int userlistnum;
    int authagressivemodesupport;
    int authkeychangeinterval;
    int authmaxkeychangecount;
    int authmaxerrorcount;
    int authassociationid;
    int authreplytimeout;
    int authhmacalgorithm;
    int authkeywrapalgorithm;
    int dihighspeedeventscan;
    int deleteoldestevent;
};

struct RIO_Options {
    int disable;
    int comport;
    int baudrate;
    int databits;
    int stopbits;
    int parity;
    int instance;
    float delaybetweenpolls;
    int contpoll;
    int byteformat;
    int writebychange;
    int diagmode;
    char physicallayer[16];
};

struct SQL_Options {
    int disable;
    char physicallayer[16];
    int cyclicinterval;
    int maxdatabasesize;
    char databasepath[128];
    int databaselocation;
    int recordmode;
    char tagconfiguration[]
};

