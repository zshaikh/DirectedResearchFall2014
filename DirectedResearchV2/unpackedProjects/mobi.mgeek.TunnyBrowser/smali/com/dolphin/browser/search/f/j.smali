.class Lcom/dolphin/browser/search/f/j;
.super Ljava/lang/Object;
.source "SpeedDialUpgradeTask.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/search/f/j;->a:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    instance-of v1, p1, Lcom/dolphin/browser/launcher/cl;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 84
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/search/f/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
