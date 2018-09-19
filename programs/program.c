 
int add(int x, int y) {
    return x + y;
}

int sub(int x, int y) {
    return x - y;
}

void write_string(int[] s) {
    int i = 0;
    while(s[i] != 0) {
        write_char(s[i]);
        i = i + 1;
    }
}

int exp(int i,int j){
    int res = 1;
    for(int s=0;,s<j,s=s+1;){
        res =res*i;
        
    }
    return res;
}
//test

void write_int(int inp){
    int i=0;
    int j=10;
    int s = inp;
    while(s>0){
        s = s/10;
        i=1+i;
    }
    write_char('0'+i);
    write_char('\n');
    
    //test
    s = inp;
    int m = exp(10,i-1);
    for( int t=i-1;, t>=0,t=t-1;){
        int k = s/ m;
        write_char('0'+k);
        s = s - k*m;
        m=m/10;
    }
    
}
//test

write_char('0' + 22 /10);
write_char('\n');

int s[] = "lenght:\n";
write_string(s);


write_int(240);
write_char('\n');


int y = sub(add(3, 2), 1);
write_char('0' + y);
write_char('\n');

for(int x = 0; , x < 10, x = x + 1;) {
    write_char('0' + x);
}
write_char('\n');
