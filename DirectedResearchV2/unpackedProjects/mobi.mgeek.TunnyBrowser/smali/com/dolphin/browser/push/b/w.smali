.class Lcom/dolphin/browser/push/b/w;
.super Ljava/lang/Object;
.source "UpdateSpeedDialMessageExcutor.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/push/b/v;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/b/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/push/b/w;->b:Lcom/dolphin/browser/push/b/v;

    iput-object p2, p0, Lcom/dolphin/browser/push/b/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 2

    .prologue
    .line 35
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 37
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/b/w;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
