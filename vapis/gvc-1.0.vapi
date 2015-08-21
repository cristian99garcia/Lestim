[CCode (cprefix = "Gvc", gir_namespace = "Gvc", gir_version = "1.0", lower_case_cprefix = "gvc_")]
namespace Gvc {
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-channel-map.h", type_id = "gvc_channel_map_get_type ()")]
	public class ChannelMap : GLib.Object {
		[CCode (has_construct_function = false)]
		public ChannelMap ();
		public bool can_balance ();
		public bool can_fade ();
		public unowned string get_mapping ();
		public uint get_num_channels ();
		public double get_volume ();
		public virtual signal void volume_changed (bool @set);
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-card.h", type_id = "gvc_mixer_card_get_type ()")]
	public class MixerCard : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MixerCard ();
		public bool change_profile (string profile);
		public GLib.Icon get_gicon ();
		public unowned string get_icon_name ();
		public uint get_id ();
		public uint get_index ();
		public unowned string get_name ();
		public unowned GLib.List<Gvc.MixerCardPort> get_ports ();
		public unowned GLib.List<Gvc.MixerCardProfile> get_profiles ();
		public bool set_icon_name (string name);
		public bool set_name (string name);
		public bool set_ports (owned GLib.List<Gvc.MixerCardPort> ports);
		public bool set_profile (string profile);
		public bool set_profiles (owned GLib.List<Gvc.MixerCardProfile> profiles);
		[NoAccessorMethod]
		public string human_profile { owned get; }
		[NoAccessorMethod]
		public string icon_name { owned get; set construct; }
		public ulong id { get; construct; }
		public ulong index { get; construct; }
		[NoAccessorMethod]
		public string name { owned get; set construct; }
		[NoAccessorMethod]
		public void* pa_context { get; construct; }
		[NoAccessorMethod]
		public string profile { owned get; set; }
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-control.h", type_id = "gvc_mixer_control_get_type ()")]
	public class MixerControl : GLib.Object {
		[CCode (has_construct_function = false)]
		public MixerControl (string name);
		public void change_input (Gvc.MixerUIDevice input);
		public void change_output (Gvc.MixerUIDevice output);
		public bool change_profile_on_selected_device (Gvc.MixerUIDevice device, string profile);
		public bool close ();
		public GLib.SList<weak Gvc.MixerCard> get_cards ();
		public unowned Gvc.MixerStream get_default_sink ();
		public unowned Gvc.MixerStream get_default_source ();
		public unowned Gvc.MixerStream get_event_sink_input ();
		public GLib.SList<weak Gvc.MixerSinkInput> get_sink_inputs ();
		public GLib.SList<weak Gvc.MixerSink> get_sinks ();
		public GLib.SList<weak Gvc.MixerSourceOutput> get_source_outputs ();
		public GLib.SList<weak Gvc.MixerSource> get_sources ();
		public Gvc.MixerControlState get_state ();
		public unowned Gvc.MixerStream get_stream_from_device (Gvc.MixerUIDevice device);
		public GLib.SList<weak Gvc.MixerStream> get_streams ();
		public double get_vol_max_amplified ();
		public double get_vol_max_norm ();
		public unowned Gvc.MixerCard lookup_card_id (uint id);
		public unowned Gvc.MixerUIDevice lookup_device_from_stream (Gvc.MixerStream stream);
		public unowned Gvc.MixerUIDevice lookup_input_id (uint id);
		public unowned Gvc.MixerUIDevice lookup_output_id (uint id);
		public unowned Gvc.MixerStream lookup_stream_id (uint id);
		public bool open ();
		public bool set_default_sink (Gvc.MixerStream stream);
		public bool set_default_source (Gvc.MixerStream stream);
		[NoAccessorMethod]
		public string name { owned get; construct; }
		public virtual signal void active_input_update (uint id);
		public virtual signal void active_output_update (uint id);
		public virtual signal void card_added (uint id);
		public virtual signal void card_removed (uint id);
		public virtual signal void default_sink_changed (uint id);
		public virtual signal void default_source_changed (uint id);
		public virtual signal void input_added (uint id);
		public virtual signal void input_removed (uint id);
		public virtual signal void output_added (uint id);
		public virtual signal void output_removed (uint id);
		public virtual signal void state_changed (uint new_state);
		public virtual signal void stream_added (uint id);
		public virtual signal void stream_removed (uint id);
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-event-role.h", type_id = "gvc_mixer_event_role_get_type ()")]
	public class MixerEventRole : Gvc.MixerStream {
		[CCode (has_construct_function = false)]
		protected MixerEventRole ();
		[NoAccessorMethod]
		public string device { owned get; set construct; }
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-sink.h", type_id = "gvc_mixer_sink_get_type ()")]
	public class MixerSink : Gvc.MixerStream {
		[CCode (has_construct_function = false)]
		protected MixerSink ();
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-input.h", type_id = "gvc_mixer_sink_input_get_type ()")]
	public class MixerSinkInput : Gvc.MixerStream {
		[CCode (has_construct_function = false)]
		protected MixerSinkInput ();
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvx-mixer-source.h", type_id = "gvc_mixer_source_get_type ()")]
	public class MixerSource : Gvc.MixerStream {
		[CCode (has_construct_function = false)]
		protected MixerSource ();
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-source-output.h", type_id = "gvc_mixer_source_output_get_type ()")]
	public class MixerSourceOutput : Gvc.MixerStream {
		[CCode (has_construct_function = false)]
		protected MixerSourceOutput ();
	}
	[CCode (cname = "gvc_mixer_stream_push_volume", cheader_filename = "pulse/pulseaudio.h,gvc-mixer-stream.h")]
	public void push_volume(MixerStream stream);

	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-stream.h", type_id = "gvc_mixer_stream_get_type ()")]
	public abstract class MixerStream : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MixerStream ();
		public virtual bool change_is_muted (bool is_muted);
		public virtual bool change_port (string port);
		public unowned string get_application_id ();
		public uint32 get_base_volume ();
		public bool get_can_decibel ();
		public int get_card_index ();
		public unowned Gvc.ChannelMap get_channel_map ();
		public double get_decibel ();
		public unowned string get_description ();
		public unowned string get_form_factor ();
		public GLib.Icon get_gicon ();
		public unowned string get_icon_name ();
		public uint get_id ();
		public uint get_index ();
		public bool get_is_muted ();
		public unowned string get_name ();
		public unowned Gvc.MixerStreamPort get_port ();
		public unowned GLib.List<Gvc.MixerStreamPort> get_ports ();
		public unowned string get_sysfs_path ();
		public uint32 get_volume ();
		public bool is_running ();
		[NoWrapper]
		public virtual bool push_volume (void* operation);
		public bool set_application_id (string application_id);
		public bool set_base_volume (uint32 base_volume);
		public bool set_can_decibel (bool can_decibel);
		public bool set_card_index (int card_index);
		public bool set_decibel (double db);
		public bool set_description (string description);
		public bool set_form_factor (string form_factor);
		public bool set_icon_name (string name);
		public bool set_is_event_stream (bool is_event_stream);
		public bool set_is_muted (bool is_muted);
		public bool set_is_virtual (bool is_event_stream);
		public bool set_name (string name);
		public bool set_port (string port);
		public bool set_ports (owned GLib.List<Gvc.MixerStreamPort> ports);
		public bool set_sysfs_path (string sysfs_path);
		public bool set_volume (uint32 volume);
		[NoAccessorMethod]
		public string application_id { owned get; set construct; }
		[NoAccessorMethod]
		public bool can_decibel { get; set construct; }
		[NoAccessorMethod]
		public long card_index { get; set construct; }
		[NoAccessorMethod]
		public Gvc.ChannelMap channel_map { owned get; set construct; }
		[NoAccessorMethod]
		public double decibel { get; set construct; }
		[NoAccessorMethod]
		public string description { owned get; set construct; }
		[NoAccessorMethod]
		public string form_factor { owned get; set construct; }
		[NoAccessorMethod]
		public string icon_name { owned get; set construct; }
		public ulong id { get; construct; }
		public ulong index { get; construct; }
		[NoAccessorMethod]
		public bool is_event_stream { get; set construct; }
		[NoAccessorMethod]
		public bool is_muted { get; set construct; }
		[NoAccessorMethod]
		public bool is_virtual { get; set construct; }
		[NoAccessorMethod]
		public string name { owned get; set construct; }
		[NoAccessorMethod]
		public void* pa_context { get; construct; }
		[NoAccessorMethod]
		public string port { owned get; set; }
		[NoAccessorMethod]
		public string sysfs_path { owned get; set construct; }
		[NoAccessorMethod]
		public ulong volume { get; set; }
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-stream.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvc_mixer_stream_port_get_type ()")]
	[Compact]
	public class MixerStreamPort {
		public bool available;
		public weak string human_port;
		public weak string port;
		public uint priority;
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-ui-device.h", type_id = "gvc_mixer_ui_device_get_type ()")]
	public class MixerUIDevice : GLib.Object {
		[CCode (has_construct_function = false)]
		protected MixerUIDevice ();
		public unowned string get_active_profile ();
		public unowned string get_best_profile (string selected, string current);
		public unowned string get_description ();
		public GLib.Icon get_gicon ();
		public unowned string get_icon_name ();
		public uint get_id ();
		public unowned string get_matching_profile (string profile);
		public unowned string get_origin ();
		public unowned string get_port ();
		public unowned GLib.List<Gvc.MixerCardProfile> get_profiles ();
		public int get_stream_id ();
		public unowned GLib.List<Gvc.MixerCardProfile> get_supported_profiles ();
		public unowned string get_top_priority_profile ();
		public unowned string get_user_preferred_profile ();
		public bool has_ports ();
		public void invalidate_stream ();
		public bool is_output ();
		public void set_profiles (GLib.List<Gvc.MixerCardProfile> in_profiles);
		public void set_user_preferred_profile (string profile);
		public bool should_profiles_be_hidden ();
		[NoAccessorMethod]
		public void* card { get; set; }
		[NoAccessorMethod]
		public string description { owned get; set; }
		[NoAccessorMethod]
		public string icon_name { owned get; set construct; }
		[NoAccessorMethod]
		public string origin { owned get; set; }
		[NoAccessorMethod]
		public bool port_available { get; set; }
		[NoAccessorMethod]
		public string port_name { owned get; set; }
		[NoAccessorMethod]
		public int stream_id { get; set; }
		[NoAccessorMethod]
		public uint type { get; set; }
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-card.h", has_type_id = false)]
	public struct MixerCardPort {
		public weak string port;
		public weak string human_port;
		public weak string icon_name;
		public uint priority;
		public int available;
		public int direction;
		public weak GLib.List<void*> profiles;
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-card.h", has_type_id = false)]
	public struct MixerCardProfile {
		public weak string profile;
		public weak string human_profile;
		public weak string status;
		public uint priority;
		public uint n_sinks;
		public uint n_sources;
		public int compare (Gvc.MixerCardProfile b);
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-control.h", cprefix = "GVC_STATE_", has_type_id = false)]
	public enum MixerControlState {
		CLOSED,
		READY,
		CONNECTING,
		FAILED
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-ui-device.h", cprefix = "", has_type_id = false)]
	public enum MixerUIDeviceDirection {
		[CCode (cname = "UIDeviceInput")]
		IDEVICEINPUT,
		[CCode (cname = "UIDeviceOutput")]
		IDEVICEOUTPUT
	}
	[CCode (cheader_filename = "pulse/pulseaudio.h,gvc-mixer-ui-device.h", cname = "GVC_MIXER_UI_DEVICE_INVALID")]
	public const int MIXER_UI_DEVICE_INVALID;
}
