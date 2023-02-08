def merge_sort(arr)
    if arr.length ==1
        return arr
    else
        x= merge_sort(arr[0...arr.length/2])
        y= merge_sort(arr[arr.length/2..arr.length])
        res = []
        while x.length>0 && y.length>0
            x[0] < y[0] ? res << x.shift :  res << y.shift            
        end
        res += x
        res += y
        res
    end
end

p merge_sort([58,2,5,9,-8,65,22,-33,55,-2,5])