.class Lcom/stuv/ane/pushnotif/ExtensionContext$1;
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
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/ExtensionContext$1;->this$0:Lcom/stuv/ane/pushnotif/ExtensionContext;

    .line 16
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "emailAdress":Ljava/lang/String;
    invoke-static {v0}, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->register(Ljava/lang/String;)V

    .line 22
    return-void
.end method
