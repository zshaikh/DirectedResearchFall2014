.class Lcom/stuv/ane/info/extensions/ExtensionContext$3;
.super Lcom/stuv/ane/info/extensions/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/info/extensions/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/info/extensions/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/info/extensions/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/info/extensions/ExtensionContext$3;->this$0:Lcom/stuv/ane/info/extensions/ExtensionContext;

    .line 49
    invoke-direct {p0}, Lcom/stuv/ane/info/extensions/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/stuv/ane/info/extensions/InfoWrapper;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stuv/ane/info/extensions/ExtensionContext$3;->setResult(Ljava/lang/String;)V

    .line 54
    return-void
.end method
