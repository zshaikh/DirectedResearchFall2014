.class Lcom/nativex/monetization/mraid/MRAIDContainer$3;
.super Ljava/lang/Object;
.source "MRAIDContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field final synthetic val$commandWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

.field final synthetic val$instance:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDContainer;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$3;->val$commandWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$3;->val$instance:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$3;->val$commandWebView:Lcom/nativex/monetization/mraid/MRAIDWebView;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDContainer$3;->val$instance:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V

    .line 1252
    return-void
.end method
