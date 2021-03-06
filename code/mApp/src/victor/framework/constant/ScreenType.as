package victor.framework.constant
{
	import flash.geom.Rectangle;
	
	import victor.framework.utils.apps;

	/**
	 * ……
	 * @author 	yangsj 
	 * 			2014-6-13
	 */
	public class ScreenType
	{
		
		
		public function ScreenType()
		{
		}
		
		public static const STANDARD_WIDTH:int = 640;
		public static const STANDARD_HEIGHT:int = 960;
		
		public static function get screenRectangle():Rectangle
		{
			return new Rectangle(0,0,screenWidth,screenHeight);
		}
		
		public static function get screenWidth():Number
		{
			return apps.fullScreenWidth;
		}
		
		public static function get screenHeight():Number
		{
			return apps.fullScreenHeight;
		}
		
		public static function get offX():Number
		{
			return ( screenWidth - STANDARD_WIDTH ) * 0.5;
		}
		
		public static function get offY():Number
		{
			return ( screenHeight - STANDARD_HEIGHT ) * 0.5;
		}
		
		public static function get scale():Number
		{
			return Math.max( scaleX, scaleY );
		}
		
		public static function get scaleX():Number
		{
			return screenWidth / STANDARD_WIDTH;
		}
		
		public static function get scaleY():Number
		{
			return screenHeight / STANDARD_HEIGHT;
		}
		
	}
}