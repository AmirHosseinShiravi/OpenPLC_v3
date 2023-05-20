import csv

type_mapper = {
    'BOOL'  : '__IEC_BOOL_t',
    'SINT'  : '__IEC_SINT_t',
    'INT'   : '__IEC_INT_t',
    'DINT'  : '__IEC_DINT_t',
    'LINT'  : '__IEC_LINT_t',
    'USINT' : '__IEC_USINT_t',
    'UINT'  : '__IEC_UINT_t',
    'UDINT'  : '__IEC_UDINT_t',
    'ULINT'  : '__IEC_ULINT_t',
    'REAL'  : '__IEC_REAL_t',
    'LREAL' : '__IEC_LREAL_t',
    'TIME'  : '__IEC_TIME_t',
    'DATE'  : '__IEC_DATE_t',
    'TOD'   : '__IEC_TOD_t',
    'DT'    : '__IEC_DT_t',
    'STRING': '__IEC_STRING_t',
    'BYTE'  : '__IEC_BYTE_t',
    'WORD'  : '__IEC_WORD_t',
    'DWORD' : '__IEC_DWORD_t',
    'LWORD' : '__IEC_LWORD_t', 
}

def generate_extern_variables(variavles_file_path:str) -> str:
    with open(variavles_file_path,'r', encoding='utf-8') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=';')
        line_count = 0
        start_of_variables_rows = False
        string = ''
        for i, row in enumerate(csv_reader):
            if len(row) > 0:
                if str(row[0]) == '// Variables':
                    start_of_variables_rows = True
                    continue
                if start_of_variables_rows:
                    dot_counter = row[3].count('.')
                    if dot_counter > 2:
                        break
                    elif dot_counter == 2:
                        if type_mapper.get(row[4], None) is None:
                            continue
                        string += f'extern {type_mapper.get(row[4], row[4])} {row[3][(row[3].find(".") + 1):].replace(".", "__")};\n'

    return string

# print(generate_extern_variables('/home/amir/Water_RTU/OpenPLC_runtime/OpenPLC_v3/decode_config/VARIABLES.csv'))