.class public final Lcom/flurry/android/monolithic/sdk/impl/sy;
.super Lcom/flurry/android/monolithic/sdk/impl/sw;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/sw;

.field protected final j:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/sw;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;)V

    .line 734
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->i:Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 735
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->j:Ljava/lang/reflect/Constructor;

    .line 736
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sy;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/sy;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 741
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/sy;->i:Lcom/flurry/android/monolithic/sdk/impl/sw;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->i:Lcom/flurry/android/monolithic/sdk/impl/sw;

    .line 742
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/sy;->j:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->j:Ljava/lang/reflect/Constructor;

    .line 743
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sy;->b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 769
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->f:Lcom/flurry/android/monolithic/sdk/impl/tb;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 782
    :goto_0
    invoke-virtual {p0, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/sy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->f:Lcom/flurry/android/monolithic/sdk/impl/tb;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/tb;->a(Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->e:Lcom/flurry/android/monolithic/sdk/impl/rw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->j:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 780
    :goto_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->j:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v3

    .line 778
    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->i:Lcom/flurry/android/monolithic/sdk/impl/sw;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/sy;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sy;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sy;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sy;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sy;->i:Lcom/flurry/android/monolithic/sdk/impl/sw;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/sw;->b()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v0

    return-object v0
.end method
