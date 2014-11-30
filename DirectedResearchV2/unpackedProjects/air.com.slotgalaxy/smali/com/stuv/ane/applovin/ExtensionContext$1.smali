.class Lcom/stuv/ane/applovin/ExtensionContext$1;
.super Lcom/stuv/ane/applovin/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/applovin/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/applovin/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/applovin/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/applovin/ExtensionContext$1;->this$0:Lcom/stuv/ane/applovin/ExtensionContext;

    .line 35
    invoke-direct {p0}, Lcom/stuv/ane/applovin/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/stuv/ane/applovin/ExtensionContext$1;->this$0:Lcom/stuv/ane/applovin/ExtensionContext;

    invoke-virtual {v0}, Lcom/stuv/ane/applovin/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Landroid/app/Activity;)V

    .line 40
    return-void
.end method
