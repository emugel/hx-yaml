package yaml.util;

#if false
import haxe.Utf8;
#else
import yaml.Utf8;
#end

class Utf8
{
	public static function substring(value:String, startIndex:Int, ?endIndex:Null<Int>):String
	{
		var size = Utf8.length(value);
		var pos = startIndex;
		var length = 0;
		
		if (endIndex == null)
		{
			length = size - pos;
		}
		else 
		{
			if (startIndex > endIndex)
			{
				pos = endIndex;
				endIndex = startIndex;
			}
			length = endIndex - pos;
		}
		
		return Utf8.sub(value, pos, length);
	}
}
