package node.inspector.runtime;

/**
	If <code>debuggerId</code> is set stack trace comes from another debugger and can be resolved there. This allows to track cross-debugger calls. See <code>Runtime.StackTrace</code> and <code>Debugger.paused</code> for usages.
**/
typedef StackTraceId = {
	var id : String;
	@:optional
	var debuggerId : String;
};