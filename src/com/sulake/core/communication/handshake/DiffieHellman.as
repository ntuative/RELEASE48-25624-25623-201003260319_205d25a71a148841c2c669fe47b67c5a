package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1214:BigInteger;
      
      private var var_556:BigInteger;
      
      private var var_1469:BigInteger;
      
      private var var_1468:BigInteger;
      
      private var var_1891:BigInteger;
      
      private var var_1685:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1214 = param1;
         var_1469 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1891.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1468 = new BigInteger();
         var_1468.fromRadix(param1,param2);
         var_1891 = var_1468.modPow(var_556,var_1214);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1685.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1214.toString() + ",generator: " + var_1469.toString() + ",secret: " + param1);
         var_556 = new BigInteger();
         var_556.fromRadix(param1,param2);
         var_1685 = var_1469.modPow(var_556,var_1214);
         return true;
      }
   }
}
