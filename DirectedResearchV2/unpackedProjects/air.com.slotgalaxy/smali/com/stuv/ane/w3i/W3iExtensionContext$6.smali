.class Lcom/stuv/ane/w3i/W3iExtensionContext$6;
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
    iput-object p1, p0, Lcom/stuv/ane/w3i/W3iExtensionContext$6;->this$0:Lcom/stuv/ane/w3i/W3iExtensionContext;

    .line 86
    invoke-direct {p0}, Lcom/stuv/ane/w3i/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/stuv/ane/w3i/W3iExtensionContext$6;->getInt()I

    move-result v0

    .line 91
    .local v0, "actionId":I
    invoke-static {v0}, Lcom/stuv/ane/w3i/W3iWrapper;->actionTaken(I)V

    .line 92
    return-void
.end method
