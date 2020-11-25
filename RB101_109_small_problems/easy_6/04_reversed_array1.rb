
def reverse!(list)
  front = 0
  back = 1

  while front < list.size / 2
    list[front], list[-back] = list[-back], list[front]
    front += 1
    back += 1
  end
  list
end

reverse!([1,2,3,4])
reverse!(%w(a b e d c))
reverse!(['abc'])
reverse!([])
