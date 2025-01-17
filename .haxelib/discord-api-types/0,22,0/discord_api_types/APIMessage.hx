package discord_api_types;

/**
	https://discord.com/developers/docs/resources/channel#message-object-message-structure
**/
typedef APIMessage = {
	/**
		ID of the message
	**/
	var id : Dynamic;
	/**
		ID of the channel the message was sent in
	**/
	var channel_id : Dynamic;
	/**
		ID of the guild the message was sent in
	**/
	@:optional
	var guild_id : Dynamic;
	/**
		The author of this message (only a valid user in the case where the message is generated by a user or bot user)
		
		If the message is generated by a webhook, the author object corresponds to the webhook's id,
		username, and avatar. You can tell if a message is generated by a webhook by checking for the `webhook_id` property
		
		See https://discord.com/developers/docs/resources/user#user-object
	**/
	var author : Dynamic;
	/**
		Member properties for this message's author
		
		The member object exists in `MESSAGE_CREATE` and `MESSAGE_UPDATE` events
		from text-based guild channels
		
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	@:optional
	var member : Dynamic;
	/**
		Contents of the message
	**/
	var content : String;
	/**
		When this message was sent
	**/
	var timestamp : String;
	/**
		When this message was edited (or null if never)
	**/
	var edited_timestamp : Null<String>;
	/**
		Whether this was a TTS message
	**/
	var tts : Bool;
	/**
		Whether this message mentions everyone
	**/
	var mention_everyone : Bool;
	/**
		Users specifically mentioned in the message
		
		The `member` field is only present in `MESSAGE_CREATE` and `MESSAGE_UPDATE` events
		from text-based guild channels
		
		See https://discord.com/developers/docs/resources/user#user-object
		See https://discord.com/developers/docs/resources/guild#guild-member-object
	**/
	var mentions : Array<Dynamic>;
	/**
		Roles specifically mentioned in this message
		
		See https://discord.com/developers/docs/topics/permissions#role-object
	**/
	var mention_roles : Array<Dynamic>;
	/**
		Channels specifically mentioned in this message
		
		Not all channel mentions in a message will appear in `mention_channels`.
		- Only textual channels that are visible to everyone in a lurkable guild will ever be included
		- Only crossposted messages (via Channel Following) currently include `mention_channels` at all
		
		If no mentions in the message meet these requirements, this field will not be sent
		
		See https://discord.com/developers/docs/resources/channel#channel-mention-object
	**/
	@:optional
	var mention_channels : Array<APIChannelMention>;
	/**
		Any attached files
		
		See https://discord.com/developers/docs/resources/channel#attachment-object
	**/
	var attachments : Array<APIAttachment>;
	/**
		Any embedded content
		
		See https://discord.com/developers/docs/resources/channel#embed-object
	**/
	var embeds : Array<APIEmbed>;
	/**
		Reactions to the message
		
		See https://discord.com/developers/docs/resources/channel#reaction-object
	**/
	@:optional
	var reactions : Array<APIReaction>;
	/**
		A nonce that can be used for optimistic message sending (up to 25 characters)
		
		**You will not receive this from further fetches. This is received only once from a `MESSAGE_CREATE`
		event to ensure it got sent**
	**/
	@:optional
	var nonce : ts.AnyOf2<String, Float>;
	/**
		Whether this message is pinned
	**/
	var pinned : Bool;
	/**
		If the message is generated by a webhook, this is the webhook's id
	**/
	@:optional
	var webhook_id : Dynamic;
	/**
		Type of message
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-types
	**/
	var type : MessageType;
	/**
		Sent with Rich Presence-related chat embeds
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-activity-structure
	**/
	@:optional
	var activity : APIMessageActivity;
	/**
		Sent with Rich Presence-related chat embeds
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-application-structure
	**/
	@:optional
	var application : Dynamic;
	/**
		If the message is a response to an Interaction, this is the id of the interaction's application
	**/
	@:optional
	var application_id : Dynamic;
	/**
		Reference data sent with crossposted messages, replies, pins, and thread starter messages
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-reference-structure
	**/
	@:optional
	var message_reference : APIMessageReference;
	/**
		Message flags combined as a bitfield
		
		See https://discord.com/developers/docs/resources/channel#message-object-message-flags
		
		See https://en.wikipedia.org/wiki/Bit_field
	**/
	@:optional
	var flags : MessageFlags;
	/**
		The message associated with the `message_reference`
		
		This field is only returned for messages with a `type` of `19` (REPLY).
		
		If the message is a reply but the `referenced_message` field is not present,
		the backend did not attempt to fetch the message that was being replied to,
		so its state is unknown.
		
		If the field exists but is `null`, the referenced message was deleted
		
		See https://discord.com/developers/docs/resources/channel#message-object
	**/
	@:optional
	var referenced_message : APIMessage;
	/**
		Sent if the message is a response to an Interaction
	**/
	@:optional
	var interaction : Dynamic;
	/**
		Sent if a thread was started from this message
	**/
	@:optional
	var thread : APIChannel;
	/**
		Sent if the message contains components like buttons, action rows, or other interactive components
	**/
	@:optional
	var components : Array<APIActionRowComponent>;
	/**
		Sent if the message contains stickers
		
		See https://discord.com/developers/docs/resources/sticker#sticker-item-object
	**/
	@:optional
	var sticker_items : Array<Dynamic>;
	/**
		The stickers sent with the message
		
		See https://discord.com/developers/docs/resources/sticker#sticker-object
	**/
	@:optional
	var stickers : Array<Dynamic>;
};