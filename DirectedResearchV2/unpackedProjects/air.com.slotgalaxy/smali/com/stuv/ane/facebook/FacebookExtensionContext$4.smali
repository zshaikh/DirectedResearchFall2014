.class Lcom/stuv/ane/facebook/FacebookExtensionContext$4;
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
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookExtensionContext$4;->this$0:Lcom/stuv/ane/facebook/FacebookExtensionContext;

    .line 42
    invoke-direct {p0}, Lcom/stuv/ane/facebook/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/stuv/ane/facebook/FacebookWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$4;->setResult(Ljava/lang/String;)V

    .line 47
    return-void
.end method
