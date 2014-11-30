.class Lcom/stuv/ane/applifier/ExtensionContext$4;
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
    iput-object p1, p0, Lcom/stuv/ane/applifier/ExtensionContext$4;->this$0:Lcom/stuv/ane/applifier/ExtensionContext;

    .line 55
    invoke-direct {p0}, Lcom/stuv/ane/applifier/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/stuv/ane/applifier/ExtensionContext$4;->getString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "itemKey":Ljava/lang/String;
    # getter for: Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;
    invoke-static {}, Lcom/stuv/ane/applifier/ExtensionContext;->access$0()Lcom/stuv/ane/applifier/ApplifierWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stuv/ane/applifier/ApplifierWrapper;->setItemKey(Ljava/lang/String;)V

    .line 61
    return-void
.end method
