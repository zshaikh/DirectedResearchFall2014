.class Lcom/stuv/ane/pushnotif/ExtensionContext$3;
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
    iput-object p1, p0, Lcom/stuv/ane/pushnotif/ExtensionContext$3;->this$0:Lcom/stuv/ane/pushnotif/ExtensionContext;

    .line 30
    invoke-direct {p0}, Lcom/stuv/ane/pushnotif/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 5

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$3;->getInt()I

    move-result v4

    int-to-long v1, v4

    .line 36
    .local v1, "timestamp":J
    invoke-virtual {p0}, Lcom/stuv/ane/pushnotif/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "title":Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/stuv/ane/pushnotif/PushNotifWrapper;->localNotification(Ljava/lang/String;JLjava/lang/String;)V

    .line 38
    return-void
.end method
