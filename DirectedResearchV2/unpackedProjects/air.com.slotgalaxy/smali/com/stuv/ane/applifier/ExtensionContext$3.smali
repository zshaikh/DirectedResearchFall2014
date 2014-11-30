.class Lcom/stuv/ane/applifier/ExtensionContext$3;
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
    iput-object p1, p0, Lcom/stuv/ane/applifier/ExtensionContext$3;->this$0:Lcom/stuv/ane/applifier/ExtensionContext;

    .line 45
    invoke-direct {p0}, Lcom/stuv/ane/applifier/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "userId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$3;->getBool()Z

    move-result v0

    .line 51
    .local v0, "noOfferScreen":Z
    # getter for: Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;
    invoke-static {}, Lcom/stuv/ane/applifier/ExtensionContext;->access$0()Lcom/stuv/ane/applifier/ApplifierWrapper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/stuv/ane/applifier/ApplifierWrapper;->showImpact(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    return-void
.end method
