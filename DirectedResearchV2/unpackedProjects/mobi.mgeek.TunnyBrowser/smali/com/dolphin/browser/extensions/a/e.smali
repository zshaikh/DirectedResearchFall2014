.class public Lcom/dolphin/browser/extensions/a/e;
.super Ljava/lang/Object;
.source "PromotedContentStore.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/extensions/a/e;->a:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->f()V

    .line 32
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/extensions/a/e;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    if-nez p1, :cond_0

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/a/a;

    .line 69
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a/a;->g()Z

    move-result v3

    .line 70
    if-eqz p2, :cond_2

    .line 71
    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_2
    if-nez v3, :cond_1

    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/extensions/a/e;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/e;->a:Landroid/content/Context;

    const-string v1, "promotedContent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "addon_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "PreloadAddon"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/extensions/a/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/extensions/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_modified_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/a/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/dolphin/browser/extensions/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 44
    invoke-direct {p0, v1}, Lcom/dolphin/browser/extensions/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v1}, Lcom/dolphin/browser/extensions/a/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "addon_list"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "has_update_preinstall_from_server"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 112
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_modified_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/a/e;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_update_preinstall_from_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
