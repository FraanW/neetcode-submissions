from typing import List, Tuple


def sum_3_integers(triplet: List[int]) -> int:
    i1, i2, i3 = triplet
    return i1 + i2 + i3


def compute_volume(box_dimensions: Tuple[int, int, int]) -> int:
    i1, i2, i3 = box_dimensions
    return i1* i2 * i3

  

# do not modify below this line
print(sum_3_integers([1, 2, 3]))
print(sum_3_integers([4, 6, 2]))

print(compute_volume((1, 2, 3)))
print(compute_volume((3, 2, 1)))
print(compute_volume((3, 9, 7)))
