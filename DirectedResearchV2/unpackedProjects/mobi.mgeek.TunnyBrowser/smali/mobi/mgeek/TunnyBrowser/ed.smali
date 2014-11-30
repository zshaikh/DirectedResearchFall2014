.class public Lmobi/mgeek/TunnyBrowser/ed;
.super Lcom/dolphin/browser/Network/c;
.source "DolphinHttpExtensionParams.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dolphin/browser/Network/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 14
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ed;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "Dolphin http client/%s(%s) (Android)"

    .line 16
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 18
    const-string v1, "Dolphin http client/%s(%s) (Android)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/ed;->a:Ljava/lang/String;

    .line 21
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ed;->a:Ljava/lang/String;

    return-object v0
.end method
