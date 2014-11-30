.class Lcom/b/a/m;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/k;


# direct methods
.method constructor <init>(Lcom/b/a/k;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/b/a/m;->b:Lcom/b/a/k;

    iput-object p2, p0, Lcom/b/a/m;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/b/a/m;->b:Lcom/b/a/k;

    iget-object v0, v0, Lcom/b/a/k;->b:Lcom/b/a/c/f;

    iget-object v1, p0, Lcom/b/a/m;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/f;->a(Ljava/io/IOException;)V

    .line 408
    return-void
.end method
