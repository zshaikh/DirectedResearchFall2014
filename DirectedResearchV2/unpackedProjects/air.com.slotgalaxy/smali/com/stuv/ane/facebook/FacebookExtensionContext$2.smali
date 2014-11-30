.class Lcom/stuv/ane/facebook/FacebookExtensionContext$2;
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
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookExtensionContext$2;->this$0:Lcom/stuv/ane/facebook/FacebookExtensionContext;

    .line 25
    invoke-direct {p0}, Lcom/stuv/ane/facebook/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/FacebookExtensionContext$2;->getString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "readPermissions":Ljava/lang/String;
    invoke-static {v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->authorise(Ljava/lang/String;)V

    .line 31
    return-void
.end method
