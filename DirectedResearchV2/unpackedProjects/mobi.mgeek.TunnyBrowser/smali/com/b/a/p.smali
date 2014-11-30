.class Lcom/b/a/p;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/n;


# direct methods
.method constructor <init>(Lcom/b/a/n;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/b/a/p;->b:Lcom/b/a/n;

    iput-object p2, p0, Lcom/b/a/p;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/b/a/p;->b:Lcom/b/a/n;

    iget-object v0, v0, Lcom/b/a/n;->d:Lcom/b/a/c/c;

    iget-object v1, p0, Lcom/b/a/p;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/c;->a(Ljava/io/IOException;)V

    .line 452
    return-void
.end method
