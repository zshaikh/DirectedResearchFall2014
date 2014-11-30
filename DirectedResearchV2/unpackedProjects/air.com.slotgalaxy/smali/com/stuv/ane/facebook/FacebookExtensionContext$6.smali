.class Lcom/stuv/ane/facebook/FacebookExtensionContext$6;
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
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookExtensionContext$6;->this$0:Lcom/stuv/ane/facebook/FacebookExtensionContext;

    .line 62
    invoke-direct {p0}, Lcom/stuv/ane/facebook/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$6;->getString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$6;->getString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "json":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
