.class final Lcom/dolphin/browser/preload/e;
.super Ljava/lang/Object;
.source "BuiltinDataUtil.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/dolphin/browser/preload/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 242
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 244
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/preload/e;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0

    :cond_1
    move v0, v1

    .line 246
    goto :goto_0
.end method
