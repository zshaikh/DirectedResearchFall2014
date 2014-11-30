.class Lcom/facebook/orca/cache/PendingSendMessage$2;
.super Ljava/lang/Object;
.source "PendingSendMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/cache/PendingSendMessage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/orca/cache/PendingSendMessage$2;->a:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/orca/cache/PendingSendMessage$2;->a:Lcom/facebook/orca/cache/PendingSendMessage;

    invoke-static {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->c(Lcom/facebook/orca/cache/PendingSendMessage;)V

    .line 285
    return-void
.end method
