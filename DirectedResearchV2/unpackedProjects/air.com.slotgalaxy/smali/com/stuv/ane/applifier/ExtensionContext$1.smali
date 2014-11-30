.class Lcom/stuv/ane/applifier/ExtensionContext$1;
.super Lcom/stuv/ane/applifier/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/applifier/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/applifier/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/applifier/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/applifier/ExtensionContext$1;->this$0:Lcom/stuv/ane/applifier/ExtensionContext;

    .line 25
    invoke-direct {p0}, Lcom/stuv/ane/applifier/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 6

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$1;->getBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 31
    .local v1, "debugMode":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$1;->getBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 32
    .local v2, "testMode":Ljava/lang/Boolean;
    # getter for: Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;
    invoke-static {}, Lcom/stuv/ane/applifier/ExtensionContext;->access$0()Lcom/stuv/ane/applifier/ApplifierWrapper;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/stuv/ane/applifier/ApplifierWrapper;->initialise(Ljava/lang/String;ZZ)V

    .line 33
    return-void
.end method
