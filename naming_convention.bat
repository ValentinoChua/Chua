size = 6
dataset = [None] * size
head = -1
tail = -1
status = True

def is_full():
    tail == (size-1)

def is_empty():
    tail == -1

def enqueue(data):
    global tail, dataset
    if is_full():
        print('Stack is full')
    else:
        tail+=1
        dataset[tail] = data

def dequeue():
    global size, tail, head, dataset
    if is_empty():
        print('stack empty')
    else:
        if tail != -1:
            del dataset[head+1]
            head = -1
            size += 1
            dataset.append(None)
            tail -= 1
        else:
            print('empty')

def clear():
    global tail, dataset
    if tail == -1:
        print ('There is no data')
         
    else:
        while tail != -1:
            dataset[tail] = None
            tail-=1

def peek():
    global tail, dataset
    if tail == -1:
        print('Empty')
    else:
        print('Dataset: '+dataset[tail])

while status==True:
    print('Dataset: '+ str(dataset))
    pilihan = (input('choice: 1. Enqueue | 2. Dequeue | 3. Clear | 4. Peek | 5. Close :'))
    if pilihan == '1':
        a = input('Input data: ')
        enqueue(a)
    elif pilihan == '2':
        dequeue()
    elif pilihan == '3':
        clear()
    elif pilihan == '4':
        peek()
    elif pilihan == '5':
        break
    else:
        print('There is no choice ')
