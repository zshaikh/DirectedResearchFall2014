.class Lcom/stuv/ane/apsalar/ExtensionContext$3;
.super Lcom/stuv/ane/apsalar/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/apsalar/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/apsalar/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/apsalar/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/apsalar/ExtensionContext$3;->this$0:Lcom/stuv/ane/apsalar/ExtensionContext;

    .line 40
    invoke-direct {p0}, Lcom/stuv/ane/apsalar/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/stuv/ane/apsalar/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "eventName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/apsalar/ExtensionContext$3;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lcom/apsalar/sdk/Apsalar;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method