.class Lcom/b/a/c;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/d/e;

.field final synthetic b:Lcom/b/a/b;


# direct methods
.method constructor <init>(Lcom/b/a/b;Lcom/b/a/d/e;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/b/a/c;->b:Lcom/b/a/b;

    iput-object p2, p0, Lcom/b/a/c;->a:Lcom/b/a/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/b/a/c;->b:Lcom/b/a/b;

    iget-object v0, v0, Lcom/b/a/b;->a:Lcom/b/a/c/e;

    iget-object v1, p0, Lcom/b/a/c;->a:Lcom/b/a/d/e;

    invoke-virtual {v1}, Lcom/b/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/c;->a:Lcom/b/a/d/e;

    invoke-virtual {v2}, Lcom/b/a/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method
