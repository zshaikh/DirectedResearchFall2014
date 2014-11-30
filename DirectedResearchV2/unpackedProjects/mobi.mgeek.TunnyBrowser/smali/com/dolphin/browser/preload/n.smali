.class public Lcom/dolphin/browser/preload/n;
.super Ljava/lang/Object;
.source "PreloadPreferences.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/preload/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/preload/n;->a:Landroid/content/Context;

    .line 38
    invoke-static {}, Lcom/dolphin/browser/preload/b;->a()Lcom/dolphin/browser/preload/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    .line 39
    return-void
.end method

.method private p()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/preload/n;->a:Landroid/content/Context;

    const-string v1, "preload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feature_link"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 78
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sync_success"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 55
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "feature_link"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hot_apps"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 102
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "initialized"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 66
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hot_apps"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "new_tab_link"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 114
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_download_translate"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 193
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "more_addon_url"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "more_addon_url"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 126
    return-void
.end method

.method public d(Z)V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "shortcut_created"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 270
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 141
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "more_theme_url"

    iget-object v3, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v3}, Lcom/dolphin/browser/preload/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 144
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "more_theme_url"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 138
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rate_me_url"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rate_me_url"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 156
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_update_link"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "about"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 168
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "check_update_link"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 180
    return-void
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_download_translate"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->i()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_categories"

    invoke-static {}, Lcom/dolphin/browser/search/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "search_categories"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 206
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "short_cuts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "short_cuts"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 218
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tracking_id"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tutorial_strategy"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 243
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tutorial_strategy"

    iget-object v2, p0, Lcom/dolphin/browser/preload/n;->b:Lcom/dolphin/browser/preload/b;

    invoke-virtual {v2}, Lcom/dolphin/browser/preload/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ab_test"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 254
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ab_test"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "trace"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 265
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trace"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 3

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/dolphin/browser/preload/n;->p()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shortcut_created"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
