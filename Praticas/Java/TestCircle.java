public class TestCircle {
   public static void main(String[] args) {
      Circle c1 = new Circle();
      Circle c2 = new Circle();
      System.out.println("Area c1: " + c1.area());
      System.out.println("Area c2: " + c2.area());
      //c1.r = 0.5; // atributo é private -> erro
      Circle[] circs = new Circle[10];

      for (int i = 0; i < circs.length; i++) {
        circs[i] = new Circle();
      }
   }
}
