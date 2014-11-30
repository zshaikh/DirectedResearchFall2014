.class public Lcom/flurry/android/monolithic/sdk/impl/xe;
.super Lcom/flurry/android/monolithic/sdk/impl/qw;
.source "SourceFile"


# instance fields
.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/ot;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;)V

    .line 37
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/xe;->c:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/xe;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/xe;
    .locals 5

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 47
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 52
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), not marked as ignorable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/xe;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ow;->i()Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/xe;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/xe;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-object v3

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
