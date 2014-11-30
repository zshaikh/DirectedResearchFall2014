.class Lcom/stuv/ane/w3i/W3iExtensionContext$1;
.super Lcom/stuv/ane/w3i/BasicFunction;
.source "W3iExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/w3i/W3iExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/w3i/W3iExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/w3i/W3iExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/w3i/W3iExtensionContext$1;->this$0:Lcom/stuv/ane/w3i/W3iExtensionContext;

    .line 34
    invoke-direct {p0}, Lcom/stuv/ane/w3i/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$1;->getInt()I

    move-result v0

    .line 39
    .local v0, "appId":I
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "appPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$1;->getString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/stuv/ane/w3i/W3iWrapper;->initialise(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
