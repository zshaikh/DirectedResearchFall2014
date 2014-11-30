.class public final Lcom/facebook/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final com_facebook_friend_picker_fragment:[I

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010075

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 165
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    .line 170
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    .line 178
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 165
    nop

    :array_0
    .array-data 4
        0x7f010076
        0x7f010077
        0x7f010078
        0x7f010079
    .end array-data

    .line 170
    :array_1
    .array-data 4
        0x7f01007a
        0x7f01007b
        0x7f01007c
        0x7f01007d
        0x7f01007e
        0x7f01007f
        0x7f010080
    .end array-data

    .line 178
    :array_2
    .array-data 4
        0x7f010081
        0x7f010082
        0x7f010083
        0x7f010084
    .end array-data

    .line 183
    :array_3
    .array-data 4
        0x7f010085
        0x7f010086
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
