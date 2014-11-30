.class final Lcom/facebook/AppLinkData$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AppLinkData$2;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/AppLinkData$2;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    return-void
.end method
