package js.html;

/**
	This WebVR API interface represents all the information needed to render a single frame of a VR scene; constructed by VRDisplay.getFrameData().
**/
@:native("VRFrameData") extern class VRFrameData {
	function new();
	final leftProjectionMatrix : js.lib.Float32Array;
	final leftViewMatrix : js.lib.Float32Array;
	final pose : VRPose;
	final rightProjectionMatrix : js.lib.Float32Array;
	final rightViewMatrix : js.lib.Float32Array;
	final timestamp : Float;
	static var prototype : VRFrameData;
}