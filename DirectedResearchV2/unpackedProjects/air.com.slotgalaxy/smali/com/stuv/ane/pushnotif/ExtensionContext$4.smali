.class Lcom/stuv/ane/pushnotif/ExtensionContext$4;
.super Lcom/stuv/ane/pushnotif/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/pushnotif/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/pushnotif/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/pushnotif/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/ExtensionContext$4;->this$0:Lcom/stuv/ane/pushnotif/ExtensionContext;

    .line 40
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$4;->getBool()Z

    move-result v0

    .line 45
    .local v0, "isAppInForeground":Z
    invoke-static {v0}, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->setIsAppInForeground(Z)V

    .line 46
    return-void
.end method
