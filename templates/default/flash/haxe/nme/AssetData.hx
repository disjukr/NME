package nme;


class AssetData {

	
	public static var className = new Map <String, Dynamic> ();
	public static var library = new Map <String, String> ();
	public static var type = new Map <String, String> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			::if (assets != null)::::foreach assets::className.set ("::id::", nme.NME_::flatName::);
			type.set ("::id::", "::type::");
			::end::::end::
			::if (libraries != null)::::foreach libraries::library.set ("::name::", "::type::");
			::end::::end::
			initialized = true;
			
		}
		
	}
	
	
}


::foreach assets::::if (type == "image")::class NME_::flatName:: extends nme.display.BitmapData { public function new () { super (0, 0); } }::else::class NME_::flatName:: extends ::flashClass:: { }::end::
::end::