.class Lcom/stuv/ane/info/extensions/ExtensionContext$13;
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
    iput-object p1, p0, Lcom/stuv/ane/info/extensions/ExtensionContext$13;->this$0:Lcom/stuv/ane/info/extensions/ExtensionContext;

    .line 130
    invoke-direct {p0}, Lcom/stuv/ane/info/extensions/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/stuv/ane/info/extensions/ExtensionContext$13;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stuv/ane/info/extensions/InfoWrapper;->clearSharedPref(Ljava/lang/String;)V

    .line 135
    return-void
.end method
