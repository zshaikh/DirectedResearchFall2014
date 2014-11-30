.class Lcom/stuv/ane/w3i/W3iExtensionContext$5;
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
    iput-object p1, p0, Lcom/stuv/ane/w3i/W3iExtensionContext$5;->this$0:Lcom/stuv/ane/w3i/W3iExtensionContext;

    .line 76
    invoke-direct {p0}, Lcom/stuv/ane/w3i/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$5;->getString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "placement":Ljava/lang/String;
    invoke-static {v0}, Lcom/stuv/ane/w3i/W3iWrapper;->showPlacement(Ljava/lang/String;)V

    .line 83
    return-void
.end method
