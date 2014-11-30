.class public Lcom/dolphin/browser/tablist/cc;
.super Ljava/lang/Object;
.source "TabListPreferenceHelper.java"


# direct methods
.method public static a(Z)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_has_new_offline_message"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 36
    invoke-static {p0}, Lcom/dolphin/browser/tablist/cc;->d(Z)V

    .line 37
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_has_new_offline_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Z)V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tablist_swipe_guide_shown"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 61
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tablist_swipe_guide_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Z)V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tablist_guide_shown"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 73
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tablist_guide_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "tablist_preferences_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static d(Z)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/a;->a()V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/a;->b()V

    goto :goto_0
.end method
