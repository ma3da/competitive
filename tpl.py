import typing


def rit(*args) -> typing.Iterator:
    """Read input and yield split cast values.
    """
    func, funcs = int, (int, float, str)
    sep = " "
    for a in args:
        if a in funcs:
            func = a
        elif isinstance(a, str):
            sep = a
    return map(func, input().strip().split(sep))


def pit(itr: typing.Iterable, sep:str=" ") -> None:
    print(sep.join(map(str, itr)))


def main():
    T = int(input())
    for _ in range(T):


main()
