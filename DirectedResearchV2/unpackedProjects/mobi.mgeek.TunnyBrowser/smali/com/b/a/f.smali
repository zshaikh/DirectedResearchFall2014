.class Lcom/b/a/f;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/d/f;

.field final synthetic b:Lcom/b/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/e;Lcom/b/a/d/f;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/b/a/f;->b:Lcom/b/a/e;

    iput-object p2, p0, Lcom/b/a/f;->a:Lcom/b/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/b/a/f;->b:Lcom/b/a/e;

    iget-object v0, v0, Lcom/b/a/e;->b:Lcom/b/a/c/d;

    iget-object v1, p0, Lcom/b/a/f;->a:Lcom/b/a/d/f;

    invoke-virtual {v1}, Lcom/b/a/d/f;->a()Lcom/b/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/f;->a:Lcom/b/a/d/f;

    invoke-virtual {v2}, Lcom/b/a/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/d;->a(Lcom/b/a/a/d;Ljava/lang/String;)V

    .line 323
    return-void
.end method
