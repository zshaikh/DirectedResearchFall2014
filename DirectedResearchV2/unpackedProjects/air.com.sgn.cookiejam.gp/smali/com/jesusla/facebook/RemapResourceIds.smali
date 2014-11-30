.class public Lcom/jesusla/facebook/RemapResourceIds;
.super Ljava/lang/Object;
.source "RemapResourceIds.java"


# static fields
.field static singleton:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/jesusla/facebook/RemapResourceIds;->singleton:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Lcom/jesusla/facebook/RemapResourceIds;->singleton:I

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/jesusla/facebook/RemapResourceIds;->patchFacebookResourceIdsAtRuntime(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/jesusla/facebook/RemapResourceIds;->singleton:I

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getRemappedId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".R$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    .local v2, "packageName":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    .line 16
    .local v0, "arr":[Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 19
    .local v4, "someObject":Ljava/lang/Class;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 20
    .local v3, "someField":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 23
    .end local v3    # "someField":Ljava/lang/reflect/Field;
    .end local v4    # "someObject":Ljava/lang/Class;
    :goto_0
    return v5

    .line 22
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, "e":Ljava/lang/Exception;
    move v5, v7

    .line 23
    goto :goto_0
.end method

.method patchFacebookResourceIdsAtRuntime(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-string v0, "id.com_facebook_login_activity_progress_bar"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    .line 38
    const-string v0, "id.com_facebook_picker_activity_circle"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_activity_circle:I

    .line 39
    const-string v0, "id.com_facebook_picker_checkbox"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox:I

    .line 40
    const-string v0, "id.com_facebook_picker_checkbox_stub"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox_stub:I

    .line 41
    const-string v0, "id.com_facebook_picker_divider"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_divider:I

    .line 42
    const-string v0, "id.com_facebook_picker_done_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_done_button:I

    .line 43
    const-string v0, "id.com_facebook_picker_image"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    .line 44
    const-string v0, "id.com_facebook_picker_list_section_header"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_list_section_header:I

    .line 45
    const-string v0, "id.com_facebook_picker_list_view"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    .line 46
    const-string v0, "id.com_facebook_picker_profile_pic_stub"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_profile_pic_stub:I

    .line 47
    const-string v0, "id.com_facebook_picker_row_activity_circle"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_row_activity_circle:I

    .line 48
    const-string v0, "id.com_facebook_picker_title"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    .line 49
    const-string v0, "id.com_facebook_picker_title_bar"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    .line 50
    const-string v0, "id.com_facebook_picker_title_bar_stub"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar_stub:I

    .line 51
    const-string v0, "id.com_facebook_picker_top_bar"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_picker_top_bar:I

    .line 53
    const-string v0, "id.com_facebook_usersettingsfragment_login_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_usersettingsfragment_login_button:I

    .line 54
    const-string v0, "id.com_facebook_usersettingsfragment_logo_image"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_usersettingsfragment_logo_image:I

    .line 55
    const-string v0, "id.com_facebook_usersettingsfragment_profile_name"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->com_facebook_usersettingsfragment_profile_name:I

    .line 56
    const-string v0, "id.large"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->large:I

    .line 57
    const-string v0, "id.normal"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->normal:I

    .line 58
    const-string v0, "id.picker_subtitle"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->picker_subtitle:I

    .line 60
    const-string v0, "id.small"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$id;->small:I

    .line 61
    const-string v0, "string.com_facebook_dialogloginactivity_ok_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_dialogloginactivity_ok_button:I

    .line 62
    const-string v0, "string.com_facebook_loginview_log_out_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_button:I

    .line 63
    const-string v0, "string.com_facebook_loginview_log_in_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_log_in_button:I

    .line 64
    const-string v0, "string.com_facebook_loginview_logged_in_as"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_as:I

    .line 65
    const-string v0, "string.com_facebook_loginview_logged_in_using_facebook"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    .line 66
    const-string v0, "string.com_facebook_loginview_log_out_action"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_action:I

    .line 67
    const-string v0, "string.com_facebook_loginview_cancel_action"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loginview_cancel_action:I

    .line 68
    const-string v0, "string.com_facebook_logo_content_description"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_logo_content_description:I

    .line 69
    const-string v0, "string.com_facebook_usersettingsfragment_log_in_button"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_usersettingsfragment_log_in_button:I

    .line 70
    const-string v0, "string.com_facebook_usersettingsfragment_logged_in"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_usersettingsfragment_logged_in:I

    .line 71
    const-string v0, "string.com_facebook_usersettingsfragment_not_logged_in"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_usersettingsfragment_not_logged_in:I

    .line 72
    const-string v0, "string.com_facebook_placepicker_subtitle_format"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_format:I

    .line 73
    const-string v0, "string.com_facebook_placepicker_subtitle_catetory_only_format"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_catetory_only_format:I

    .line 74
    const-string v0, "string.com_facebook_placepicker_subtitle_were_here_only_format"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_were_here_only_format:I

    .line 75
    const-string v0, "string.com_facebook_picker_done_button_text"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_picker_done_button_text:I

    .line 76
    const-string v0, "string.com_facebook_choose_friends"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_choose_friends:I

    .line 77
    const-string v0, "string.com_facebook_nearby"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_nearby:I

    .line 78
    const-string v0, "string.com_facebook_loading"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_loading:I

    .line 79
    const-string v0, "string.com_facebook_internet_permission_error_title"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_internet_permission_error_title:I

    .line 80
    const-string v0, "string.com_facebook_internet_permission_error_message"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_internet_permission_error_message:I

    .line 81
    const-string v0, "string.com_facebook_requesterror_web_login"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_requesterror_web_login:I

    .line 82
    const-string v0, "string.com_facebook_requesterror_relogin"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_requesterror_relogin:I

    .line 83
    const-string v0, "string.com_facebook_requesterror_password_changed"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_requesterror_password_changed:I

    .line 84
    const-string v0, "string.com_facebook_requesterror_reconnect"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_requesterror_reconnect:I

    .line 85
    const-string v0, "string.com_facebook_requesterror_permissions"

    invoke-virtual {p0, p1, v0}, Lcom/jesusla/facebook/RemapResourceIds;->getRemappedId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/android/R$string;->com_facebook_requesterror_permissions:I

    .line 86
    return-void
.end method
