.class Lcom/dolphin/browser/extensions/h;
.super Lcom/dolphin/browser/util/f;
.source "DolphinPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/extensions/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dolphin/browser/extensions/h;->b:Lcom/dolphin/browser/extensions/g;

    iput-object p2, p0, Lcom/dolphin/browser/extensions/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/extensions/h;->b:Lcom/dolphin/browser/extensions/g;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/g;->a(Lcom/dolphin/browser/extensions/g;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    .line 249
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    .line 250
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->k()V

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/extensions/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    const/16 v2, 0x1040

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 258
    iget-object v3, p0, Lcom/dolphin/browser/extensions/h;->b:Lcom/dolphin/browser/extensions/g;

    iget-object v4, p0, Lcom/dolphin/browser/extensions/h;->a:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lcom/dolphin/browser/extensions/g;->a(Lcom/dolphin/browser/extensions/g;Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    :cond_0
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->j()V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/extensions/h;->b:Lcom/dolphin/browser/extensions/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/dolphin/browser/extensions/g;->a(Lcom/dolphin/browser/extensions/g;Z)Z

    .line 264
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/al;->l()V

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method
