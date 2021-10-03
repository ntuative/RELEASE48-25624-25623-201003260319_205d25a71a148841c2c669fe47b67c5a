package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_116:DisplayObject;
      
      private var var_2307:uint;
      
      private var var_836:IWindowToolTipAgentService;
      
      private var var_835:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_834:IWindowFocusManagerService;
      
      private var var_833:IWindowMouseListenerService;
      
      private var var_837:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2307 = 0;
         var_116 = param2;
         _windowContext = param1;
         var_837 = new WindowMouseDragger(param2);
         var_835 = new WindowMouseScaler(param2);
         var_833 = new WindowMouseListener(param2);
         var_834 = new FocusManager(param2);
         var_836 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_835;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_834;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_836;
      }
      
      public function dispose() : void
      {
         if(var_837 != null)
         {
            var_837.dispose();
            var_837 = null;
         }
         if(var_835 != null)
         {
            var_835.dispose();
            var_835 = null;
         }
         if(var_833 != null)
         {
            var_833.dispose();
            var_833 = null;
         }
         if(var_834 != null)
         {
            var_834.dispose();
            var_834 = null;
         }
         if(var_836 != null)
         {
            var_836.dispose();
            var_836 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_833;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_837;
      }
   }
}
