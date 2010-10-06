require 'ffi'

module FFI
  module Cairo
    extend FFI::Library

    typedef :int, :cairo_bool_t

    enum :cairo_status, [
      :success,
      :no_memory,
      :invalid_restore,
      :invalid_pop_group,
      :no_current_point,
      :invalid_matrix,
      :invalid_status,
      :null_pointer,
      :invalid_string,
      :invalid_path_data,
      :read_error,
      :write_error,
      :surface_finished,
      :surface_type_mismatch,
      :pattern_type_mismatch,
      :invalid_content,
      :invalid_format,
      :invalid_visual,
      :file_not_found,
      :invalid_dash,
      :invalid_dsc_comment,
      :invalid_index,
      :clip_not_representable,
      :temp_file_error,
      :invalid_stride,
      :font_type_mismatch,
      :user_font_immutable,
      :user_font_error,
      :negative_count,
      :invalid_clusters,
      :invalid_slant,
      :invalid_weight,
      :invalid_size,
      :user_font_not_implemented,
      :device_type_mismatch,
      :device_error,
      :last_status
    ]

    enum :cairo_content, [
      :color, 0x1000,
      :alpha, 0x2000,
      :color_alpha, 0x3000
    ]

    enum :cairo_antialias, [
      :default,
      :none,
      :gray,
      :subpixel
    ]

    enum :cairo_fill_rule, [
      :winding,
      :even_odd
    ]

    enum :cairo_line_cap, [
      :butt,
      :round,
      :square
    ]

    enum :cairo_line_join, [
      :miter,
      :round,
      :bevel
    ]

    enum :cairo_operator, [
      :clear,

      :source,
      :over,
      :in,
      :out,
      :atop,

      :dest,
      :dest_over,
      :dest_in,
      :dest_out,
      :dest_atop,

      :xor,
      :add,
      :saturate,

      :multiply,
      :screen,
      :overlay,
      :darken,
      :lighten,
      :color_dodge,
      :color_burn,
      :hard_light,
      :soft_light,
      :difference,
      :exclusion,
      :hsl_hue,
      :hsl_saturation,
      :hsl_color,
      :hsl_luminosity
    ]

    callback :cairo_destroy_func, [:pointer], :void

    enum :cairo_extend, [
      :none,
      :repeat,
      :reflect,
      :pad
    ]

    enum :cairo_filter, [
      :fast,
      :good,
      :best,
      :nearest,
      :bilinear,
      :gaussian
    ]

    enum :cairo_pattern_type, [
      :solid,
      :surface,
      :linear,
      :radial
    ]

    enum :cairo_region_overlap, [
      :in,
      :out,
      :part
    ]

    enum :cairo_font_slant, [
      :normal,
      :italic,
      :oblique
    ]

    enum :cairo_font_weight, [
      :normal,
      :bold
    ]

    enum :cairo_font_type, [
      :toy,
      :ft,
      :win32,
      :quartz,
      :user
    ]

    enum :cairo_text_cluster_flags, [:backward, 0x00000001]

    enum :cairo_subpixel_order, [
      :default,
      :rgb,
      :bgr,
      :vrgb,
      :vbgr
    ]

    enum :cairo_hint_style, [
      :default,
      :none,
      :slight,
      :medium,
      :full
    ]

    enum :cairo_hint_metrics, [
      :default,
      :off,
      :on
    ]

    enum :cairo_device_type, [
      :drm,
      :gl,
      :script,
      :xcb,
      :xlib,
      :xml,
    ]

    MIME_TYPES = {
      :jp2 => 'image/jp2',
      :jpeg => 'image/jpeg',
      :png => 'image/png',
      :uri => 'text/x-uri'
    }

    enum :cairo_content, [
      :color, 0x1000,
      :alpha, 0x2000,
      :color_alpha, 0x3000
    ]

    enum :cairo_surface_type, [
      :image,
      :pdf,
      :ps,
      :xlib,
      :xcb,
      :glitz,
      :quartz,
      :win32,
      :beos,
      :directfb,
      :svg,
      :os2,
      :win32_printing,
      :quartz_image,
      :script,
      :qt,
      :recording,
      :vg,
      :gl,
      :drm,
      :tee,
      :xml,
      :skia,
      :subsurface
    ]

    enum :cairo_format, [
      :invalid, -1,
      :argb32, 0,
      :rgb24, 1,
      :a8, 2,
      :a1, 3,
      :rgb16_565, 4
    ]

    callback :cairo_read_func, [:pointer, :pointer, :uint], :cairo_status
    callback :cairo_write_func, [:pointer, :pointer, :uint], :cairo_status

    enum :cairo_pdf_version, [
      :v1_4,
      :v1_5
    ]

    enum :cairo_ps_level, [
      :level2,
      :level3
    ]

    enum :cairo_svg_version, [
      :v1_1,
      :v1_2
    ]
  end
end
