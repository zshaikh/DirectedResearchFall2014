.class Lcom/dolphin/browser/core/ai;
.super Lcom/dolphin/browser/util/f;
.source "PluginInstallMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/core/ah;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ah;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dolphin/browser/core/ai;->b:Lcom/dolphin/browser/core/ah;

    iput-object p2, p0, Lcom/dolphin/browser/core/ai;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/ai;->a([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/core/ai;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/dolphin/browser/core/ah;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/ai;->a(Ljava/util/Set;)V

    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/core/ai;->b:Lcom/dolphin/browser/core/ah;

    invoke-static {v0, p1}, Lcom/dolphin/browser/core/ah;->a(Lcom/dolphin/browser/core/ah;Ljava/util/Set;)V

    .line 116
    return-void
.end method
