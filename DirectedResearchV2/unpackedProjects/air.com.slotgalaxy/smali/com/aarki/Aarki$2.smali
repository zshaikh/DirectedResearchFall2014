.class final Lcom/aarki/Aarki$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aarki/AarkiInterstitial$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aarki/Aarki;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/aarki/Aarki$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Lcom/aarki/Aarki$Status;)V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    .line 286
    sget-object v0, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    if-ne p1, v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/aarki/Aarki$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/aarki/AarkiInterstitial;->a(Landroid/app/Activity;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/aarki/Aarki;->a()Lcom/aarki/Aarki$AarkiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aarki/Aarki;->a()Lcom/aarki/Aarki$AarkiListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    goto :goto_0
.end method
