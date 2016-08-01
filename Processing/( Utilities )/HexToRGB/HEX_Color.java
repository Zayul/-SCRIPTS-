
public class HEX_Color{

  public final static String ARGB = "ARGB";
  public final static String RGBA = "RGBA";

  public String value; public String mode;
  public Integer A; public Integer R; public Integer G; public Integer B;
  public HEX_Color(String value){
    this.value = value;
    this.mode  = this.ARGB;
    this.initialize();
  }
  public HEX_Color(String value, String mode){
    this.value = value;
    this.mode  = mode;
    this.initialize();
  }

  private void initialize(){
    value = value.replaceAll("[#]", "");
    if (value.length() == 3){
      String rrggbb_Value = "";
      rrggbb_Value += ( value.substring(0,1) + value.substring(0,1) );
      rrggbb_Value += ( value.substring(1,2) + value.substring(1,2) );
      rrggbb_Value += ( value.substring(2,3) + value.substring(2,3) );
      value = rrggbb_Value;
      R = Integer.valueOf( value.substring(0, 1), 16 );
      G = Integer.valueOf( value.substring(1, 2), 16 );
      B = Integer.valueOf( value.substring(2, 3), 16 );
      A = 255;
    }
    else if (value.length() == 6){
      R = Integer.valueOf( value.substring(0, 2), 16 );
      G = Integer.valueOf( value.substring(2, 4), 16 );
      B = Integer.valueOf( value.substring(4, 6), 16 );
      A = 255;
    }
    else if (value.length() == 8){
      if ( mode.equals(ARGB) ){
        A = Integer.valueOf( value.substring(0, 2), 16 );
        R = Integer.valueOf( value.substring(2, 4), 16 );
        G = Integer.valueOf( value.substring(4, 6), 16 );
        B = Integer.valueOf( value.substring(6, 8), 16 );
      }
      else if ( mode.equals(RGBA) ){
        R = Integer.valueOf( value.substring(0, 2), 16 );
        G = Integer.valueOf( value.substring(2, 4), 16 );
        B = Integer.valueOf( value.substring(4, 6), 16 );
        A = Integer.valueOf( value.substring(6, 8), 16 );
      }
    }
  }

} // HEX_Color
