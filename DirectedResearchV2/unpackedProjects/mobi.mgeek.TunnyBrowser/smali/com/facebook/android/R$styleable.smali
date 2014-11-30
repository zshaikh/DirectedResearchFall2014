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

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0100a2

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 182
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    .line 187
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    .line 195
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 182
    nop

    :array_0
    .array-data 4
        0x7f0100a3
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
    .end array-data

    .line 187
    :array_1
    .array-data 4
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
    .end array-data

    .line 195
    :array_2
    .array-data 4
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
    .end array-data

    .line 200
    :array_3
    .array-data 4
        0x7f0100b2
        0x7f0100b3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
