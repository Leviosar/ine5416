# https://www.urionlinejudge.com.br/judge/en/problems/view/1091

from dataclasses import dataclass

@dataclass
class Point:
    x: int
    y: int

def list_to_point(coord: list) -> Point:
    return Point(x=coord[0], y=coord[1])

queries = int(input())

while queries != 0:

    division_point = list_to_point( list( map( int, input().split() ) ) )

    for i in range(queries):
        point: Point = list_to_point( list( map( int, input().split() ) ) )

        if point.x == division_point.x or point.y == division_point.y:
            print('divisa')
            continue
        
        if point.x > division_point.x and point.y > division_point.y:
            print('NE')
        elif point.x > division_point.x and point.y < division_point.y:
            print('SE')
        elif point.x < division_point.x and point.y < division_point.y:
            print('SO')
        else:
            print('NO')

    queries = int(input())