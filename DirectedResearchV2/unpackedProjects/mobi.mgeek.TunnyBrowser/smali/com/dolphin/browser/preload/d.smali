.class final Lcom/dolphin/browser/preload/d;
.super Ljava/lang/Object;
.source "BuiltinDataUtil.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 2

    .prologue
    .line 120
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lcom/dolphin/browser/launcher/be;

    .line 122
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/be;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dolphin/browser/preload/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/preload/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
