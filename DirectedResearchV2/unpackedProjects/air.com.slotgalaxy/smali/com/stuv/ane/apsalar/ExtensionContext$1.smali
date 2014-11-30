.class Lcom/stuv/ane/apsalar/ExtensionContext$1;
.super Lcom/stuv/ane/apsalar/BasicFunction;
.source "ExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/apsalar/ExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/apsalar/ExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/apsalar/ExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/apsalar/ExtensionContext$1;->this$0:Lcom/stuv/ane/apsalar/ExtensionContext;

    .line 20
    invoke-direct {p0}, Lcom/stuv/ane/apsalar/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/stuv/ane/apsalar/ExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "apiKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/apsalar/ExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "secret":Ljava/lang/String;
    iget-object v2, p0, Lcom/stuv/ane/apsalar/ExtensionContext$1;->this$0:Lcom/stuv/ane/apsalar/ExtensionContext;

    invoke-virtual {v2}, Lcom/stuv/ane/apsalar/ExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/apsalar/sdk/Apsalar;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
