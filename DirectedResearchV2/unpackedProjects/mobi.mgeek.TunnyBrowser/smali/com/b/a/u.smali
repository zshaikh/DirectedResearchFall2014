.class Lcom/b/a/u;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/q;


# direct methods
.method constructor <init>(Lcom/b/a/q;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/b/a/u;->b:Lcom/b/a/q;

    iput-object p2, p0, Lcom/b/a/u;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/b/a/u;->b:Lcom/b/a/q;

    iget-object v0, v0, Lcom/b/a/q;->e:Lcom/b/a/c/a;

    iget-object v1, p0, Lcom/b/a/u;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/a;->a(Ljava/io/IOException;)V

    .line 524
    return-void
.end method
