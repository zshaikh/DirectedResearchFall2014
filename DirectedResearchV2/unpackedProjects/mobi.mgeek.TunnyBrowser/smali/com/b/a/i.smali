.class Lcom/b/a/i;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/d/f;

.field final synthetic b:Lcom/b/a/h;


# direct methods
.method constructor <init>(Lcom/b/a/h;Lcom/b/a/d/f;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/b/a/i;->b:Lcom/b/a/h;

    iput-object p2, p0, Lcom/b/a/i;->a:Lcom/b/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/b/a/i;->b:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->b:Lcom/b/a/c/b;

    iget-object v1, p0, Lcom/b/a/i;->a:Lcom/b/a/d/f;

    invoke-virtual {v1}, Lcom/b/a/d/f;->a()Lcom/b/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/i;->a:Lcom/b/a/d/f;

    invoke-virtual {v2}, Lcom/b/a/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/b;->a(Lcom/b/a/a/d;Ljava/lang/String;)V

    .line 361
    return-void
.end method
