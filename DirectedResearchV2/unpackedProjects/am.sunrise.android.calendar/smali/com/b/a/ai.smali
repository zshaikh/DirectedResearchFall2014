.class Lcom/b/a/ai;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/b/a/ah;


# direct methods
.method constructor <init>(Lcom/b/a/ah;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/b/a/ai;->b:Lcom/b/a/ah;

    iput-object p2, p0, Lcom/b/a/ai;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/b/a/ai;->a:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
