.class Lcom/b/a/g;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/e;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/b/a/g;->b:Lcom/b/a/e;

    iput-object p2, p0, Lcom/b/a/g;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/b/a/g;->b:Lcom/b/a/e;

    iget-object v0, v0, Lcom/b/a/e;->b:Lcom/b/a/c/d;

    iget-object v1, p0, Lcom/b/a/g;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/d;->a(Ljava/io/IOException;)V

    .line 332
    return-void
.end method
