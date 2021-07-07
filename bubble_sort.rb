# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?)

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(numList)
    i = 0
    j = 1
    changeCounter = 0
    loop do 
        if j == numList.length
            if changeCounter == 0
                p numList
                break
            else
                i = 0
                j = 1
                changeCounter = 0
            end
        elsif numList[i] > numList[j]
            numList[i], numList[j] = numList[j], numList[i]
            i += 1
            j += 1
            changeCounter += 1
        else
            i += 1
            j += 1
        end 
    end
    numList
end

bubble_sort([4,3,78,2,0,2,101,-5,222])