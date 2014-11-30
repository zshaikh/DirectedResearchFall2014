.class Lorg/c/a/a/q;
.super Lorg/c/a/a/j;
.source "HttpDestination.java"


# instance fields
.field final synthetic a:Lorg/c/a/a/o;

.field private final g:Lorg/c/a/a/z;

.field private final h:Lorg/c/a/a/t;


# direct methods
.method public constructor <init>(Lorg/c/a/a/o;Lorg/c/a/a/f;Lorg/c/a/a/z;Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 681
    iput-object p1, p0, Lorg/c/a/a/q;->a:Lorg/c/a/a/o;

    invoke-direct {p0}, Lorg/c/a/a/j;-><init>()V

    .line 682
    iput-object p3, p0, Lorg/c/a/a/q;->g:Lorg/c/a/a/z;

    .line 683
    iput-object p4, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    .line 684
    const-string v0, "CONNECT"

    invoke-virtual {p0, v0}, Lorg/c/a/a/q;->c(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p4}, Lorg/c/a/a/t;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/q;->b(I)V

    .line 686
    invoke-virtual {p2}, Lorg/c/a/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-virtual {p0, v0}, Lorg/c/a/a/q;->d(Ljava/lang/String;)V

    .line 688
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lorg/c/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "Proxy-Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Lorg/c/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "User-Agent"

    const-string v1, "Jetty-Client"

    invoke-virtual {p0, v0, v1}, Lorg/c/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/c/a/a/q;->a:Lorg/c/a/a/o;

    invoke-virtual {v0, p1}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    .line 715
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lorg/c/a/a/q;->d()I

    move-result v0

    .line 697
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lorg/c/a/a/q;->g:Lorg/c/a/a/z;

    invoke-virtual {v0}, Lorg/c/a/a/z;->a()V

    .line 709
    :goto_0
    return-void

    .line 701
    :cond_0
    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_1

    .line 703
    invoke-virtual {p0}, Lorg/c/a/a/q;->c()V

    goto :goto_0

    .line 707
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/c/a/a/q;->g:Lorg/c/a/a/z;

    invoke-virtual {v3}, Lorg/c/a/a/z;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/c/a/a/q;->g:Lorg/c/a/a/z;

    invoke-virtual {v3}, Lorg/c/a/a/z;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t return http return code 200, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while trying to request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    invoke-virtual {v2}, Lorg/c/a/a/t;->l()Lorg/c/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/c/a/a/q;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lorg/c/a/a/q;->a:Lorg/c/a/a/o;

    invoke-static {v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/o;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 723
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lorg/c/a/a/q;->a:Lorg/c/a/a/o;

    invoke-static {v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/o;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 729
    iget-object v0, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/c/a/a/q;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/r;->e()V

    .line 731
    :cond_0
    return-void
.end method
