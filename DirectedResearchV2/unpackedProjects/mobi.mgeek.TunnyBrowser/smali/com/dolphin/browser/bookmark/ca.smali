.class public Lcom/dolphin/browser/bookmark/ca;
.super Lcom/dolphin/browser/bookmark/o;
.source "FirefoxExtensionRootAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/o;-><init>(Landroid/content/Context;J)V

    .line 17
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ca;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0278

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, -0xb

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/ca;->o()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/ca;->a(JZ)Landroid/database/Cursor;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/ca;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 29
    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
