.class Lcom/b/a/j;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/b/a/h;


# direct methods
.method constructor <init>(Lcom/b/a/h;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/b/a/j;->b:Lcom/b/a/h;

    iput-object p2, p0, Lcom/b/a/j;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/b/a/j;->b:Lcom/b/a/h;

    iget-object v0, v0, Lcom/b/a/h;->b:Lcom/b/a/c/b;

    iget-object v1, p0, Lcom/b/a/j;->a:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/b/a/c/b;->a(Ljava/io/IOException;)V

    .line 370
    return-void
.end method
