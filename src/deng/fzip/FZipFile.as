package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_599:int = 8;
      
      public static const const_1524:int = 10;
      
      public static const const_1316:int = 6;
      
      private static var var_1079:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1386:int = 0;
      
      public static const const_1483:int = 1;
      
      public static const const_1586:int = 2;
      
      public static const const_1467:int = 3;
      
      public static const const_1532:int = 4;
      
      public static const const_1444:int = 5;
      
      public static const const_1473:int = 9;
      
      public static const const_1612:int = 7;
       
      
      private var var_176:uint = 0;
      
      private var var_1080:uint = 0;
      
      private var var_747:Date;
      
      private var var_2216:int = -1;
      
      private var parseFunc:Function;
      
      private var var_529:Boolean = false;
      
      private var var_2327:int = -1;
      
      private var var_1343:uint = 0;
      
      private var var_2214:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_917:uint;
      
      private var var_19:ByteArray;
      
      private var var_746:uint;
      
      private var var_1576:Boolean = false;
      
      private var var_2328:int = -1;
      
      private var var_1578:String = "2.0";
      
      private var var_175:Boolean = false;
      
      private var var_2215:Boolean = false;
      
      private var var_364:String;
      
      private var var_619:uint = 0;
      
      private var var_1344:int = 0;
      
      private var var_439:String = "";
      
      private var var_745:int = 8;
      
      private var var_1577:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_364 = param1;
         _extraFields = new Dictionary();
         var_19 = new ByteArray();
         var_19.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_619;
      }
      
      public function set filename(param1:String) : void
      {
         var_439 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_175 && false)
         {
            var_19.position = 0;
            if(var_1079)
            {
               var_19.uncompress.apply(var_19,["deflate"]);
            }
            else
            {
               var_19.uncompress();
            }
            var_19.position = 0;
            var_175 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_439;
      }
      
      public function get date() : Date
      {
         return var_747;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1577)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_176 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_176)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1578;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_175)
         {
            uncompress();
         }
         var_19.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_19.readUTFBytes(var_19.bytesAvailable);
         }
         else
         {
            _loc3_ = var_19.readMultiByte(var_19.bytesAvailable,param2);
         }
         var_19.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_745 === const_599 && !var_1576)
         {
            if(var_1079)
            {
               param1.readBytes(var_19,0,var_176);
            }
            else
            {
               if(!var_529)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_19.writeByte(120);
               _loc2_ = uint(~var_2216 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_19.writeByte(_loc2_);
               param1.readBytes(var_19,2,var_176);
               var_19.position = var_19.length;
               var_19.writeUnsignedInt(var_917);
            }
            var_175 = true;
         }
         else
         {
            if(var_745 != const_1386)
            {
               throw new Error("Compression method " + var_745 + " is not supported.");
            }
            param1.readBytes(var_19,0,var_176);
            var_175 = false;
         }
         var_19.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1080 + var_1343 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_19.length = 0;
         var_19.position = 0;
         var_175 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_19.writeUTFBytes(param1);
            }
            else
            {
               var_19.writeMultiByte(param1,param2);
            }
            var_746 = ChecksumUtil.CRC32(var_19);
            var_529 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_747 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1344 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1344 << 8 | 20);
         param1.writeShort(var_364 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_599);
         var _loc5_:Date = var_747 != null ? var_747 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_746);
         param1.writeUnsignedInt(var_176);
         param1.writeUnsignedInt(var_619);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_364 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_439);
         }
         else
         {
            _loc8_.writeMultiByte(var_439,var_364);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_529)
            {
               _loc16_ = var_175;
               if(_loc16_)
               {
                  uncompress();
               }
               var_917 = ChecksumUtil.Adler32(var_19,0,var_19.length);
               var_529 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_917);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_364 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2214);
            }
            else
            {
               _loc8_.writeMultiByte(var_2214,var_364);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_176 > 0)
         {
            if(var_1079)
            {
               _loc13_ = 0;
               param1.writeBytes(var_19,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_19,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_176;
      }
      
      protected function compress() : void
      {
         if(!var_175)
         {
            if(false)
            {
               var_19.position = 0;
               var_619 = var_19.length;
               if(var_1079)
               {
                  var_19.compress.apply(var_19,["deflate"]);
                  var_176 = var_19.length;
               }
               else
               {
                  var_19.compress();
                  var_176 = -6;
               }
               var_19.position = 0;
               var_175 = true;
            }
            else
            {
               var_176 = 0;
               var_619 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1080 + var_1343)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_364 == "utf-8")
         {
            var_439 = param1.readUTFBytes(var_1080);
         }
         else
         {
            var_439 = param1.readMultiByte(var_1080,var_364);
         }
         var _loc2_:uint = var_1343;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_439 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_917 = param1.readUnsignedInt();
               var_529 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1344 = _loc2_ >> 8;
         var_1578 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_745 = param1.readUnsignedShort();
         var_1576 = (_loc3_ & 1) !== 0;
         var_1577 = (_loc3_ & 8) !== 0;
         var_2215 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_364 = "utf-8";
         }
         if(var_745 === const_1316)
         {
            var_2328 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2327 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_745 === const_599)
         {
            var_2216 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_747 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_746 = param1.readUnsignedInt();
         var_176 = param1.readUnsignedInt();
         var_619 = param1.readUnsignedInt();
         var_1080 = param1.readUnsignedShort();
         var_1343 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_19,0,param1.length);
            var_746 = ChecksumUtil.CRC32(var_19);
            var_529 = false;
         }
         else
         {
            var_19.length = 0;
            var_19.position = 0;
            var_175 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_439 + "\n  date:" + var_747 + "\n  sizeCompressed:" + var_176 + "\n  sizeUncompressed:" + var_619 + "\n  versionHost:" + var_1344 + "\n  versionNumber:" + var_1578 + "\n  compressionMethod:" + var_745 + "\n  encrypted:" + var_1576 + "\n  hasDataDescriptor:" + var_1577 + "\n  hasCompressedPatchedData:" + var_2215 + "\n  filenameEncoding:" + var_364 + "\n  crc32:" + var_746.toString(16) + "\n  adler32:" + var_917.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_175)
         {
            uncompress();
         }
         return var_19;
      }
   }
}
