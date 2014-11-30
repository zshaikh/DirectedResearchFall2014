.class final Lcom/aarki/Aarki$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aarki/AarkiInterstitial$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aarki/Aarki;->fetchInterstitialAd(Ljava/lang/String;Ljava/util/Map;Lcom/aarki/Aarki$AarkiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Lcom/aarki/Aarki$Status;)V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/Aarki;->interstitialLoadingStarted:Ljava/lang/Boolean;

    .line 243
    invoke-static {}, Lcom/aarki/Aarki;->a()Lcom/aarki/Aarki$AarkiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aarki/Aarki;->a()Lcom/aarki/Aarki$AarkiListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aarki/Aarki$AarkiListener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 244
    :cond_0
    return-void
.end method
