.class Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;
.source "WebSettingsV6_7_Sense.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;-><init>(Landroid/webkit/WebSettings;)V

    .line 49
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ua_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->b:Landroid/content/SharedPreferences;

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->b:Landroid/content/SharedPreferences;

    const-string v1, "default_ua_profile_url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private static a([B)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    const-string v1, "default_ua_profile_url"

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 88
    .line 90
    const-string v6, ""

    .line 92
    :try_start_0
    const-string v0, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a([B)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    const-string v2, "ua_profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 110
    :goto_0
    if-eqz v1, :cond_0

    .line 112
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :cond_0
    :goto_1
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 110
    :goto_2
    if-eqz v0, :cond_2

    .line 112
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v6

    .line 114
    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 114
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    .line 112
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 114
    :cond_1
    :goto_4
    throw v0

    .line 113
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 108
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public canQuickSelection()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgent()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
