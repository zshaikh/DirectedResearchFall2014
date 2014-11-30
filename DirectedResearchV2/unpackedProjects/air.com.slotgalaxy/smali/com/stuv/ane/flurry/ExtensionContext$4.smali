.class Lcom/stuv/ane/flurry/ExtensionContext$4;
.super Lcom/stuv/ane/flurry/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/flurry/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/flurry/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/flurry/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/flurry/ExtensionContext$4;->this$0:Lcom/stuv/ane/flurry/ExtensionContext;

    .line 67
    invoke-direct {p0}, Lcom/stuv/ane/flurry/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$4;->getString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "errorId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/flurry/ExtensionContext$4;->getString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "message":Ljava/lang/String;
    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
