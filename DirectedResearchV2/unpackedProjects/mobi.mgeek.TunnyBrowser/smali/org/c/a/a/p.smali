.class Lorg/c/a/a/p;
.super Ljava/io/IOException;
.source "HttpDestination.java"


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lorg/c/a/a/o;


# direct methods
.method constructor <init>(Lorg/c/a/a/o;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 486
    iput-object p1, p0, Lorg/c/a/a/p;->b:Lorg/c/a/a/o;

    iput-object p3, p0, Lorg/c/a/a/p;->a:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lorg/c/a/a/p;->a:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lorg/c/a/a/p;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
