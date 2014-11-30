.class Lcom/stuv/ane/apsalar/ExtensionContext$2;
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
    iput-object p1, p0, Lcom/stuv/ane/apsalar/ExtensionContext$2;->this$0:Lcom/stuv/ane/apsalar/ExtensionContext;

    .line 30
    invoke-direct {p0}, Lcom/stuv/ane/apsalar/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/stuv/ane/apsalar/ExtensionContext$2;->getString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "eventName":Ljava/lang/String;
    invoke-static {v0}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;)V

    .line 36
    return-void
.end method
