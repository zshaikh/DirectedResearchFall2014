.class Lcom/b/a/r;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/d/d;

.field final synthetic b:Lcom/b/a/q;


# direct methods
.method constructor <init>(Lcom/b/a/q;Lcom/b/a/d/d;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/b/a/r;->b:Lcom/b/a/q;

    iput-object p2, p0, Lcom/b/a/r;->a:Lcom/b/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/b/a/r;->b:Lcom/b/a/q;

    iget-object v0, v0, Lcom/b/a/q;->e:Lcom/b/a/c/a;

    iget-object v1, p0, Lcom/b/a/r;->a:Lcom/b/a/d/d;

    invoke-virtual {v1}, Lcom/b/a/d/d;->a()Lcom/b/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/r;->a:Lcom/b/a/d/d;

    invoke-virtual {v2}, Lcom/b/a/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/a;->a(Lcom/b/a/a/a;Ljava/lang/String;)V

    .line 497
    return-void
.end method
