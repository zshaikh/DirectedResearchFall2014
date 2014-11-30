.class public Lcom/dolphin/browser/h/e;
.super Ljava/lang/Object;
.source "LongPressPopPreferenceHelper.java"


# direct methods
.method public static a()I
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "long_press_tab_tips_shown_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "long_press_tab_tips_shown_count"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 32
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "swipe_close_tab_tips_shown"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 45
    return-void
.end method

.method public static b(Z)V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "swipe_dolphin_key_tips_shown"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 59
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swipe_close_tab_tips_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/dolphin/browser/h/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swipe_dolphin_key_tips_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "long_press_pop_preferences_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
