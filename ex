x = 1
h = 0.1
def f(x):
    return - x ** 2 + 3 * x - 2

for n in range(1,12):
    print("when x =", x, "=> f(x)=", f(x))
    x += h


first = f(1)
last = f(2)
x = h + 1
s = 0

while x < 2:
    s += f(x)
    x += h
print("First Height:",first)
print("Last Height:",last)
print("middlesum :",s)


i = h * (first + last + 2 * s) / 2
print("Integration is approximately",i)
t = 1 / 6
print("True value of integration is 1/6")
error = 100 * (t - i) / t
print("Therefore the error is",error,"%")
