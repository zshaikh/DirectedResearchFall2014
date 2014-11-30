.class Lcom/stuv/ane/facebook/FacebookExtensionContext$5;
.super Lcom/stuv/ane/facebook/BasicFunction;
.source "FacebookExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/facebook/FacebookExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/facebook/FacebookExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/facebook/FacebookExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;->this$0:Lcom/stuv/ane/facebook/FacebookExtensionContext;

    .line 50
    invoke-direct {p0}, Lcom/stuv/ane/facebook/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;->getString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "graphPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;->getString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "json":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;->getBool()Z

    move-result v3

    .line 57
    .local v3, "usePost":Z
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$5;->getInt()I

    move-result v2

    .line 58
    .local v2, "requestId":I
    invoke-static {v0, v1, v3, v2}, Lcom/stuv/ane/facebook/FacebookWrapper;->graph(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 59
    return-void
.end method
