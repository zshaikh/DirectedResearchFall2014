.class Lcom/stuv/ane/info/extensions/ExtensionContext$14;
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
    iput-object p1, p0, Lcom/stuv/ane/info/extensions/ExtensionContext$14;->this$0:Lcom/stuv/ane/info/extensions/ExtensionContext;

    .line 138
    invoke-direct {p0}, Lcom/stuv/ane/info/extensions/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$14;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stuv/ane/info/extensions/InfoWrapper;->getSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stuv/ane/info/extensions/ExtensionContext$14;->setResult(Ljava/lang/String;)V

    .line 143
    return-void
.end method
