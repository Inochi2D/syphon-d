module opengl.context;
import opengl.gltypes;
version(D_ObjectiveC) {
    /*
        Copyright:	(c) 1999-2012 Apple Inc. All rights reserved.
    */

    extern (Objective-C):

    /*
    ** GL context data type
    */
    struct __GLIContextRec;
    alias GLIContext = __GLIContextRec*;
    struct __GLISharedRec;
    alias GLIShared = __GLISharedRec*;

    /* _GLICONTEXT_H */


    /**
    ** Opaque declaration for private CGLContext data.
    */
    struct _CGLPrivateObject;
    alias CGLPrivateObj = _CGLPrivateObject*;

    /**
    ** CGLContext structure.
    */
    struct _CGLContextObject
    {
        GLIContext rend;
        GLIFunctionDispatch disp;
        CGLPrivateObj priv;
        void* stak;
    }
    alias CGLContextObj = _CGLContextObject*;

    /* _CGLCONTEXT_H */

    /*
    ** GL function dispatch table type
    */
    struct __GLIFunctionDispatchRec
    {
        void function (GLIContext ctx, GLenum op, GLfloat value) accum;
        void function (GLIContext ctx, GLenum func, GLclampf ref_) alpha_func;
        GLboolean function (GLIContext ctx, GLsizei n, const(GLuint)* textures, GLboolean* residences) are_textures_resident;
        void function (GLIContext ctx, GLint i) array_element;
        void function (GLIContext ctx, GLenum mode) begin;
        void function (GLIContext ctx, GLenum target, GLuint texture) bind_texture;
        void function (GLIContext ctx, GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const(GLubyte)* bitmap) bitmap;
        void function (GLIContext ctx, GLenum sfactor, GLenum dfactor) blend_func;
        void function (GLIContext ctx, GLuint list) call_list;
        void function (GLIContext ctx, GLsizei n, GLenum type, const(GLvoid)* lists) call_lists;
        void function (GLIContext ctx, GLbitfield mask) clear;
        void function (GLIContext ctx, GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) clear_accum;
        void function (GLIContext ctx, GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha) clear_color;
        void function (GLIContext ctx, GLclampd depth) clear_depth;
        void function (GLIContext ctx, GLfloat c) clear_index;
        void function (GLIContext ctx, GLint s) clear_stencil;
        void function (GLIContext ctx, GLenum plane, const(GLdouble)* equation) clip_plane;
        void function (GLIContext ctx, GLbyte red, GLbyte green, GLbyte blue) color3b;
        void function (GLIContext ctx, const(GLbyte)* v) color3bv;
        void function (GLIContext ctx, GLdouble red, GLdouble green, GLdouble blue) color3d;
        void function (GLIContext ctx, const(GLdouble)* v) color3dv;
        void function (GLIContext ctx, GLfloat red, GLfloat green, GLfloat blue) color3f;
        void function (GLIContext ctx, const(GLfloat)* v) color3fv;
        void function (GLIContext ctx, GLint red, GLint green, GLint blue) color3i;
        void function (GLIContext ctx, const(GLint)* v) color3iv;
        void function (GLIContext ctx, GLshort red, GLshort green, GLshort blue) color3s;
        void function (GLIContext ctx, const(GLshort)* v) color3sv;
        void function (GLIContext ctx, GLubyte red, GLubyte green, GLubyte blue) color3ub;
        void function (GLIContext ctx, const(GLubyte)* v) color3ubv;
        void function (GLIContext ctx, GLuint red, GLuint green, GLuint blue) color3ui;
        void function (GLIContext ctx, const(GLuint)* v) color3uiv;
        void function (GLIContext ctx, GLushort red, GLushort green, GLushort blue) color3us;
        void function (GLIContext ctx, const(GLushort)* v) color3usv;
        void function (GLIContext ctx, GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha) color4b;
        void function (GLIContext ctx, const(GLbyte)* v) color4bv;
        void function (GLIContext ctx, GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha) color4d;
        void function (GLIContext ctx, const(GLdouble)* v) color4dv;
        void function (GLIContext ctx, GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) color4f;
        void function (GLIContext ctx, const(GLfloat)* v) color4fv;
        void function (GLIContext ctx, GLint red, GLint green, GLint blue, GLint alpha) color4i;
        void function (GLIContext ctx, const(GLint)* v) color4iv;
        void function (GLIContext ctx, GLshort red, GLshort green, GLshort blue, GLshort alpha) color4s;
        void function (GLIContext ctx, const(GLshort)* v) color4sv;
        void function (GLIContext ctx, GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha) color4ub;
        void function (GLIContext ctx, const(GLubyte)* v) color4ubv;
        void function (GLIContext ctx, GLuint red, GLuint green, GLuint blue, GLuint alpha) color4ui;
        void function (GLIContext ctx, const(GLuint)* v) color4uiv;
        void function (GLIContext ctx, GLushort red, GLushort green, GLushort blue, GLushort alpha) color4us;
        void function (GLIContext ctx, const(GLushort)* v) color4usv;
        void function (GLIContext ctx, GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha) color_mask;
        void function (GLIContext ctx, GLenum face, GLenum mode) color_material;
        void function (GLIContext ctx, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) color_pointer;
        void function (GLIContext ctx, GLint x, GLint y, GLsizei width, GLsizei height, GLenum type) copy_pixels;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border) copy_tex_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) copy_tex_image2D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) copy_tex_sub_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) copy_tex_sub_image2D;
        void function (GLIContext ctx, GLenum mode) cull_face;
        void function (GLIContext ctx, GLuint list, GLsizei range) delete_lists;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* textures) delete_textures;
        void function (GLIContext ctx, GLenum func) depth_func;
        void function (GLIContext ctx, GLboolean flag) depth_mask;
        void function (GLIContext ctx, GLclampd zNear, GLclampd zFar) depth_range;
        void function (GLIContext ctx, GLenum cap) disable;
        void function (GLIContext ctx, GLenum array) disable_client_state;
        void function (GLIContext ctx, GLenum mode, GLint first, GLsizei count) draw_arrays;
        void function (GLIContext ctx, GLenum mode) draw_buffer;
        void function (GLIContext ctx, GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices) draw_elements;
        void function (GLIContext ctx, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) draw_pixels;
        void function (GLIContext ctx, GLboolean flag) edge_flag;
        void function (GLIContext ctx, GLsizei stride, const(GLvoid)* pointer) edge_flag_pointer;
        void function (GLIContext ctx, const(GLboolean)* flag) edge_flagv;
        void function (GLIContext ctx, GLenum cap) enable;
        void function (GLIContext ctx, GLenum array) enable_client_state;
        void function (GLIContext ctx) end;
        void function (GLIContext ctx) end_list;
        void function (GLIContext ctx, GLdouble u) eval_coord1d;
        void function (GLIContext ctx, const(GLdouble)* u) eval_coord1dv;
        void function (GLIContext ctx, GLfloat u) eval_coord1f;
        void function (GLIContext ctx, const(GLfloat)* u) eval_coord1fv;
        void function (GLIContext ctx, GLdouble u, GLdouble v) eval_coord2d;
        void function (GLIContext ctx, const(GLdouble)* u) eval_coord2dv;
        void function (GLIContext ctx, GLfloat u, GLfloat v) eval_coord2f;
        void function (GLIContext ctx, const(GLfloat)* u) eval_coord2fv;
        void function (GLIContext ctx, GLenum mode, GLint i1, GLint i2) eval_mesh1;
        void function (GLIContext ctx, GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2) eval_mesh2;
        void function (GLIContext ctx, GLint i) eval_point1;
        void function (GLIContext ctx, GLint i, GLint j) eval_point2;
        void function (GLIContext ctx, GLsizei size, GLenum type, GLfloat* buffer) feedback_buffer;
        void function (GLIContext ctx) finish;
        void function (GLIContext ctx) flush;
        void function (GLIContext ctx, GLenum pname, GLfloat param) fogf;
        void function (GLIContext ctx, GLenum pname, const(GLfloat)* params) fogfv;
        void function (GLIContext ctx, GLenum pname, GLint param) fogi;
        void function (GLIContext ctx, GLenum pname, const(GLint)* params) fogiv;
        void function (GLIContext ctx, GLenum mode) front_face;
        void function (GLIContext ctx, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) frustum;
        GLuint function (GLIContext ctx, GLsizei range) gen_lists;
        void function (GLIContext ctx, GLsizei n, GLuint* textures) gen_textures;
        void function (GLIContext ctx, GLenum pname, GLboolean* params) get_booleanv;
        void function (GLIContext ctx, GLenum plane, GLdouble* equation) get_clip_plane;
        void function (GLIContext ctx, GLenum pname, GLdouble* params) get_doublev;
        GLenum function (GLIContext ctx) get_error;
        void function (GLIContext ctx, GLenum pname, GLfloat* params) get_floatv;
        void function (GLIContext ctx, GLenum pname, GLint* params) get_integerv;
        void function (GLIContext ctx, GLenum light, GLenum pname, GLfloat* params) get_lightfv;
        void function (GLIContext ctx, GLenum light, GLenum pname, GLint* params) get_lightiv;
        void function (GLIContext ctx, GLenum target, GLenum query, GLdouble* v) get_mapdv;
        void function (GLIContext ctx, GLenum target, GLenum query, GLfloat* v) get_mapfv;
        void function (GLIContext ctx, GLenum target, GLenum query, GLint* v) get_mapiv;
        void function (GLIContext ctx, GLenum face, GLenum pname, GLfloat* params) get_materialfv;
        void function (GLIContext ctx, GLenum face, GLenum pname, GLint* params) get_materialiv;
        void function (GLIContext ctx, GLenum map, GLfloat* values) get_pixel_mapfv;
        void function (GLIContext ctx, GLenum map, GLuint* values) get_pixel_mapuiv;
        void function (GLIContext ctx, GLenum map, GLushort* values) get_pixel_mapusv;
        void function (GLIContext ctx, GLenum pname, GLvoid** params) get_pointerv;
        void function (GLIContext ctx, GLubyte* mask) get_polygon_stipple;
        const(GLubyte)* function (GLIContext ctx, GLenum name) get_string;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_tex_envfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_tex_enviv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLdouble* params) get_tex_gendv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLfloat* params) get_tex_genfv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLint* params) get_tex_geniv;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels) get_tex_image;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum pname, GLfloat* params) get_tex_level_parameterfv;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum pname, GLint* params) get_tex_level_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_tex_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_tex_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum mode) hint;
        void function (GLIContext ctx, GLuint mask) index_mask;
        void function (GLIContext ctx, GLenum type, GLsizei stride, const(GLvoid)* pointer) index_pointer;
        void function (GLIContext ctx, GLdouble c) indexd;
        void function (GLIContext ctx, const(GLdouble)* c) indexdv;
        void function (GLIContext ctx, GLfloat c) indexf;
        void function (GLIContext ctx, const(GLfloat)* c) indexfv;
        void function (GLIContext ctx, GLint c) indexi;
        void function (GLIContext ctx, const(GLint)* c) indexiv;
        void function (GLIContext ctx, GLshort c) indexs;
        void function (GLIContext ctx, const(GLshort)* c) indexsv;
        void function (GLIContext ctx, GLubyte c) indexub;
        void function (GLIContext ctx, const(GLubyte)* c) indexubv;
        void function (GLIContext ctx) init_names;
        void function (GLIContext ctx, GLenum format, GLsizei stride, const(GLvoid)* pointer) interleaved_arrays;
        GLboolean function (GLIContext ctx, GLenum cap) is_enabled;
        GLboolean function (GLIContext ctx, GLuint list) is_list;
        GLboolean function (GLIContext ctx, GLuint texture) is_texture;
        void function (GLIContext ctx, GLenum pname, GLfloat param) light_modelf;
        void function (GLIContext ctx, GLenum pname, const(GLfloat)* params) light_modelfv;
        void function (GLIContext ctx, GLenum pname, GLint param) light_modeli;
        void function (GLIContext ctx, GLenum pname, const(GLint)* params) light_modeliv;
        void function (GLIContext ctx, GLenum light, GLenum pname, GLfloat param) lightf;
        void function (GLIContext ctx, GLenum light, GLenum pname, const(GLfloat)* params) lightfv;
        void function (GLIContext ctx, GLenum light, GLenum pname, GLint param) lighti;
        void function (GLIContext ctx, GLenum light, GLenum pname, const(GLint)* params) lightiv;
        void function (GLIContext ctx, GLint factor, GLushort pattern) line_stipple;
        void function (GLIContext ctx, GLfloat width) line_width;
        void function (GLIContext ctx, GLuint base) list_base;
        void function (GLIContext ctx) load_identity;
        void function (GLIContext ctx, const(GLdouble)* m) load_matrixd;
        void function (GLIContext ctx, const(GLfloat)* m) load_matrixf;
        void function (GLIContext ctx, GLuint name) load_name;
        void function (GLIContext ctx, GLenum opcode) logic_op;
        void function (GLIContext ctx, GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points) map1d;
        void function (GLIContext ctx, GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points) map1f;
        void function (GLIContext ctx, GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points) map2d;
        void function (GLIContext ctx, GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points) map2f;
        void function (GLIContext ctx, GLint un, GLdouble u1, GLdouble u2) map_grid1d;
        void function (GLIContext ctx, GLint un, GLfloat u1, GLfloat u2) map_grid1f;
        void function (GLIContext ctx, GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2) map_grid2d;
        void function (GLIContext ctx, GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2) map_grid2f;
        void function (GLIContext ctx, GLenum face, GLenum pname, GLfloat param) materialf;
        void function (GLIContext ctx, GLenum face, GLenum pname, const(GLfloat)* params) materialfv;
        void function (GLIContext ctx, GLenum face, GLenum pname, GLint param) materiali;
        void function (GLIContext ctx, GLenum face, GLenum pname, const(GLint)* params) materialiv;
        void function (GLIContext ctx, GLenum mode) matrix_mode;
        void function (GLIContext ctx, const(GLdouble)* m) mult_matrixd;
        void function (GLIContext ctx, const(GLfloat)* m) mult_matrixf;
        void function (GLIContext ctx, GLuint list, GLenum mode) new_list;
        void function (GLIContext ctx, GLbyte nx, GLbyte ny, GLbyte nz) normal3b;
        void function (GLIContext ctx, const(GLbyte)* v) normal3bv;
        void function (GLIContext ctx, GLdouble nx, GLdouble ny, GLdouble nz) normal3d;
        void function (GLIContext ctx, const(GLdouble)* v) normal3dv;
        void function (GLIContext ctx, GLfloat nx, GLfloat ny, GLfloat nz) normal3f;
        void function (GLIContext ctx, const(GLfloat)* v) normal3fv;
        void function (GLIContext ctx, GLint nx, GLint ny, GLint nz) normal3i;
        void function (GLIContext ctx, const(GLint)* v) normal3iv;
        void function (GLIContext ctx, GLshort nx, GLshort ny, GLshort nz) normal3s;
        void function (GLIContext ctx, const(GLshort)* v) normal3sv;
        void function (GLIContext ctx, GLenum type, GLsizei stride, const(GLvoid)* pointer) normal_pointer;
        void function (GLIContext ctx, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) ortho;
        void function (GLIContext ctx, GLfloat token) pass_through;
        void function (GLIContext ctx, GLenum map, GLsizei mapsize, const(GLfloat)* values) pixel_mapfv;
        void function (GLIContext ctx, GLenum map, GLsizei mapsize, const(GLuint)* values) pixel_mapuiv;
        void function (GLIContext ctx, GLenum map, GLsizei mapsize, const(GLushort)* values) pixel_mapusv;
        void function (GLIContext ctx, GLenum pname, GLfloat param) pixel_storef;
        void function (GLIContext ctx, GLenum pname, GLint param) pixel_storei;
        void function (GLIContext ctx, GLenum pname, GLfloat param) pixel_transferf;
        void function (GLIContext ctx, GLenum pname, GLint param) pixel_transferi;
        void function (GLIContext ctx, GLfloat xfactor, GLfloat yfactor) pixel_zoom;
        void function (GLIContext ctx, GLfloat size) point_size;
        void function (GLIContext ctx, GLenum face, GLenum mode) polygon_mode;
        void function (GLIContext ctx, GLfloat factor, GLfloat units) polygon_offset;
        void function (GLIContext ctx, const(GLubyte)* mask) polygon_stipple;
        void function (GLIContext ctx) pop_attrib;
        void function (GLIContext ctx) pop_client_attrib;
        void function (GLIContext ctx) pop_matrix;
        void function (GLIContext ctx) pop_name;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* textures, const(GLclampf)* priorities) prioritize_textures;
        void function (GLIContext ctx, GLbitfield mask) push_attrib;
        void function (GLIContext ctx, GLbitfield mask) push_client_attrib;
        void function (GLIContext ctx) push_matrix;
        void function (GLIContext ctx, GLuint name) push_name;
        void function (GLIContext ctx, GLdouble x, GLdouble y) raster_pos2d;
        void function (GLIContext ctx, const(GLdouble)* v) raster_pos2dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y) raster_pos2f;
        void function (GLIContext ctx, const(GLfloat)* v) raster_pos2fv;
        void function (GLIContext ctx, GLint x, GLint y) raster_pos2i;
        void function (GLIContext ctx, const(GLint)* v) raster_pos2iv;
        void function (GLIContext ctx, GLshort x, GLshort y) raster_pos2s;
        void function (GLIContext ctx, const(GLshort)* v) raster_pos2sv;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z) raster_pos3d;
        void function (GLIContext ctx, const(GLdouble)* v) raster_pos3dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z) raster_pos3f;
        void function (GLIContext ctx, const(GLfloat)* v) raster_pos3fv;
        void function (GLIContext ctx, GLint x, GLint y, GLint z) raster_pos3i;
        void function (GLIContext ctx, const(GLint)* v) raster_pos3iv;
        void function (GLIContext ctx, GLshort x, GLshort y, GLshort z) raster_pos3s;
        void function (GLIContext ctx, const(GLshort)* v) raster_pos3sv;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z, GLdouble w) raster_pos4d;
        void function (GLIContext ctx, const(GLdouble)* v) raster_pos4dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z, GLfloat w) raster_pos4f;
        void function (GLIContext ctx, const(GLfloat)* v) raster_pos4fv;
        void function (GLIContext ctx, GLint x, GLint y, GLint z, GLint w) raster_pos4i;
        void function (GLIContext ctx, const(GLint)* v) raster_pos4iv;
        void function (GLIContext ctx, GLshort x, GLshort y, GLshort z, GLshort w) raster_pos4s;
        void function (GLIContext ctx, const(GLshort)* v) raster_pos4sv;
        void function (GLIContext ctx, GLenum mode) read_buffer;
        void function (GLIContext ctx, GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels) read_pixels;
        void function (GLIContext ctx, GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2) rectd;
        void function (GLIContext ctx, const(GLdouble)* v1, const(GLdouble)* v2) rectdv;
        void function (GLIContext ctx, GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2) rectf;
        void function (GLIContext ctx, const(GLfloat)* v1, const(GLfloat)* v2) rectfv;
        void function (GLIContext ctx, GLint x1, GLint y1, GLint x2, GLint y2) recti;
        void function (GLIContext ctx, const(GLint)* v1, const(GLint)* v2) rectiv;
        void function (GLIContext ctx, GLshort x1, GLshort y1, GLshort x2, GLshort y2) rects;
        void function (GLIContext ctx, const(GLshort)* v1, const(GLshort)* v2) rectsv;
        GLint function (GLIContext ctx, GLenum mode) render_mode;
        void function (GLIContext ctx, GLdouble angle, GLdouble x, GLdouble y, GLdouble z) rotated;
        void function (GLIContext ctx, GLfloat angle, GLfloat x, GLfloat y, GLfloat z) rotatef;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z) scaled;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z) scalef;
        void function (GLIContext ctx, GLint x, GLint y, GLsizei width, GLsizei height) scissor;
        void function (GLIContext ctx, GLsizei size, GLuint* buffer) select_buffer;
        void function (GLIContext ctx, GLenum mode) shade_model;
        void function (GLIContext ctx, GLenum func, GLint ref_, GLuint mask) stencil_func;
        void function (GLIContext ctx, GLuint mask) stencil_mask;
        void function (GLIContext ctx, GLenum fail, GLenum zfail, GLenum zpass) stencil_op;
        void function (GLIContext ctx, GLdouble s) tex_coord1d;
        void function (GLIContext ctx, const(GLdouble)* v) tex_coord1dv;
        void function (GLIContext ctx, GLfloat s) tex_coord1f;
        void function (GLIContext ctx, const(GLfloat)* v) tex_coord1fv;
        void function (GLIContext ctx, GLint s) tex_coord1i;
        void function (GLIContext ctx, const(GLint)* v) tex_coord1iv;
        void function (GLIContext ctx, GLshort s) tex_coord1s;
        void function (GLIContext ctx, const(GLshort)* v) tex_coord1sv;
        void function (GLIContext ctx, GLdouble s, GLdouble t) tex_coord2d;
        void function (GLIContext ctx, const(GLdouble)* v) tex_coord2dv;
        void function (GLIContext ctx, GLfloat s, GLfloat t) tex_coord2f;
        void function (GLIContext ctx, const(GLfloat)* v) tex_coord2fv;
        void function (GLIContext ctx, GLint s, GLint t) tex_coord2i;
        void function (GLIContext ctx, const(GLint)* v) tex_coord2iv;
        void function (GLIContext ctx, GLshort s, GLshort t) tex_coord2s;
        void function (GLIContext ctx, const(GLshort)* v) tex_coord2sv;
        void function (GLIContext ctx, GLdouble s, GLdouble t, GLdouble r) tex_coord3d;
        void function (GLIContext ctx, const(GLdouble)* v) tex_coord3dv;
        void function (GLIContext ctx, GLfloat s, GLfloat t, GLfloat r) tex_coord3f;
        void function (GLIContext ctx, const(GLfloat)* v) tex_coord3fv;
        void function (GLIContext ctx, GLint s, GLint t, GLint r) tex_coord3i;
        void function (GLIContext ctx, const(GLint)* v) tex_coord3iv;
        void function (GLIContext ctx, GLshort s, GLshort t, GLshort r) tex_coord3s;
        void function (GLIContext ctx, const(GLshort)* v) tex_coord3sv;
        void function (GLIContext ctx, GLdouble s, GLdouble t, GLdouble r, GLdouble q) tex_coord4d;
        void function (GLIContext ctx, const(GLdouble)* v) tex_coord4dv;
        void function (GLIContext ctx, GLfloat s, GLfloat t, GLfloat r, GLfloat q) tex_coord4f;
        void function (GLIContext ctx, const(GLfloat)* v) tex_coord4fv;
        void function (GLIContext ctx, GLint s, GLint t, GLint r, GLint q) tex_coord4i;
        void function (GLIContext ctx, const(GLint)* v) tex_coord4iv;
        void function (GLIContext ctx, GLshort s, GLshort t, GLshort r, GLshort q) tex_coord4s;
        void function (GLIContext ctx, const(GLshort)* v) tex_coord4sv;
        void function (GLIContext ctx, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) tex_coord_pointer;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat param) tex_envf;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLfloat)* params) tex_envfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint param) tex_envi;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLint)* params) tex_enviv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLdouble param) tex_gend;
        void function (GLIContext ctx, GLenum coord, GLenum pname, const(GLdouble)* params) tex_gendv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLfloat param) tex_genf;
        void function (GLIContext ctx, GLenum coord, GLenum pname, const(GLfloat)* params) tex_genfv;
        void function (GLIContext ctx, GLenum coord, GLenum pname, GLint param) tex_geni;
        void function (GLIContext ctx, GLenum coord, GLenum pname, const(GLint)* params) tex_geniv;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) tex_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) tex_image2D;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat param) tex_parameterf;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLfloat)* params) tex_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint param) tex_parameteri;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLint)* params) tex_parameteriv;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels) tex_sub_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) tex_sub_image2D;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z) translated;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z) translatef;
        void function (GLIContext ctx, GLdouble x, GLdouble y) vertex2d;
        void function (GLIContext ctx, const(GLdouble)* v) vertex2dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y) vertex2f;
        void function (GLIContext ctx, const(GLfloat)* v) vertex2fv;
        void function (GLIContext ctx, GLint x, GLint y) vertex2i;
        void function (GLIContext ctx, const(GLint)* v) vertex2iv;
        void function (GLIContext ctx, GLshort x, GLshort y) vertex2s;
        void function (GLIContext ctx, const(GLshort)* v) vertex2sv;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z) vertex3d;
        void function (GLIContext ctx, const(GLdouble)* v) vertex3dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z) vertex3f;
        void function (GLIContext ctx, const(GLfloat)* v) vertex3fv;
        void function (GLIContext ctx, GLint x, GLint y, GLint z) vertex3i;
        void function (GLIContext ctx, const(GLint)* v) vertex3iv;
        void function (GLIContext ctx, GLshort x, GLshort y, GLshort z) vertex3s;
        void function (GLIContext ctx, const(GLshort)* v) vertex3sv;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z, GLdouble w) vertex4d;
        void function (GLIContext ctx, const(GLdouble)* v) vertex4dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z, GLfloat w) vertex4f;
        void function (GLIContext ctx, const(GLfloat)* v) vertex4fv;
        void function (GLIContext ctx, GLint x, GLint y, GLint z, GLint w) vertex4i;
        void function (GLIContext ctx, const(GLint)* v) vertex4iv;
        void function (GLIContext ctx, GLshort x, GLshort y, GLshort z, GLshort w) vertex4s;
        void function (GLIContext ctx, const(GLshort)* v) vertex4sv;
        void function (GLIContext ctx, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) vertex_pointer;
        void function (GLIContext ctx, GLint x, GLint y, GLsizei width, GLsizei height) viewport;
        void function (GLIContext ctx, GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) blend_func_separate;
        void function (GLIContext ctx, GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha) blend_color;
        void function (GLIContext ctx, GLenum mode) blend_equation;
        void function (GLIContext ctx, GLint first, GLsizei count) lock_arrays_EXT;
        void function (GLIContext ctx) unlock_arrays_EXT;
        void function (GLIContext ctx, GLenum target) client_active_texture;
        void function (GLIContext ctx, GLenum target) active_texture;
        void function (GLIContext ctx, GLenum target, GLdouble s) multi_tex_coord1d;
        void function (GLIContext ctx, GLenum target, const(GLdouble)* v) multi_tex_coord1dv;
        void function (GLIContext ctx, GLenum target, GLfloat s) multi_tex_coord1f;
        void function (GLIContext ctx, GLenum target, const(GLfloat)* v) multi_tex_coord1fv;
        void function (GLIContext ctx, GLenum target, GLint s) multi_tex_coord1i;
        void function (GLIContext ctx, GLenum target, const(GLint)* v) multi_tex_coord1iv;
        void function (GLIContext ctx, GLenum target, GLshort s) multi_tex_coord1s;
        void function (GLIContext ctx, GLenum target, const(GLshort)* v) multi_tex_coord1sv;
        void function (GLIContext ctx, GLenum target, GLdouble s, GLdouble t) multi_tex_coord2d;
        void function (GLIContext ctx, GLenum target, const(GLdouble)* v) multi_tex_coord2dv;
        void function (GLIContext ctx, GLenum target, GLfloat s, GLfloat t) multi_tex_coord2f;
        void function (GLIContext ctx, GLenum target, const(GLfloat)* v) multi_tex_coord2fv;
        void function (GLIContext ctx, GLenum target, GLint s, GLint t) multi_tex_coord2i;
        void function (GLIContext ctx, GLenum target, const(GLint)* v) multi_tex_coord2iv;
        void function (GLIContext ctx, GLenum target, GLshort s, GLshort t) multi_tex_coord2s;
        void function (GLIContext ctx, GLenum target, const(GLshort)* v) multi_tex_coord2sv;
        void function (GLIContext ctx, GLenum target, GLdouble s, GLdouble t, GLdouble r) multi_tex_coord3d;
        void function (GLIContext ctx, GLenum target, const(GLdouble)* v) multi_tex_coord3dv;
        void function (GLIContext ctx, GLenum target, GLfloat s, GLfloat t, GLfloat r) multi_tex_coord3f;
        void function (GLIContext ctx, GLenum target, const(GLfloat)* v) multi_tex_coord3fv;
        void function (GLIContext ctx, GLenum target, GLint s, GLint t, GLint r) multi_tex_coord3i;
        void function (GLIContext ctx, GLenum target, const(GLint)* v) multi_tex_coord3iv;
        void function (GLIContext ctx, GLenum target, GLshort s, GLshort t, GLshort r) multi_tex_coord3s;
        void function (GLIContext ctx, GLenum target, const(GLshort)* v) multi_tex_coord3sv;
        void function (GLIContext ctx, GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q) multi_tex_coord4d;
        void function (GLIContext ctx, GLenum target, const(GLdouble)* v) multi_tex_coord4dv;
        void function (GLIContext ctx, GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q) multi_tex_coord4f;
        void function (GLIContext ctx, GLenum target, const(GLfloat)* v) multi_tex_coord4fv;
        void function (GLIContext ctx, GLenum target, GLint s, GLint t, GLint r, GLint q) multi_tex_coord4i;
        void function (GLIContext ctx, GLenum target, const(GLint)* v) multi_tex_coord4iv;
        void function (GLIContext ctx, GLenum target, GLshort s, GLshort t, GLshort r, GLshort q) multi_tex_coord4s;
        void function (GLIContext ctx, GLenum target, const(GLshort)* v) multi_tex_coord4sv;
        void function (GLIContext ctx, const(GLdouble)* m) load_transpose_matrixd;
        void function (GLIContext ctx, const(GLfloat)* m) load_transpose_matrixf;
        void function (GLIContext ctx, const(GLdouble)* m) mult_transpose_matrixd;
        void function (GLIContext ctx, const(GLfloat)* m) mult_transpose_matrixf;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data) compressed_tex_image3D;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data) compressed_tex_image2D;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data) compressed_tex_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data) compressed_tex_sub_image3D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data) compressed_tex_sub_image2D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data) compressed_tex_sub_image1D;
        void function (GLIContext ctx, GLenum target, GLint level, GLvoid* img) get_compressed_tex_image;
        void function (GLIContext ctx, GLbyte red, GLbyte green, GLbyte blue) secondary_color3b;
        void function (GLIContext ctx, const(GLbyte)* v) secondary_color3bv;
        void function (GLIContext ctx, GLdouble red, GLdouble green, GLdouble blue) secondary_color3d;
        void function (GLIContext ctx, const(GLdouble)* v) secondary_color3dv;
        void function (GLIContext ctx, GLfloat red, GLfloat green, GLfloat blue) secondary_color3f;
        void function (GLIContext ctx, const(GLfloat)* v) secondary_color3fv;
        void function (GLIContext ctx, GLint red, GLint green, GLint blue) secondary_color3i;
        void function (GLIContext ctx, const(GLint)* v) secondary_color3iv;
        void function (GLIContext ctx, GLshort red, GLshort green, GLshort blue) secondary_color3s;
        void function (GLIContext ctx, const(GLshort)* v) secondary_color3sv;
        void function (GLIContext ctx, GLubyte red, GLubyte green, GLubyte blue) secondary_color3ub;
        void function (GLIContext ctx, const(GLubyte)* v) secondary_color3ubv;
        void function (GLIContext ctx, GLuint red, GLuint green, GLuint blue) secondary_color3ui;
        void function (GLIContext ctx, const(GLuint)* v) secondary_color3uiv;
        void function (GLIContext ctx, GLushort red, GLushort green, GLushort blue) secondary_color3us;
        void function (GLIContext ctx, const(GLushort)* v) secondary_color3usv;
        void function (GLIContext ctx, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) secondary_color_pointer;
        void function (GLIContext ctx, GLsizei count, const(GLvoid)* pointer) vertex_array_range_EXT;
        void function (GLIContext ctx, GLsizei count, const(GLvoid)* pointer) flush_vertex_array_range_EXT;
        void function (GLIContext ctx, GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices) draw_range_elements;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* table) color_table;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLfloat)* params) color_table_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLint)* params) color_table_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) copy_color_table;
        void function (GLIContext ctx, GLenum target, GLenum format, GLenum type, GLvoid* table) get_color_table;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_color_table_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_color_table_parameteriv;
        void function (GLIContext ctx, GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(GLvoid)* data) color_sub_table;
        void function (GLIContext ctx, GLenum target, GLsizei start, GLint x, GLint y, GLsizei width) copy_color_sub_table;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* image) convolution_filter1D;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* image) convolution_filter2D;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat params) convolution_parameterf;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLfloat)* params) convolution_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint params) convolution_parameteri;
        void function (GLIContext ctx, GLenum target, GLenum pname, const(GLint)* params) convolution_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) copy_convolution_filter1D;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height) copy_convolution_filter2D;
        void function (GLIContext ctx, GLenum target, GLenum format, GLenum type, GLvoid* image) get_convolution_filter;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_convolution_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_convolution_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span) get_separable_filter;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* row, const(GLvoid)* column) separable_filter2D;
        void function (GLIContext ctx, GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) get_histogram;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_histogram_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_histogram_parameteriv;
        void function (GLIContext ctx, GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) get_minmax;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLfloat* params) get_minmax_parameterfv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_minmax_parameteriv;
        void function (GLIContext ctx, GLenum target, GLsizei width, GLenum internalformat, GLboolean sink) histogram;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLboolean sink) minmax;
        void function (GLIContext ctx, GLenum target) reset_histogram;
        void function (GLIContext ctx, GLenum target) reset_minmax;
        void function (GLIContext ctx, GLenum target, GLint level, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) tex_image3D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) tex_sub_image3D;
        void function (GLIContext ctx, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) copy_tex_sub_image3D;
        void function (GLIContext ctx, GLuint program, GLsizei uniformCount, const(GLchar*)* uniformNames, GLuint* uniformIndices) get_uniform_indices;
        void function (GLIContext ctx, GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params) get_active_uniformsiv;
        void function (GLIContext ctx, GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName) get_active_uniform_name;
        GLuint function (GLIContext ctx, GLuint program, const(GLchar)* uniformBlockName) get_uniform_block_index;
        void function (GLIContext ctx, GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params) get_active_uniform_blockiv;
        void function (GLIContext ctx, GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName) get_active_uniform_block_name;
        void function (GLIContext ctx, GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding) uniform_block_binding;
        void function (GLIContext ctx, GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params) get_combiner_input_parameterfv_NV;
        void function (GLIContext ctx, GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params) get_combiner_input_parameteriv_NV;
        void function (GLIContext ctx, GLenum stage, GLenum portion, GLenum pname, GLfloat* params) get_combiner_output_parameterfv_NV;
        void function (GLIContext ctx, GLenum stage, GLenum portion, GLenum pname, GLint* params) get_combiner_output_parameteriv_NV;
        void function (GLIContext ctx, GLenum variable, GLenum pname, GLfloat* params) get_final_combiner_input_parameterfv_NV;
        void function (GLIContext ctx, GLenum variable, GLenum pname, GLint* params) get_final_combiner_input_parameteriv_NV;
        void function (GLIContext ctx, GLenum stage, GLenum pname, const(GLfloat)* params) combiner_stage_parameterfv_NV;
        void function (GLIContext ctx, GLenum stage, GLenum pname, GLfloat* params) get_combiner_stage_parameterfv_NV;
        void function (GLIContext ctx, GLenum target, GLsizei length, const(GLvoid)* pointer) texture_range_APPLE;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLvoid** params) get_tex_parameter_pointerv_APPLE;
        void function (GLIContext ctx, GLenum equationRGB, GLenum equationAlpha) blend_equation_separate_EXT;
        void function (GLIContext ctx, GLclampf value, GLboolean invert) sample_coverage;
        void function (GLIContext ctx, GLenum mode) sample_pass;
        void function (GLIContext ctx, GLenum pname, GLint param) pn_trianglesi_ATI;
        void function (GLIContext ctx, GLenum pname, GLfloat param) pn_trianglesf_ATI;
        void function (GLIContext ctx, GLsizei n, GLuint* fences) gen_fences_APPLE;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* fences) delete_fences_APPLE;
        void function (GLIContext ctx, GLuint fence) set_fence_APPLE;
        GLboolean function (GLIContext ctx, GLuint fence) is_fence_APPLE;
        GLboolean function (GLIContext ctx, GLuint fence) test_fence_APPLE;
        void function (GLIContext ctx, GLuint fence) finish_fence_APPLE;
        GLboolean function (GLIContext ctx, GLenum object, GLuint name) test_object_APPLE;
        void function (GLIContext ctx, GLenum object, GLuint name) finish_object_APPLE;
        void function (GLIContext ctx, GLenum target, GLuint program) bind_program_ARB;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* programs) delete_programs_ARB;
        void function (GLIContext ctx, GLsizei n, GLuint* programs) gen_programs_ARB;
        GLboolean function (GLIContext ctx, GLuint program) is_program_ARB;
        void function (GLIContext ctx, GLuint index, GLshort x) vertex_attrib1s_ARB;
        void function (GLIContext ctx, GLuint index, GLfloat x) vertex_attrib1f_ARB;
        void function (GLIContext ctx, GLuint index, GLdouble x) vertex_attrib1d_ARB;
        void function (GLIContext ctx, GLuint index, GLshort x, GLshort y) vertex_attrib2s_ARB;
        void function (GLIContext ctx, GLuint index, GLfloat x, GLfloat y) vertex_attrib2f_ARB;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y) vertex_attrib2d_ARB;
        void function (GLIContext ctx, GLuint index, GLshort x, GLshort y, GLshort z) vertex_attrib3s_ARB;
        void function (GLIContext ctx, GLuint index, GLfloat x, GLfloat y, GLfloat z) vertex_attrib3f_ARB;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y, GLdouble z) vertex_attrib3d_ARB;
        void function (GLIContext ctx, GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) vertex_attrib4s_ARB;
        void function (GLIContext ctx, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) vertex_attrib4f_ARB;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) vertex_attrib4d_ARB;
        void function (GLIContext ctx, GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) vertex_attrib4Nub_ARB;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attrib1sv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLfloat)* v) vertex_attrib1fv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attrib1dv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attrib2sv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLfloat)* v) vertex_attrib2fv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attrib2dv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attrib3sv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLfloat)* v) vertex_attrib3fv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attrib3dv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLbyte)* v) vertex_attrib4bv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attrib4sv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attrib4iv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLubyte)* v) vertex_attrib4ubv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLushort)* v) vertex_attrib4usv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attrib4uiv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLfloat)* v) vertex_attrib4fv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attrib4dv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLbyte)* v) vertex_attrib4Nbv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attrib4Nsv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attrib4Niv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLubyte)* v) vertex_attrib4Nubv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLushort)* v) vertex_attrib4Nusv_ARB;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attrib4Nuiv_ARB;
        void function (GLIContext ctx, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(GLvoid)* pointer) vertex_attrib_pointer_ARB;
        void function (GLIContext ctx, GLuint index) enable_vertex_attrib_array_ARB;
        void function (GLIContext ctx, GLuint index) disable_vertex_attrib_array_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLdouble* params) get_vertex_attribdv_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLfloat* params) get_vertex_attribfv_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLint* params) get_vertex_attribiv_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLvoid** pointer) get_vertex_attrib_pointerv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) program_env_parameter4d_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, const(GLdouble)* params) program_env_parameter4dv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) program_env_parameter4f_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, const(GLfloat)* params) program_env_parameter4fv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) program_local_parameter4d_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, const(GLdouble)* params) program_local_parameter4dv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) program_local_parameter4f_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, const(GLfloat)* params) program_local_parameter4fv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLdouble* params) get_program_env_parameterdv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLfloat* params) get_program_env_parameterfv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLdouble* params) get_program_local_parameterdv_ARB;
        void function (GLIContext ctx, GLenum target, GLuint index, GLfloat* params) get_program_local_parameterfv_ARB;
        void function (GLIContext ctx, GLenum target, GLenum format, GLsizei len, const(GLvoid)* string) program_string_ARB;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLvoid* string) get_program_string_ARB;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_programiv_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname) enable_vertex_attrib_ARB;
        void function (GLIContext ctx, GLuint index, GLenum pname) disable_vertex_attrib_ARB;
        GLboolean function (GLIContext ctx, GLuint index, GLenum pname) is_vertex_attrib_enabled_ARB;
        void function (GLIContext ctx, GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points) map_vertex_attrib1d_ARB;
        void function (GLIContext ctx, GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points) map_vertex_attrib1f_ARB;
        void function (GLIContext ctx, GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points) map_vertex_attrib2d_ARB;
        void function (GLIContext ctx, GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points) map_vertex_attrib2f_ARB;
        void function (GLIContext ctx, GLenum pname, GLfloat param) point_parameterf;
        void function (GLIContext ctx, GLenum pname, const(GLfloat)* params) point_parameterfv;
        void function (GLIContext ctx, GLenum pname, GLint param) point_parameteri;
        void function (GLIContext ctx, GLenum pname, const(GLint)* params) point_parameteriv;
        void function (GLIContext ctx, GLfloat coord) fog_coordf;
        void function (GLIContext ctx, const(GLfloat)* coord) fog_coordfv;
        void function (GLIContext ctx, GLdouble coord) fog_coordd;
        void function (GLIContext ctx, const(GLdouble)* coord) fog_coorddv;
        void function (GLIContext ctx, GLenum type, GLsizei stride, const(GLvoid)* pointer) fog_coord_pointer;
        void function (GLIContext ctx, GLenum pname, GLint param) vertex_array_parameteri_EXT;
        void function (GLIContext ctx, GLuint id) bind_vertex_array_EXT;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* ids) delete_vertex_arrays_EXT;
        void function (GLIContext ctx, GLsizei n, GLuint* ids) gen_vertex_arrays_EXT;
        GLboolean function (GLIContext ctx, GLuint id) is_vertex_array_EXT;
        void function (GLIContext ctx, GLenum type, const(GLvoid)* pointer) element_pointer_APPLE;
        void function (GLIContext ctx, GLenum mode, GLint first, GLsizei count) draw_element_array_APPLE;
        void function (GLIContext ctx, GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count) draw_range_element_array_APPLE;
        void function (GLIContext ctx, GLint size, const(GLbyte)* weights) weightbv_ARB;
        void function (GLIContext ctx, GLint size, const(GLshort)* weights) weightsv_ARB;
        void function (GLIContext ctx, GLint size, const(GLint)* weights) weightiv_ARB;
        void function (GLIContext ctx, GLint size, const(GLfloat)* weights) weightfv_ARB;
        void function (GLIContext ctx, GLint size, const(GLdouble)* weights) weightdv_ARB;
        void function (GLIContext ctx, GLint size, const(GLubyte)* weights) weightubv_ARB;
        void function (GLIContext ctx, GLint size, const(GLushort)* weights) weightusv_ARB;
        void function (GLIContext ctx, GLint size, const(GLuint)* weights) weightuiv_ARB;
        void function (GLIContext ctx, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) weight_pointer_ARB;
        void function (GLIContext ctx, GLint count) vertex_blend_ARB;
        void function (GLIContext ctx, GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount) multi_draw_arrays;
        void function (GLIContext ctx, GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei drawcount) multi_draw_elements;
        void function (GLIContext ctx, GLdouble x, GLdouble y) window_pos2d;
        void function (GLIContext ctx, const(GLdouble)* v) window_pos2dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y) window_pos2f;
        void function (GLIContext ctx, const(GLfloat)* v) window_pos2fv;
        void function (GLIContext ctx, GLint x, GLint y) window_pos2i;
        void function (GLIContext ctx, const(GLint)* v) window_pos2iv;
        void function (GLIContext ctx, GLshort x, GLshort y) window_pos2s;
        void function (GLIContext ctx, const(GLshort)* v) window_pos2sv;
        void function (GLIContext ctx, GLdouble x, GLdouble y, GLdouble z) window_pos3d;
        void function (GLIContext ctx, const(GLdouble)* v) window_pos3dv;
        void function (GLIContext ctx, GLfloat x, GLfloat y, GLfloat z) window_pos3f;
        void function (GLIContext ctx, const(GLfloat)* v) window_pos3fv;
        void function (GLIContext ctx, GLint x, GLint y, GLint z) window_pos3i;
        void function (GLIContext ctx, const(GLint)* v) window_pos3iv;
        void function (GLIContext ctx, GLshort x, GLshort y, GLshort z) window_pos3s;
        void function (GLIContext ctx, const(GLshort)* v) window_pos3sv;
        void function (GLIContext ctx, GLenum face) active_stencil_face_EXT;
        void function (GLIContext ctx, GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass) stencil_op_separate_ATI;
        void function (GLIContext ctx, GLenum frontfunc, GLenum backfunc, GLint ref_, GLuint mask) stencil_func_separate_ATI;
        void function (GLIContext ctx) flush_render_APPLE;
        void function (GLIContext ctx) finish_render_APPLE;
        void function (GLIContext ctx) swap_APPLE;
        void function (GLIContext ctx, GLhandleARB obj) delete_object_ARB;
        GLhandleARB function (GLIContext ctx, GLenum pname) get_handle_ARB;
        void function (GLIContext ctx, GLhandleARB containerObj, GLhandleARB attachedObj) detach_object_ARB;
        GLhandleARB function (GLIContext ctx, GLenum shaderType) create_shader_object_ARB;
        void function (GLIContext ctx, GLhandleARB shaderObj, GLsizei count, const(GLcharARB*)* string, const(GLint)* length) shader_source_ARB;
        void function (GLIContext ctx, GLhandleARB shaderObj) compile_shader_ARB;
        GLhandleARB function (GLIContext ctx) create_program_object_ARB;
        void function (GLIContext ctx, GLhandleARB containerObj, GLhandleARB obj) attach_object_ARB;
        void function (GLIContext ctx, GLhandleARB programObj) link_program_ARB;
        void function (GLIContext ctx, GLhandleARB programObj) use_program_object_ARB;
        void function (GLIContext ctx, GLhandleARB programObj) validate_program_ARB;
        void function (GLIContext ctx, GLint location, GLfloat v0) uniform1f_ARB;
        void function (GLIContext ctx, GLint location, GLfloat v0, GLfloat v1) uniform2f_ARB;
        void function (GLIContext ctx, GLint location, GLfloat v0, GLfloat v1, GLfloat v2) uniform3f_ARB;
        void function (GLIContext ctx, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) uniform4f_ARB;
        void function (GLIContext ctx, GLint location, GLint v0) uniform1i_ARB;
        void function (GLIContext ctx, GLint location, GLint v0, GLint v1) uniform2i_ARB;
        void function (GLIContext ctx, GLint location, GLint v0, GLint v1, GLint v2) uniform3i_ARB;
        void function (GLIContext ctx, GLint location, GLint v0, GLint v1, GLint v2, GLint v3) uniform4i_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLfloat)* value) uniform1fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLfloat)* value) uniform2fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLfloat)* value) uniform3fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLfloat)* value) uniform4fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLint)* value) uniform1iv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLint)* value) uniform2iv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLint)* value) uniform3iv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLint)* value) uniform4iv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix2fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix3fv_ARB;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix4fv_ARB;
        void function (GLIContext ctx, GLhandleARB obj, GLenum pname, GLfloat* params) get_object_parameterfv_ARB;
        void function (GLIContext ctx, GLhandleARB obj, GLenum pname, GLint* params) get_object_parameteriv_ARB;
        void function (GLIContext ctx, GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog) get_info_log_ARB;
        void function (GLIContext ctx, GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj) get_attached_objects_ARB;
        GLint function (GLIContext ctx, GLhandleARB programObj, const(GLcharARB)* name) get_uniform_location_ARB;
        void function (GLIContext ctx, GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name) get_active_uniform_ARB;
        void function (GLIContext ctx, GLhandleARB programObj, GLint location, GLfloat* params) get_uniformfv_ARB;
        void function (GLIContext ctx, GLhandleARB programObj, GLint location, GLint* params) get_uniformiv_ARB;
        void function (GLIContext ctx, GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source) get_shader_source_ARB;
        void function (GLIContext ctx, GLhandleARB programObj, GLuint index, const(GLcharARB)* name) bind_attrib_location_ARB;
        void function (GLIContext ctx, GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name) get_active_attrib_ARB;
        GLint function (GLIContext ctx, GLhandleARB programObj, const(GLcharARB)* name) get_attrib_location_ARB;
        void function (GLIContext ctx, GLenum target, GLenum clamp) clamp_color_ARB;
        void function (GLIContext ctx, GLsizei n, GLuint* ids) gen_queries;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* ids) delete_queries;
        GLboolean function (GLIContext ctx, GLuint id) is_query;
        void function (GLIContext ctx, GLenum target, GLuint id) begin_query;
        void function (GLIContext ctx, GLenum target) end_query;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_queryiv;
        void function (GLIContext ctx, GLuint id, GLenum pname, GLint* params) get_query_objectiv;
        void function (GLIContext ctx, GLuint id, GLenum pname, GLuint* params) get_query_objectuiv;
        void function (GLIContext ctx, GLenum target, GLuint buffer) bind_buffer;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* buffers) delete_buffers;
        void function (GLIContext ctx, GLsizei n, GLuint* buffers) gen_buffers;
        GLboolean function (GLIContext ctx, GLuint buffer) is_buffer;
        void function (GLIContext ctx, GLenum target, GLsizeiptrARB size, const(GLvoid)* data, GLenum usage) buffer_data;
        void function (GLIContext ctx, GLenum target, GLintptrARB offset, GLsizeiptrARB size, const(GLvoid)* data) buffer_sub_data;
        void function (GLIContext ctx, GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data) get_buffer_sub_data;
        GLvoid* function (GLIContext ctx, GLenum target, GLenum access) map_buffer;
        GLboolean function (GLIContext ctx, GLenum target) unmap_buffer;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_buffer_parameteriv;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLvoid** params) get_buffer_pointerv;
        void function (GLIContext ctx, GLclampd zmin, GLclampd zmax) depth_bounds_EXT;
        void function (GLIContext ctx, GLsizei n, const(GLenum)* bufs) draw_buffers_ARB;

        GLboolean function (GLIContext ctx, GLuint shader) is_shader;
        GLboolean function (GLIContext ctx, GLuint program) is_program;
        void function (GLIContext ctx, GLuint shader, GLenum pname, GLint* params) get_shaderiv;
        void function (GLIContext ctx, GLuint program, GLenum pname, GLint* params) get_programiv;
        void function (GLIContext ctx, GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog) get_shader_info_log;
        void function (GLIContext ctx, GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog) get_program_info_log;

        void function (GLIContext ctx, GLenum face, GLenum func, GLint ref_, GLuint mask) stencil_func_separate;
        void function (GLIContext ctx, GLenum face, GLuint mask) stencil_mask_separate;

        void function (GLIContext ctx, GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount) multi_draw_element_array_APPLE;
        void function (GLIContext ctx, GLenum mode, GLuint start, GLuint end, const(GLint)* first, const(GLsizei)* count, GLsizei primcount) multi_draw_range_element_array_APPLE;

        /* EXT_framebuffer_object */
        GLboolean function (GLIContext ctx, GLuint renderbuffer) is_renderbuffer_EXT;
        void function (GLIContext ctx, GLenum target, GLuint renderbuffer) bind_renderbuffer_EXT;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* renderbuffers) delete_renderbuffers_EXT;
        void function (GLIContext ctx, GLsizei n, GLuint* renderbuffers) gen_renderbuffers_EXT;
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLsizei width, GLsizei height) renderbuffer_storage_EXT;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_renderbuffer_parameteriv_EXT;
        GLboolean function (GLIContext ctx, GLuint framebuffer) is_framebuffer_EXT;
        void function (GLIContext ctx, GLenum target, GLuint framebuffer) bind_framebuffer_EXT;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* framebuffers) delete_framebuffers_EXT;
        void function (GLIContext ctx, GLsizei n, GLuint* framebuffers) gen_framebuffers_EXT;
        GLenum function (GLIContext ctx, GLenum target) check_framebuffer_status_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) framebuffer_texture1D_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) framebuffer_texture2D_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) framebuffer_texture3D_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) framebuffer_renderbuffer_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLenum pname, GLint* params) get_framebuffer_attachment_parameteriv_EXT;
        void function (GLIContext ctx, GLenum target) generate_mipmap_EXT;

        void function (GLIContext ctx, GLenum target, GLenum pname, GLint param) buffer_parameteri_APPLE;
        void function (GLIContext ctx, GLenum target, GLintptr offset, GLsizeiptr size) flush_mapped_buffer_range_APPLE;

        void function (GLIContext ctx, GLenum target, GLuint index, GLsizei count, const(GLfloat)* params) program_env_parameters4fv_EXT;
        void function (GLIContext ctx, GLenum target, GLuint index, GLsizei count, const(GLfloat)* params) program_local_parameters4fv_EXT;

        GLenum function (GLIContext ctx, GLenum objectType, GLuint name, GLenum option) object_purgeable_APPLE;
        GLenum function (GLIContext ctx, GLenum objectType, GLuint name, GLenum option) object_unpurgeable_APPLE;
        void function (GLIContext ctx, GLenum objectType, GLuint name, GLenum pname, GLint* params) get_object_parameteriv_APPLE;

        /* EXT_geometry_shader4 */
        void function (GLIContext ctx, GLuint program_name, GLenum pname, GLint value) program_parameteri_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLuint texture, GLint level) framebuffer_texture_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) framebuffer_texture_layer_EXT;
        void function (GLIContext ctx, GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face) framebuffer_texture_face_EXT;

        /* EXT_transform_feedback */
        void function (GLIContext ctx, GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) bind_buffer_range_EXT;
        void function (GLIContext ctx, GLenum target, GLuint index, GLuint buffer, GLintptr offset) bind_buffer_offset_EXT;
        void function (GLIContext ctx, GLenum target, GLuint index, GLuint buffer) bind_buffer_base_EXT;
        void function (GLIContext ctx, GLenum primitiveMode) begin_transform_feedback_EXT;
        void function (GLIContext ctx) end_transform_feedback_EXT;
        void function (GLIContext ctx, GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode) transform_feedback_varyings_EXT;
        void function (GLIContext ctx, GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) get_transform_feedback_varying_EXT;
        void function (GLIContext ctx, GLenum param, GLuint index, GLint* values) get_integer_indexedv_EXT;
        void function (GLIContext ctx, GLenum param, GLuint index, GLboolean* values) get_boolean_indexedv_EXT;

        /* EXT_bindable_uniform */
        void function (GLIContext ctx, GLuint program, GLint location, GLuint buffer) uniform_buffer_EXT;
        GLint function (GLIContext ctx, GLuint program, GLint location) get_uniform_buffer_size_EXT;
        GLintptr function (GLIContext ctx, GLuint program, GLint location) get_uniform_buffer_offset_EXT;

        /* EXT_texture_integer */
        void function (GLIContext ctx, GLint r, GLint g, GLint b, GLint a) clear_colorIi_EXT;
        void function (GLIContext ctx, GLuint r, GLuint g, GLuint b, GLuint a) clear_colorIui_EXT;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) tex_parameterIiv_EXT;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLuint* params) tex_parameterIuiv_EXT;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint* params) get_tex_parameterIiv_EXT;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLuint* params) get_tex_parameterIuiv_EXT;

        /* EXT_gpu_shader4 */
        void function (GLIContext ctx, GLuint index, GLint x) vertex_attribI1i_EXT;
        void function (GLIContext ctx, GLuint index, GLint x, GLint y) vertex_attribI2i_EXT;
        void function (GLIContext ctx, GLuint index, GLint x, GLint y, GLint z) vertex_attribI3i_EXT;
        void function (GLIContext ctx, GLuint index, GLint x, GLint y, GLint z, GLint w) vertex_attribI4i_EXT;
        void function (GLIContext ctx, GLuint index, GLuint x) vertex_attribI1ui_EXT;
        void function (GLIContext ctx, GLuint index, GLuint x, GLuint y) vertex_attribI2ui_EXT;
        void function (GLIContext ctx, GLuint index, GLuint x, GLuint y, GLuint z) vertex_attribI3ui_EXT;
        void function (GLIContext ctx, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) vertex_attribI4ui_EXT;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attribI1iv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attribI2iv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attribI3iv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) vertex_attribI4iv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attribI1uiv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attribI2uiv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attribI3uiv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLuint)* v) vertex_attribI4uiv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLbyte)* v) vertex_attribI4bv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLshort)* v) vertex_attribI4sv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLubyte)* v) vertex_attribI4ubv_EXT;
        void function (GLIContext ctx, GLuint index, const(GLushort)* v) vertex_attribI4usv_EXT;
        void function (GLIContext ctx, GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) vertex_attribI_pointer_EXT;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLint* params) get_vertex_attribIiv_EXT;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLuint* params) get_vertex_attribIuiv_EXT;
        void function (GLIContext ctx, GLint location, GLuint v0) uniform1ui_EXT;
        void function (GLIContext ctx, GLint location, GLuint v0, GLuint v1) uniform2ui_EXT;
        void function (GLIContext ctx, GLint location, GLuint v0, GLuint v1, GLuint v2) uniform3ui_EXT;
        void function (GLIContext ctx, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) uniform4ui_EXT;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLuint)* value) uniform1uiv_EXT;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLuint)* value) uniform2uiv_EXT;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLuint)* value) uniform3uiv_EXT;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLuint)* value) uniform4uiv_EXT;
        void function (GLIContext ctx, GLuint program, GLint location, GLuint* params) get_uniformuiv_EXT;
        void function (GLIContext ctx, GLuint program, GLuint colorNumber, const(GLchar)* name) bind_frag_data_location_EXT;
        GLint function (GLIContext ctx, GLuint program, const(GLchar)* name) get_frag_data_location_EXT;

        /* EXT_draw_buffers2 */
        void function (GLIContext ctx, GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a) color_mask_indexed_EXT;
        void function (GLIContext ctx, GLenum target, GLuint index) enable_indexed_EXT;
        void function (GLIContext ctx, GLenum target, GLuint index) disable_indexed_EXT;
        GLboolean function (GLIContext ctx, GLenum target, GLuint index) is_enabled_indexed_EXT;

        /* OpenGL 2.1 */
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix2x3fv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix3x2fv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix2x4fv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix4x2fv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix3x4fv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) uniform_matrix4x3fv;

        /* EXT_framebuffer_blit and EXT_framebuffer_multisample */
        void function (GLIContext ctx, GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter) blit_framebuffer_EXT;
        void function (GLIContext ctx, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) renderbuffer_storage_multisample_EXT;

        /* NV_conditional_render */
        void function (GLIContext ctx, GLuint id, GLenum mode) begin_conditional_render_NV;
        void function (GLIContext ctx) end_conditional_render_NV;

        void function (GLIContext ctx, GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders) get_attached_shaders;

        /* EXT_provoking_vertex */
        void function (GLIContext ctx, GLenum mode) provoking_vertex_EXT;

        /* ARB_instanced_arrays */
        void function (GLIContext ctx, GLuint index, GLuint divisor) vertex_attrib_divisor;
        /* ARB_instanced_arrays and ARB_draw_instanced */
        void function (GLIContext ctx, GLenum mode, GLint first, GLsizei count, GLsizei instancecount) draw_arrays_instanced;
        void function (GLIContext ctx, GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount) draw_elements_instanced;

        /* ARB_draw_elements_base_vertex */
        void function (GLIContext ctx, GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLint base_vertex) draw_elements_base_vertex;
        void function (GLIContext ctx, GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices, GLint base_vertex) draw_range_elements_base_vertex;
        void function (GLIContext ctx, GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount, GLint base_vertex) draw_elements_instanced_base_vertex;
        void function (GLIContext ctx, GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei drawcount, const(GLint)* base_vertex) multi_draw_elements_base_vertex;

        /* ARB_vertex_array_object / OES_vertex_array_object */
        void function (GLIContext ctx, GLuint array) bind_vertex_array_ARB;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* arrays) delete_vertex_arrays_ARB;
        void function (GLIContext ctx, GLsizei n, GLuint* arrays) gen_vertex_arrays_ARB;
        GLboolean function (GLIContext ctx, GLuint array) is_vertex_array_ARB;

        /* APPLE_vertex_point_size */
        void function (GLIContext ctx, GLenum type, GLsizei stride, const(GLvoid)* pointer) point_size_pointer;
        void function (GLIContext ctx, GLfloat size) vertex_point_sizef_APPLE;

        /* OpenGL 3.0 */
        void function (GLIContext ctx, GLenum buffer, GLint drawbuffer, const(GLint)* value) clear_bufferiv;
        void function (GLIContext ctx, GLenum buffer, GLint drawbuffer, const(GLuint)* value) clear_bufferuiv;
        void function (GLIContext ctx, GLenum buffer, GLint drawbuffer, const(GLfloat)* value) clear_bufferfv;
        void function (GLIContext ctx, GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil) clear_bufferfi;
        const(GLubyte)* function (GLIContext ctx, GLenum name, GLuint index) get_stringi;

        /* ARB_sync */
        GLsync function (GLIContext ctx, GLenum condition, GLbitfield flags) fence_sync;
        GLboolean function (GLIContext ctx, GLsync sync) is_sync;
        void function (GLIContext ctx, GLsync sync) delete_sync;
        GLenum function (GLIContext ctx, GLsync sync, GLbitfield flags, GLuint64 timeout) client_wait_sync;
        void function (GLIContext ctx, GLsync sync, GLbitfield flags, GLuint64 timeout) wait_sync;
        void function (GLIContext ctx, GLenum pname, GLint64* params) get_integer64v_sync;
        void function (GLIContext ctx, GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values) get_synciv;

        /* ARB_texture_multisample */
        void function (GLIContext ctx, GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) tex_image2D_multisample;
        void function (GLIContext ctx, GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) tex_image3D_multisample;
        void function (GLIContext ctx, GLenum pname, GLuint index, GLfloat* val) get_multisamplefv;
        void function (GLIContext ctx, GLuint index, GLbitfield mask) sample_maski;

        /* ARB_texture_buffer_object */
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLuint buffer) tex_buffer;

        /* ARB_copy_buffer */
        void function (GLIContext ctx, GLenum readtarget, GLenum writetarget, GLintptr readoffset, GLintptr writeoffset, GLsizeiptr size) copy_buffer_sub_data;

        /* NV_primitive_restart */
        void function (GLIContext ctx, GLuint index) primitive_restart_index;

        /* EXT_timer_query */
        void function (GLIContext ctx, GLuint id, GLenum pname, GLint64EXT* params) get_query_objecti64v;
        void function (GLIContext ctx, GLuint id, GLenum pname, GLuint64EXT* params) get_query_objectui64v;

        /* ARB_map_buffer_range */
        GLvoid* function (GLIContext ctx, GLenum target, GLintptr offset, GLsizeiptr length, GLenum access) map_buffer_range;
        void function (GLIContext ctx, GLenum target, GLintptr offset, GLsizeiptr length) flush_mapped_buffer_range;

        /* ARB_timer_query */
        void function (GLIContext ctx, GLuint id, GLenum target) query_counter;
        void function (GLIContext ctx, GLenum target, GLuint index, GLint64* data) get_integer64i_v;
        void function (GLIContext ctx, GLenum target, GLenum pname, GLint64* params) get_buffer_parameteri64v;

        /* ARB_sampler_object */
        void function (GLIContext ctx, GLsizei count, GLuint* samplers) gen_samplers;
        void function (GLIContext ctx, GLsizei count, const(GLuint)* samplers) delete_samplers;
        GLboolean function (GLIContext ctx, GLuint sampler) is_sampler;
        void function (GLIContext ctx, GLuint unit, GLuint sampler) bind_sampler;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLint param) sampler_parameteri;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, const(GLint)* param) sampler_parameteriv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLfloat param) sampler_parameterf;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, const(GLfloat)* param) sampler_parameterfv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, const(GLint)* param) sampler_parameterIiv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, const(GLuint)* param) sampler_parameterIuiv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLint* params) get_sampler_parameteriv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLfloat* params) get_sampler_parameterfv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLint* params) get_sampler_parameterIiv;
        void function (GLIContext ctx, GLuint sampler, GLenum pname, GLuint* params) get_sampler_parameterIuiv;

        /* EXT_debug_label */
        void function (GLIContext ctx, GLenum type, GLuint object, GLsizei length, const(GLchar)* label) label_object_EXT;
        void function (GLIContext ctx, GLenum type, GLuint object, GLsizei bufSize, GLsizei* length, GLchar* label) get_object_label_EXT;

        /* EXT_debug_marker */
        void function (GLIContext ctx, GLsizei length, const(GLchar)* marker) insert_event_marker_EXT;
        void function (GLIContext ctx, GLsizei length, const(GLchar)* marker) push_group_marker_EXT;
        void function (GLIContext ctx) pop_group_marker_EXT;

        /* ARB_separate_shader_objects */
        void function (GLIContext ctx, GLuint pipeline, GLbitfield stages, GLuint program) use_program_stages;
        void function (GLIContext ctx, GLuint pipeline, GLuint program) active_shader_program;
        GLuint function (GLIContext ctx, GLenum type, GLsizei count, const(GLchar*)* strings) create_shader_programv;
        void function (GLIContext ctx, GLuint pipeline) bind_program_pipeline;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* pipelines) delete_program_pipelines;
        void function (GLIContext ctx, GLsizei n, GLuint* pipelines) gen_program_pipelines;
        GLboolean function (GLIContext ctx, GLuint pipeline) is_program_pipeline;
        void function (GLIContext ctx, GLuint pipeline, GLenum pname, GLint* params) get_program_pipelineiv;
        void function (GLIContext ctx, GLuint pipeline) validate_program_pipeline;
        void function (GLIContext ctx, GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog) get_program_pipeline_info_log;
        void function (GLIContext ctx, GLuint program, GLint location, GLint x) program_uniform1i;
        void function (GLIContext ctx, GLuint program, GLint location, GLint x, GLint y) program_uniform2i;
        void function (GLIContext ctx, GLuint program, GLint location, GLint x, GLint y, GLint z) program_uniform3i;
        void function (GLIContext ctx, GLuint program, GLint location, GLint x, GLint y, GLint z, GLint w) program_uniform4i;
        void function (GLIContext ctx, GLuint program, GLint location, GLfloat x) program_uniform1f;
        void function (GLIContext ctx, GLuint program, GLint location, GLfloat x, GLfloat y) program_uniform2f;
        void function (GLIContext ctx, GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z) program_uniform3f;
        void function (GLIContext ctx, GLuint program, GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w) program_uniform4f;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLint)* value) program_uniform1iv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLint)* value) program_uniform2iv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLint)* value) program_uniform3iv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLint)* value) program_uniform4iv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLfloat)* value) program_uniform1fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLfloat)* value) program_uniform2fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLfloat)* value) program_uniform3fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLfloat)* value) program_uniform4fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix2fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix3fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix4fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLuint x) program_uniform1ui;
        void function (GLIContext ctx, GLuint program, GLint location, GLuint x, GLuint y) program_uniform2ui;
        void function (GLIContext ctx, GLuint program, GLint location, GLuint x, GLuint y, GLuint z) program_uniform3ui;
        void function (GLIContext ctx, GLuint program, GLint location, GLuint x, GLuint y, GLuint z, GLuint w) program_uniform4ui;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLuint)* value) program_uniform1uiv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLuint)* value) program_uniform2uiv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLuint)* value) program_uniform3uiv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLuint)* value) program_uniform4uiv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix2x3fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix3x2fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix2x4fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix4x2fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix3x4fv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) program_uniform_matrix4x3fv;

        /* ARB_blend_func_extended */
        void function (GLIContext ctx, GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name) bind_frag_data_location_indexed;
        GLint function (GLIContext ctx, GLuint program, const(GLchar)* name) get_frag_data_index;

        /* ARB_draw_buffers_blend */
        void function (GLIContext ctx, GLuint buf, GLenum src, GLenum dst) blend_func_i;
        void function (GLIContext ctx, GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) blend_func_separate_i;
        void function (GLIContext ctx, GLuint buf, GLenum mode) blend_equation_i;
        void function (GLIContext ctx, GLuint buf, GLenum modeRGB, GLenum modeAlpha) blend_equation_separate_i;

        /* ARB_shading_language_include */
        void function (GLIContext ctx, GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string) named_string_ARB;
        void function (GLIContext ctx, GLint namelen, const(GLchar)* name) delete_named_string_ARB;
        void function (GLIContext ctx, GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length) compile_shader_include_ARB;
        GLboolean function (GLIContext ctx, GLint namelen, const(GLchar)* name) is_named_string_ARB;
        void function (GLIContext ctx, GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string) get_named_string_ARB;
        void function (GLIContext ctx, GLint namelen, const(GLchar)* name, GLenum pname, GLint* params) get_named_string_iv_ARB;

        /* ARB_ES2_compatibility */
        void function (GLIContext ctx) release_shader_compiler;
        void function (GLIContext ctx, GLint n, GLuint* shaders, GLenum binaryformat, const(GLvoid)* binary, GLint length) shader_binary;
        void function (GLIContext ctx, GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision) get_shader_precision_format;
        void function (GLIContext ctx, GLclampf zNear, GLclampf zFar) depth_rangef;
        void function (GLIContext ctx, GLclampf depth) clear_depthf;

        /* ARB_vertex_type_2_10_10_10_rev */
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, GLuint value) vertex_attribP1ui;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, GLuint value) vertex_attribP2ui;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, GLuint value) vertex_attribP3ui;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, GLuint value) vertex_attribP4ui;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) vertex_attribP1uiv;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) vertex_attribP2uiv;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) vertex_attribP3uiv;
        void function (GLIContext ctx, GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) vertex_attribP4uiv;

        /* ARB_get_program_binary */
        void function (GLIContext ctx, GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary) get_program_binary;
        void function (GLIContext ctx, GLuint program, GLenum binaryFormat, const(GLvoid)* binary, GLsizei length) program_binary;

        /* ARB_sample_shading */
        void function (GLIContext ctx, GLclampf value) min_sample_shading;

        /* ARB_viewport_array */
        void function (GLIContext ctx, GLuint first, GLsizei count, const(GLfloat)* v) viewport_arrayv;
        void function (GLIContext ctx, GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h) viewport_indexedf;
        void function (GLIContext ctx, GLuint index, const(GLfloat)* v) viewport_indexedfv;
        void function (GLIContext ctx, GLuint first, GLsizei count, const(GLint)* v) scissor_arrayv;
        void function (GLIContext ctx, GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height) scissor_indexed;
        void function (GLIContext ctx, GLuint index, const(GLint)* v) scissor_indexedv;
        void function (GLIContext ctx, GLuint first, GLsizei count, const(GLclampd)* v) depth_range_arrayv;
        void function (GLIContext ctx, GLuint index, GLclampd n, GLclampd f) depth_range_indexed;
        void function (GLIContext ctx, GLenum target, GLuint index, GLfloat* data) get_floati_v;
        void function (GLIContext ctx, GLenum target, GLuint index, GLdouble* data) get_doublei_v;

        /* ARB_draw_indirect */
        void function (GLIContext ctx, GLenum mode, const(GLvoid)* indirect) draw_arrays_indirect;
        void function (GLIContext ctx, GLenum mode, GLenum type, const(GLvoid)* indirect) draw_elements_indirect;

        /* ARB_tessellation_shader */
        void function (GLIContext ctx, GLenum pname, GLint value) patch_parameteri;
        void function (GLIContext ctx, GLenum pname, const(GLfloat)* values) patch_parameterfv;

        /* ARB_transform_feedback2 */
        void function (GLIContext ctx, GLenum target, GLuint name) bind_transform_feedback;
        void function (GLIContext ctx, GLsizei n, GLuint* ids) gen_transform_feedbacks;
        void function (GLIContext ctx, GLsizei n, const(GLuint)* ids) delete_transform_feedbacks;
        void function (GLIContext ctx) pause_transform_feedback;
        void function (GLIContext ctx) resume_transform_feedback;
        GLboolean function (GLIContext ctx, GLuint name) is_transform_feedback;
        void function (GLIContext ctx, GLenum mode, GLuint name) draw_transform_feedback;

        /* ARB_transform_feedback3 */
        void function (GLIContext ctx, GLenum target, GLuint index, GLuint id) begin_query_indexed;
        void function (GLIContext ctx, GLenum target, GLuint index) end_query_indexed;
        void function (GLIContext ctx, GLenum target, GLuint index, GLenum pname, GLint* params) get_query_indexediv;
        void function (GLIContext ctx, GLenum mode, GLuint name, GLuint stream) draw_transform_feedback_stream;

        /* ARB_separate_shader_objects && ARB_gpu_shader_fp64 */
        void function (GLIContext ctx, GLuint program, GLint location, GLdouble x) program_uniform1d;
        void function (GLIContext ctx, GLuint program, GLint location, GLdouble x, GLdouble y) program_uniform2d;
        void function (GLIContext ctx, GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z) program_uniform3d;
        void function (GLIContext ctx, GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) program_uniform4d;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLdouble)* value) program_uniform1dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLdouble)* value) program_uniform2dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLdouble)* value) program_uniform3dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, const(GLdouble)* value) program_uniform4dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix2dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix3dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix4dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix2x3dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix3x2dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix2x4dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix4x2dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix3x4dv;
        void function (GLIContext ctx, GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) program_uniform_matrix4x3dv;

        /* ARB_gpu_shader_fp64 */
        void function (GLIContext ctx, GLint location, GLdouble x) uniform1d;
        void function (GLIContext ctx, GLint location, GLdouble x, GLdouble y) uniform2d;
        void function (GLIContext ctx, GLint location, GLdouble x, GLdouble y, GLdouble z) uniform3d;
        void function (GLIContext ctx, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) uniform4d;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLdouble)* value) uniform1dv;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLdouble)* value) uniform2dv;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLdouble)* value) uniform3dv;
        void function (GLIContext ctx, GLint location, GLsizei count, const(GLdouble)* value) uniform4dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix2dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix3dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix4dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix2x3dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix3x2dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix2x4dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix4x2dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix3x4dv;
        void function (GLIContext ctx, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) uniform_matrix4x3dv;
        void function (GLIContext ctx, GLuint program_obj, GLint location, GLdouble* params) get_uniformdv;

        /* ARB_vertex_attrib_64bit */
        void function (GLIContext ctx, GLuint index, GLdouble x) vertex_attribl1d;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y) vertex_attribl2d;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y, GLdouble z) vertex_attribl3d;
        void function (GLIContext ctx, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) vertex_attribl4d;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attribl1dv;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attribl2dv;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attribl3dv;
        void function (GLIContext ctx, GLuint index, const(GLdouble)* v) vertex_attribl4dv;
        void function (GLIContext ctx, GLuint index, GLint size, GLenum type, GLsizei stride, const(void)* pointer) vertex_attrib_lpointer;
        void function (GLIContext ctx, GLuint index, GLenum pname, GLdouble* params) get_vertex_attrib_ldv;

        /* ARB_shader_subroutine */
        GLint function (GLIContext ctx, GLuint program, GLenum shadertype, const(GLchar)* name) get_subroutine_uniform_location;
        GLuint function (GLIContext ctx, GLuint program, GLenum shadertype, const(GLchar)* name) get_subroutine_index;
        void function (GLIContext ctx, GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values) get_active_subroutine_uniformiv;
        void function (GLIContext ctx, GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) get_active_subroutine_uniform_name;
        void function (GLIContext ctx, GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) get_active_subroutine_name;
        void function (GLIContext ctx, GLenum shadertype, GLsizei count, const(GLuint)* indices) uniform_subroutinesuiv;
        void function (GLIContext ctx, GLenum shadertype, GLint location, GLuint* params) get_uniform_subroutineuiv;
        void function (GLIContext ctx, GLuint program, GLenum shadertype, GLenum pname, GLint* values) get_program_stageiv;

        /* ARB_internalformat_query */
        void function (GLIContext ctx, GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params) get_internal_formativ;

        /* ARB_texture_storage */
        void function (GLIContext ctx, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) tex_storage1D;
        void function (GLIContext ctx, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) tex_storage2D;
        void function (GLIContext ctx, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) tex_storage3D;

        /* GL_APPLE_label_process */
        void function (GLIContext ctx, GLenum type, GLuint name, GLint pid) label_object_with_responsible_process_APPLE;

        /* GL_NV_texture_barrier */
        void function (GLIContext ctx) texture_barrier_NV;

        /* "GL_APPLE_multi_draw_indirect" */
        void function (GLIContext ctx, GLenum mode, GLenum type, const(GLvoid)* indirect, GLsizei drawcount, GLsizei stride) multi_draw_elements_indirect_APPLE;
    }

    alias GLIFunctionDispatch = __GLIFunctionDispatchRec;

    /* _GLIDISPATCH_H */

}