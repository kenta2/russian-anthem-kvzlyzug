#! perl -plwi
BEGIN{$count=1};
if (m,\\mark\s*#(\d),){
    $count=$1+1;
}
while(s,\\mark\s*\\default,\\mark #$count,g){
    $count++;
}
