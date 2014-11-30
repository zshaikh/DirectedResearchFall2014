.class public Lcom/flurry/android/monolithic/sdk/impl/zc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/reflect/Method;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/abl;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xl;Lcom/flurry/android/monolithic/sdk/impl/abl;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->a:Ljava/lang/reflect/Method;

    .line 27
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->b:Lcom/flurry/android/monolithic/sdk/impl/abl;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->b:Lcom/flurry/android/monolithic/sdk/impl/abl;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/abl;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 38
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value returned by \'any-getter\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "()) not java.util.Map but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zc;->b:Lcom/flurry/android/monolithic/sdk/impl/abl;

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object p0, v0

    invoke-virtual {v2, p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/abl;->b(Ljava/util/Map;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0
.end method
