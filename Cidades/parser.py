import math
import unicodedata
import sys
import xlrd

def strip_accents(s):
    return ''.join(c for c in unicodedata.normalize('NFD', s)
                   if unicodedata.category(c) != 'Mn')

orig_stdout = sys.stdout
f = open('cidadesParsed.pl', 'w')
sys.stdout = f

arrayid = []
arraycity = []
arraylat = []
arraylng = []
arrayadmin = []
arraycapital = []
workbook = xlrd.open_workbook('cidades.xlsx')
for sheet in workbook.sheets():
    for column in range(sheet.nrows):
        arrayid.append(str(sheet.cell_value(column, 0)))
        arraycity.append(sheet.cell_value(column, 1))
        arraylat.append(sheet.cell_value(column, 2))
        arraylng.append(sheet.cell_value(column, 3))
        arrayadmin.append(sheet.cell_value(column, 4))
        arraycapital.append(sheet.cell_value(column, 5))
    arrayid.pop(0)
    arraycity.pop(0)
    arraylat.pop(0)
    arraylng.pop(0)
    arrayadmin.pop(0)
    arraycapital.pop(0)
    for x in range(281):
        arraycity[x] = strip_accents(arraycity[x])
        arrayadmin[x] = strip_accents(arrayadmin[x])
        print(f'cidade({str(arrayid[x]):s}, \'{str(arraycity[x]):s}\', {str(arraylat[x]):s}, {str(arraylng[x]):s}, \'{str(arrayadmin[x]):s}\', \'{str(arraycapital[x]):s}\').')

sys.stdout = orig_stdout
f.close()

orig_stdout = sys.stdout
f = open('ligacoes.pl', 'w')
sys.stdout = f

arraylig = []
for x in range(281):
    for y in range(281):
        dist = math.sqrt((arraylat[x] - arraylat[y])**2 + (arraylng[x] - arraylng[y])**2) * 100
        if dist <= 15 and arraycity[x] != arraycity[y]:
            print(f'ligacao({str(arrayid[x]):s}, {str(arrayid[y]):s}, {str(dist):s}).')

sys.stdout = orig_stdout
f.close()
