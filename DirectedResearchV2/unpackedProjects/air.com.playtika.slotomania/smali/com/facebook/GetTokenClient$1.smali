.class Lcom/facebook/GetTokenClient$1;
.super Landroid/os/Handler;
.source "GetTokenClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GetTokenClient;


# direct methods
.method constructor <init>(Lcom/facebook/GetTokenClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GetTokenClient$1;->this$0:Lcom/facebook/GetTokenClient;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/GetTokenClient$1;->this$0:Lcom/facebook/GetTokenClient;

    # invokes: Lcom/facebook/GetTokenClient;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/facebook/GetTokenClient;->access$0(Lcom/facebook/GetTokenClient;Landroid/os/Message;)V

    .line 44
    return-void
.end method
