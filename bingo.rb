puts "Lets Bingo"

$a=[]
$arr_2d = Array.new(5){Array.new(5,0)}
$res=false

def assign
i=0
while i<25
$a[i]=rand(1..75)
i+=1
end
end

def check
uni=$a.uniq
if $a.length>uni.length
assign
check
else
  return true
end
end


def assign2d
  i=0
  j=0
  k=0
  while i<5
    while j<5
      $arr_2d[i][j]=$a[k]
    k+=1
    j+=1
  end
  i+=1
  j=0
  end
end

def display
  i=0
  j=0
  while i<5
    while j<5
    print  $arr_2d[i][j]
    print " "
    j+=1
  end
  puts ""
  i+=1
  j=0
  end
end

def randcall
return rand(1..75)
end

def mark(target)

  i=0
  j=0
  while i<5
    while j<5
    if $arr_2d[i][j]==target
    $arr_2d[i][j]=0
      end
      j+=1
      end
  i+=1
  j=0
  end
end


def results
i=0
j=0
res=false
while i<5
  while j<5
    if $arr_2d[j][i]==0
      keep=true
    else
      keep =false
      break
    end
    j+=1
  end
  if keep==true
   res=true
    break
  end
  j=0
  i+=1
end

if res==false

  i=0
  j=0

  while i<5
    while j<5
      if $arr_2d[i][j]==0
        keep=true
      else
        keep =false
        break
      end
      j+=1
    end
    if keep==true
     res=true
      break
    end
    j=0
    i+=1
  end

end


if res==false

  i=0
  j=0

  while i<5 && j<5
      if $arr_2d[i][j]==0
        keep=true
      else
        keep =false
        break
      end
      j+=1
      i+=1
    end

    if keep==true
     res=true
    end


end



if res==true
  puts "Bingo"
  $res=true
end


end







assign

if check==true
assign2d
end

def play
puts "Your Bingo Board"
display
ar=[]
while $res==false
  rc= randcall
  ar <<rc
  i=0
  count=0

while i<ar.length
if ar[i]==rc
count+=1
end
i+=1
end
puts ar
if count==1

puts "Cut This #{rc}"
else
  play
end
  inp=Integer(gets)
  mark(inp) #player
  #mark if made ai
  display #player board
  #display computer board here
  results #check player result
  #computer result check
end
end
play
