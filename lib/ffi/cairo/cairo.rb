require 'ffi/cairo/types'

require 'ffi'

module FFI
  module Cairo
    extend FFI::Library

    ffi_lib 'cairo'

    #
    # Core
    #
    attach_function :cairo_create, [:pointer], :pointer
    attach_function :cairo_reference, [:pointer], :pointer
    attach_function :cairo_destroy, [:pointer], :void
    attach_function :cairo_status, [:pointer], :cairo_status
    attach_function :cairo_save, [:pointer], :void
    attach_function :cairo_restore, [:pointer], :void
    attach_function :cairo_get_target, [:pointer], :pointer
    attach_function :cairo_push_group, [:pointer], :void
    attach_function :cairo_push_group_with_content, [:pointer, :cairo_content], :void
    attach_function :cairo_pop_group, [:pointer], :pointer
    attach_function :cairo_pop_group_to_source, [:pointer], :void
    attach_function :cairo_get_group_target, [:pointer], :pointer
    attach_function :cairo_set_source_rgb, [:pointer, :double, :double, :double], :void
    attach_function :cairo_set_source_rgba, [:pointer, :double, :double, :double, :double], :void
    attach_function :cairo_set_source, [:pointer, :pointer], :void
    attach_function :cairo_set_source_surface, [:pointer, :pointer, :double, :double], :void
    attach_function :cairo_get_source, [:pointer], :pointer
    attach_function :cairo_set_antialias, [:pointer, :cairo_antialias], :void
    attach_function :cairo_get_antialias, [:pointer], :cairo_antialias
    attach_function :cairo_set_dash, [:pointer, :pointer, :int, :double], :void
    attach_function :cairo_get_dash_count, [:pointer], :int
    attach_function :cairo_get_dash, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_set_fill_rule, [:pointer, :cairo_fill_rule], :void
    attach_function :cairo_get_fill_rule, [:pointer], :cairo_fill_rule
    attach_function :cairo_set_line_cap, [:pointer, :cairo_line_cap], :void
    attach_function :cairo_get_line_cap, [:pointer], :cairo_line_cap
    attach_function :cairo_set_line_join, [:pointer, :cairo_line_join], :void
    attach_function :cairo_get_line_join, [:pointer], :cairo_line_join
    attach_function :cairo_set_line_width, [:pointer, :double], :void
    attach_function :cairo_set_miter_limit, [:pointer, :double], :void
    attach_function :cairo_get_miter_limit, [:pointer], :double
    attach_function :cairo_set_operator, [:pointer, :cairo_operator], :void
    attach_function :cairo_get_operator, [:pointer], :cairo_operator
    attach_function :cairo_set_tolerance, [:pointer, :double], :void
    attach_function :cairo_get_tolerance, [:pointer], :double
    attach_function :cairo_clip, [:pointer], :void
    attach_function :cairo_clip_preserve, [:pointer], :void
    attach_function :cairo_clip_extents, [:pointer, :pointer, :pointer, :pointer, :pointer], :void

    begin
      attach_function :cairo_in_clip, [:pointer, :double, :double], :cairo_bool_t
    rescue FFI::NotFoundError
    end

    attach_function :cairo_reset_clip, [:pointer], :void
    attach_function :cairo_rectangle_list_destroy, [:pointer], :void
    attach_function :cairo_copy_clip_rectangle_list, [:pointer], :pointer
    attach_function :cairo_fill, [:pointer], :void
    attach_function :cairo_fill_preserve, [:pointer], :void
    attach_function :cairo_fill_extents, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :cairo_in_fill, [:pointer, :double, :double], :cairo_bool_t
    attach_function :cairo_mask, [:pointer, :pointer], :void
    attach_function :cairo_mask_surface, [:pointer, :pointer, :double, :double], :void
    attach_function :cairo_paint, [:pointer], :void
    attach_function :cairo_paint_with_alpha, [:pointer, :double], :void
    attach_function :cairo_stroke, [:pointer], :void
    attach_function :cairo_stroke_preserve, [:pointer], :void
    attach_function :cairo_stroke_extents, [:pointer, :pointer, :pointer, :pointer, :pointer], :void
    attach_function :cairo_in_stroke, [:pointer, :double, :double], :cairo_bool_t
    attach_function :cairo_copy_page, [:pointer], :void
    attach_function :cairo_show_page, [:pointer], :void
    attach_function :cairo_get_reference_count, [:pointer], :uint
    attach_function :cairo_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
    attach_function :cairo_get_user_data, [:pointer, :pointer], :pointer

    #
    # Paths
    #
    attach_function :cairo_copy_path, [:pointer], :pointer
    attach_function :cairo_copy_path_flat, [:pointer], :pointer
    attach_function :cairo_path_destroy, [:pointer], :void
    attach_function :cairo_append_path, [:pointer, :pointer], :void
    attach_function :cairo_has_current_point, [:pointer], :cairo_bool_t
    attach_function :cairo_get_current_point, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_new_path, [:pointer], :void
    attach_function :cairo_new_sub_path, [:pointer], :void
    attach_function :cairo_close_path, [:pointer], :void
    attach_function :cairo_arc, [:pointer, :double, :double, :double, :double, :double], :void
    attach_function :cairo_arc_negative, [:pointer, :double, :double, :double, :double, :double], :void
    attach_function :cairo_curve_to, [:pointer, :double, :double, :double, :double, :double, :double], :void
    attach_function :cairo_line_to, [:pointer, :double, :double], :void
    attach_function :cairo_move_to, [:pointer, :double, :double], :void
    attach_function :cairo_rectangle, [:pointer, :double, :double, :double, :double], :void
    attach_function :cairo_glyph_path, [:pointer, :pointer, :int], :void
    attach_function :cairo_text_path, [:pointer, :pointer], :void
    attach_function :cairo_rel_curve_to, [:pointer, :double, :double, :double, :double, :double, :double], :void
    attach_function :cairo_rel_line_to, [:pointer, :double, :double], :void
    attach_function :cairo_path_extents, [:pointer, :pointer, :pointer, :pointer, :pointer], :void

    #
    # Patterns
    #
    attach_function :cairo_pattern_add_color_stop_rgb, [:pointer, :double, :double, :double, :double], :void
    attach_function :cairo_pattern_add_color_stop_rgba, [:pointer, :double, :double, :double, :double, :double], :void
    attach_function :cairo_pattern_get_color_stop_count, [:pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_get_color_stop_rgba, [:pointer, :int, :pointer, :pointer, :pointer, :pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_create_rgb, [:double, :double, :double], :pointer
    attach_function :cairo_pattern_create_rgba, [:double, :double, :double, :double], :pointer
    attach_function :cairo_pattern_get_rgba, [:pointer, :pointer, :pointer, :pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_create_for_surface, [:pointer], :pointer
    attach_function :cairo_pattern_get_surface, [:pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_create_linear, [:double, :double, :double, :double], :pointer
    attach_function :cairo_pattern_get_linear_points, [:pointer, :pointer, :pointer, :pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_create_radial, [:double, :double, :double, :double, :double, :double], :cairo_status
    attach_function :cairo_pattern_get_radial_circles, [:pointer, :pointer, :pointer, :pointer, :pointer, :pointer, :pointer], :cairo_status
    attach_function :cairo_pattern_reference, [:pointer], :pointer
    attach_function :cairo_pattern_destroy, [:pointer], :void
    attach_function :cairo_pattern_status, [:pointer], :cairo_status
    attach_function :cairo_pattern_set_extend, [:pointer, :cairo_extend], :void
    attach_function :cairo_pattern_set_filter, [:pointer, :cairo_filter], :void
    attach_function :cairo_pattern_get_filter, [:pointer], :cairo_filter
    attach_function :cairo_pattern_set_matrix, [:pointer, :pointer], :void
    attach_function :cairo_pattern_get_matrix, [:pointer, :pointer], :void
    attach_function :cairo_pattern_get_type, [:pointer], :cairo_pattern_type
    attach_function :cairo_pattern_get_reference_count, [:pointer], :uint
    attach_function :cairo_pattern_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
    attach_function :cairo_pattern_get_user_data, [:pointer, :pointer], :pointer

    begin
      #
      # Regions
      #
      attach_function :cairo_region_create, [], :pointer
      attach_function :cairo_region_create_rectangle, [:pointer], :pointer
      attach_function :cairo_region_create_rectangles, [:pointer, :int], :pointer
      attach_function :cairo_region_copy, [:pointer], :pointer
      attach_function :cairo_region_reference, [:pointer], :pointer
      attach_function :cairo_region_destroy, [:pointer], :void
      attach_function :cairo_region_status, [:pointer], :cairo_status
      attach_function :cairo_region_get_extents, [:pointer, :pointer], :void
      attach_function :cairo_region_num_rectangles, [:pointer], :int
      attach_function :cairo_region_get_rectangle, [:pointer, :int, :pointer], :void
      attach_function :cairo_region_is_empty, [:pointer], :cario_bool_t
      attach_function :cairo_region_contains_point, [:pointer, :int, :int], :cairo_bool_t
      attach_function :cairo_region_contains_rectangle, [:pointer, :pointer], :cairo_region_overlap
      attach_function :cairo_region_equal, [:pointer, :pointer], :cairo_bool_t
      attach_function :cairo_region_translate, [:pointer, :int, :int], :void
      attach_function :cairo_region_intersect, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_intersect_rectangle, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_subtract, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_subtract_rectangle, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_union, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_union_rectangle, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_xor, [:pointer, :pointer], :cairo_status
      attach_function :cairo_region_xor_rectangle, [:pointer, :pointer], :cairo_status
    rescue FFI::NotFoundError
    end

    #
    # Transforms
    #
    attach_function :cairo_translate, [:pointer, :double, :double], :void
    attach_function :cairo_scale, [:pointer, :double, :double], :void
    attach_function :cairo_rotate, [:pointer, :double], :void
    attach_function :cairo_transform, [:pointer, :pointer], :void
    attach_function :cairo_set_matrix, [:pointer, :pointer], :void
    attach_function :cairo_get_matrix, [:pointer, :pointer], :void
    attach_function :cairo_identity_matrix, [:pointer], :void
    attach_function :cairo_user_to_device, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_user_to_device_distance, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_device_to_user, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_device_to_user_distance, [:pointer, :pointer, :pointer], :void

    #
    # Text
    #
    attach_function :cairo_select_font_face, [:pointer, :pointer, :cairo_font_slant, :cairo_font_weight], :void
    attach_function :cairo_set_font_size, [:pointer, :double], :void
    attach_function :cairo_set_font_matrix, [:pointer, :pointer], :void
    attach_function :cairo_get_font_matrix, [:pointer, :pointer], :void
    attach_function :cairo_set_font_options, [:pointer, :pointer], :void
    attach_function :cairo_get_font_options, [:pointer, :pointer], :void
    attach_function :cairo_set_font_face, [:pointer, :pointer], :void
    attach_function :cairo_get_font_face, [:pointer], :pointer
    attach_function :cairo_set_scaled_font, [:pointer, :pointer], :void
    attach_function :cairo_get_scaled_font, [:pointer], :pointer
    attach_function :cairo_show_text, [:pointer, :pointer], :void
    attach_function :cairo_show_glyphs, [:pointer, :pointer, :int], :void
    attach_function :cairo_show_text_glyphs, [:pointer, :pointer, :int, :pointer, :int, :pointer, :int, :cairo_text_cluster_flags], :void
    attach_function :cairo_font_extents, [:pointer, :pointer], :void
    attach_function :cairo_text_extents, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_glyph_extents, [:pointer, :pointer, :int, :pointer], :void
    attach_function :cairo_toy_font_face_create, [:pointer, :cairo_font_slant, :cairo_font_weight], :pointer
    attach_function :cairo_toy_font_face_get_family, [:pointer], :string
    attach_function :cairo_toy_font_face_get_slant, [:pointer], :cairo_font_slant
    attach_function :cairo_toy_font_face_get_weight, [:pointer], :cairo_font_weight
    attach_function :cairo_glyph_allocate, [:int], :pointer
    attach_function :cairo_glyph_free, [:pointer], :void
    attach_function :cairo_text_cluster_allocate, [:int], :pointer
    attach_function :cairo_text_cluster_free, [:pointer], :void

    #
    # Fonts
    #
    attach_function :cairo_font_face_reference, [:pointer], :pointer
    attach_function :cairo_font_face_destroy, [:pointer], :void
    attach_function :cairo_font_face_status, [:pointer], :cairo_status
    attach_function :cairo_font_face_get_type, [:pointer], :cairo_font_type
    attach_function :cairo_font_face_get_reference_count, [:pointer], :uint
    attach_function :cairo_font_face_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
    attach_function :cairo_font_face_get_user_data, [:pointer, :pointer], :pointer
    attach_function :cairo_scaled_font_create, [:pointer, :pointer, :pointer, :pointer], :pointer
    attach_function :cairo_scaled_font_reference, [:pointer], :pointer
    attach_function :cairo_scaled_font_destroy, [:pointer], :void
    attach_function :cairo_scaled_font_status, [:pointer], :cairo_status
    attach_function :cairo_scaled_font_extents, [:pointer, :pointer], :void
    attach_function :cairo_scaled_font_text_extents, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_scaled_font_glyph_extents, [:pointer, :pointer, :int, :pointer], :void
    attach_function :cairo_scaled_font_text_to_glyphs, [:pointer, :double, :double, :pointer, :int, :pointer, :pointer, :pointer, :pointer, :pointer], :cairo_status
    attach_function :cairo_scaled_font_get_font_face, [:pointer], :pointer
    attach_function :cairo_scaled_font_get_font_options, [:pointer, :pointer], :void
    attach_function :cairo_scaled_font_get_font_matrix, [:pointer, :pointer], :void
    attach_function :cairo_scaled_font_get_ctm, [:pointer, :pointer], :void
    attach_function :cairo_scaled_font_get_scale_matrix, [:pointer, :pointer], :void
    attach_function :cairo_scaled_font_get_type, [:pointer], :cairo_font_type
    attach_function :cairo_scaled_font_get_reference_count, [:pointer], :uint
    attach_function :cairo_scaled_font_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
    attach_function :cairo_scaled_font_get_user_data, [:pointer, :pointer], :pointer
    attach_function :cairo_font_options_create, [], :pointer
    attach_function :cairo_font_options_copy, [:pointer], :pointer
    attach_function :cairo_font_options_destroy, [:pointer], :void
    attach_function :cairo_font_options_status, [:pointer], :cairo_status
    attach_function :cairo_font_options_merge, [:pointer, :pointer], :void
    attach_function :cairo_font_options_hash, [:pointer], :ulong
    attach_function :cairo_font_options_equal, [:pointer, :pointer], :cairo_bool_t
    attach_function :cairo_font_options_set_antialias, [:pointer, :cairo_antialias], :void
    attach_function :cairo_font_options_get_antialias, [:pointer], :cairo_antialias
    attach_function :cairo_font_options_set_subpixel_order, [:pointer, :cairo_subpixel_order], :void
    attach_function :cairo_font_options_get_subpixel_order, [:pointer], :cairo_subpixel_order
    attach_function :cairo_font_options_set_hint_style, [:pointer, :cairo_hint_style], :void
    attach_function :cairo_font_options_get_hint_style, [:pointer], :cairo_hint_style
    attach_function :cairo_font_options_set_hint_metrics, [:pointer, :cairo_hint_metrics], :void
    attach_function :cairo_font_options_get_hint_metrics, [:pointer], :cairo_hint_metrics

    #
    # Devices
    #
    begin
      attach_function :cairo_device_reference, [:pointer], :pointer
      attach_function :cairo_device_destroy, [:pointer], :void
      attach_function :cairo_device_status, [:pointer], :cairo_status
      attach_function :cairo_device_finish, [:pointer], :void
      attach_function :cairo_device_flush, [:pointer], :void
      attach_function :cairo_device_get_type, [:pointer], :cairo_device
      attach_function :cairo_device_get_reference_count, [:pointer], :uint
      attach_function :cairo_device_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
      attach_function :cairo_device_get_user_data, [:pointer, :pointer], :pointer
      attach_function :cairo_device_acquire, [:pointer], :cairo_status
      attach_function :cairo_device_release, [:pointer], :void
    rescue FFI::NotFoundError
    end

    #
    # Surfaces
    #
    attach_function :cairo_surface_create_similar, [:pointer, :cairo_content, :int, :int], :pointer
    begin
      attach_function :cairo_surface_create_for_rectangle, [:pointer, :double, :double, :double, :double], :pointer
    rescue FFI::NotFoundError
    end
    attach_function :cairo_surface_reference, [:pointer], :pointer
    attach_function :cairo_surface_destroy, [:pointer], :void
    attach_function :cairo_surface_status, [:pointer], :cairo_status
    attach_function :cairo_surface_finish, [:pointer], :void
    attach_function :cairo_surface_flush, [:pointer], :void
    begin
      attach_function :cairo_surface_get_device, [:pointer], :pointer
    rescue FFI::NotFoundError
    end
    attach_function :cairo_surface_get_font_options, [:pointer, :pointer], :void
    attach_function :cairo_surface_get_content, [:pointer], :cairo_content
    attach_function :cairo_surface_mark_dirty, [:pointer], :void
    attach_function :cairo_surface_mark_dirty_rectangle, [:pointer, :int, :int, :int, :int], :void
    attach_function :cairo_surface_set_device_offset, [:pointer, :double, :double], :void
    attach_function :cairo_surface_get_device_offset, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_surface_set_fallback_resolution, [:pointer, :double, :double], :void
    attach_function :cairo_surface_get_fallback_resolution, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_surface_get_type, [:pointer], :cairo_surface_type
    attach_function :cairo_surface_get_reference_count, [:pointer], :uint
    attach_function :cairo_surface_set_user_data, [:pointer, :pointer, :pointer, :cairo_destroy_func], :cairo_status
    attach_function :cairo_surface_get_user_data, [:pointer, :pointer], :pointer
    attach_function :cairo_surface_copy_page, [:pointer], :void

    #
    # Image Surfaces
    #
    attach_function :cairo_format_stride_for_width, [:cairo_format, :int], :int
    attach_function :cairo_image_surface_create, [:cairo_format, :int, :int], :pointer
    attach_function :cairo_image_surface_create_for_data, [:pointer, :cairo_format, :int, :int, :int], :pointer
    attach_function :cairo_image_surface_get_data, [:pointer], :pointer
    attach_function :cairo_image_surface_get_format, [:pointer], :cairo_format
    attach_function :cairo_image_surface_get_width, [:pointer], :int
    attach_function :cairo_image_surface_get_height, [:pointer], :int
    attach_function :cairo_image_surface_get_stride, [:pointer], :int

    #
    # PDF Surfaces
    #
    attach_function :cairo_pdf_surface_create, [:string, :double, :double], :pointer
    attach_function :cairo_pdf_surface_create_for_stream, [:cairo_write_func, :pointer, :double, :double], :pointer
    begin
      attach_function :cairo_pdf_surface_restrict_to_version, [:pointer, :cairo_pdf_version], :void
      attach_function :cairo_pdf_get_versions, [:pointer, :pointer], :void
      attach_function :cairo_pdf_version_to_string, [:cairo_pdf_version], :string
    rescue FFI::NotFoundError
    end
    attach_function :cairo_pdf_surface_set_size, [:pointer, :double, :double], :void

    #
    # PNG Support
    #
    attach_function :cairo_image_surface_create_from_png, [:string], :pointer
    attach_function :cairo_image_surface_create_from_png_stream, [:cairo_read_func, :pointer], :pointer
    attach_function :cairo_surface_write_to_png, [:pointer, :string], :cairo_status
    attach_function :cairo_surface_write_to_png_stream, [:pointer, :cairo_write_func, :pointer], :cairo_status

    #
    # PostScript Surfaces
    #
    attach_function :cairo_ps_surface_create, [:string, :double, :double], :pointer
    attach_function :cairo_ps_surface_create_for_stream, [:cairo_write_func, :pointer, :double, :double], :pointer
    attach_function :cairo_ps_surface_restrict_to_level, [:pointer, :cairo_ps_level], :void
    attach_function :cairo_ps_get_levels, [:pointer, :pointer], :void
    attach_function :cairo_ps_level_to_string, [:cairo_ps_level], :string
    attach_function :cairo_ps_surface_set_eps, [:pointer, :cairo_bool_t], :void
    attach_function :cairo_ps_surface_get_eps, [:pointer], :cairo_bool_t
    attach_function :cairo_ps_surface_set_size, [:pointer, :double, :double], :void
    attach_function :cairo_ps_surface_dsc_begin_setup, [:pointer], :void
    attach_function :cairo_ps_surface_dsc_begin_page_setup, [:pointer], :void
    attach_function :cairo_ps_surface_dsc_comment, [:pointer, :string], :void

    #
    # SVG Surfaces
    #
    attach_function :cairo_svg_surface_create, [:string, :double, :double], :pointer
    attach_function :cairo_svg_surface_create_for_stream, [:cairo_write_func, :pointer, :double, :double], :pointer
    attach_function :cairo_svg_surface_restrict_to_version, [:pointer, :cairo_svg_version], :void
    attach_function :cairo_svg_get_versions, [:pointer, :pointer], :void
    attach_function :cairo_svg_version_to_string, [:cairo_svg_version], :string

    #
    # Utilities
    #
    attach_function :cairo_matrix_init, [:pointer, :double, :double, :double, :double, :double, :double], :void
    attach_function :cairo_matrix_init_identity, [:pointer], :void
    attach_function :cairo_matrix_init_translate, [:pointer, :double, :double], :void
    attach_function :cairo_matrix_init_scale, [:pointer, :double, :double], :void
    attach_function :cairo_matrix_init_rotate, [:pointer, :double], :void
    attach_function :cairo_matrix_translate, [:pointer, :double, :double], :void
    attach_function :cairo_matrix_scale, [:pointer, :double, :double], :void
    attach_function :cairo_matrix_rotate, [:pointer, :double], :void
    attach_function :cairo_matrix_invert, [:pointer], :cairo_status
    attach_function :cairo_matrix_multiply, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_matrix_transform_distance, [:pointer, :pointer, :pointer], :void
    attach_function :cairo_matrix_transform_point, [:pointer, :pointer, :pointer], :void
  end
end
