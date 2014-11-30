.class final Lmobi/mgeek/TunnyBrowser/ht;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bv;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ht;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 2

    .prologue
    .line 443
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 446
    :cond_0
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 447
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ht;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
