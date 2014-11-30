.class Lcom/stuv/ane/applifier/ExtensionContext$2;
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
    iput-object p1, p0, Lcom/stuv/ane/applifier/ExtensionContext$2;->this$0:Lcom/stuv/ane/applifier/ExtensionContext;

    .line 36
    invoke-direct {p0}, Lcom/stuv/ane/applifier/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 40
    # getter for: Lcom/stuv/ane/applifier/ExtensionContext;->_wrapper:Lcom/stuv/ane/applifier/ApplifierWrapper;
    invoke-static {}, Lcom/stuv/ane/applifier/ExtensionContext;->access$0()Lcom/stuv/ane/applifier/ApplifierWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stuv/ane/applifier/ApplifierWrapper;->changeActivity()V

    .line 41
    return-void
.end method
