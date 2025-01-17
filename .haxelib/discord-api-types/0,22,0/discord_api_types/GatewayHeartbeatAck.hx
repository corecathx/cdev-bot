package discord_api_types;

/**
	https://discord.com/developers/docs/topics/gateway#heartbeating-example-gateway-heartbeat-ack
**/
typedef GatewayHeartbeatAck = {
	/**
		Opcode for the payload
	**/
	var op : Int;
	/**
		Event data
	**/
	var d : Any;
	/**
		Sequence number, used for resuming sessions and heartbeats
	**/
	var s : Float;
};