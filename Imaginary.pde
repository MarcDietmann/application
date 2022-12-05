static class I{
  double a;
  double b;
  
  I(double a, double b){
    this.a = a; 
    this.b = b;
  }
  
  static double abs(I i1){
    //print(i1+ " abs: "+sqrt((float)(i1.a*i1.a + i1.b*i1.b))+ "\n");
    return sqrt((float)(i1.a*i1.a + i1.b*i1.b));
  }
  
  static I add(I i1, I i2){
    return new I(i1.a+i2.a, i1.b+i2.b);
  }
  
  static I mul(I i1, I i2){
    return new I(i1.a * i2.a - i1.b*i2.b, i1.a*i2.b+ i1.b*i2.a);
  }
  static I iteration(I i, int n){
   
   if(n == 0)return new I(0,0);
   //print(i + " -> "+n+": "+ _iteration(new I(0,0), i,n-1)+"\n");
   return _iteration(new I(0,0), i,n-1);
  }
  static I _iteration(I z, I c, int n){
    if(n <= 0) return I.add(I.mul(z, z), c);
    else return _iteration(I.add(I.mul(z, z), c), c, n-1);
  }
  
  String toString(){
    return "{a: "+ this.a+" b: "+this.b+"}\n";
  }
  
}
