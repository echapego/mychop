namespace my.myshop;

using {managed} from '@sap/cds/common';

entity Products: managed {
      key ID        : String(15);
      name          : String(30);
      status        : String(10);
      price         : Integer;
      taxrate       : Integer;
      currency      : String(3);
      height        : Integer;
      depth         : Integer;
      width         : Integer;
      sizeuom       : String(2);
      }