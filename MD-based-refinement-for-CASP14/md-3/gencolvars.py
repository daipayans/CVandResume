#!/usr/bin/python

cv_template_1 = '''
colvar {
    name d%d
    distance {
        group1 {
            dummyAtom (%s, %s, %s)
        }
        group2 {
            atomNumbers {%s}
        }
    }
}
'''

cv_template_2 = '''
harmonicWalls {
    name hw%d
    colvars d%d
    lowerWalls 2.0
    upperWalls 6.0
    lowerWallConstant 1.0
    upperWallConstant 1.0
}
'''

print('colvarsTrajFrequency 2500')
print('colvarsRestartFrequency 2500')


with open('CA-initial.txt') as f:
    for count, line in enumerate(f):
        l=line.split()
        print(cv_template_1 %(count+1, l[1], l[2], l[3], l[0]))
        
with open('CA-initial.txt') as f:
    for count, line in enumerate(f):
        line.split()
        print(cv_template_2 %(count+1, count+1))


