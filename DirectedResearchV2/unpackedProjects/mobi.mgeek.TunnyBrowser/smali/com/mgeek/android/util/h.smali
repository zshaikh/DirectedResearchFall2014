.class public abstract Lcom/mgeek/android/util/h;
.super Ljava/lang/Object;
.source "DataSyncTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/ConditionVariable;

.field private c:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    .line 23
    const/4 v0, -0x2

    iput v0, p0, Lcom/mgeek/android/util/h;->c:I

    .line 19
    iput-object p1, p0, Lcom/mgeek/android/util/h;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/mgeek/android/util/h;->c:I

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public a(Lorg/json/JSONArray;[Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public a(Lorg/json/JSONObject;[Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mgeek/android/util/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mgeek/android/util/h;->c:I

    return v0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 55
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 61
    :cond_0
    return-void
.end method

.method final i()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/util/h;->b:Landroid/os/ConditionVariable;

    .line 67
    :cond_0
    const/4 v0, -0x2

    iget v1, p0, Lcom/mgeek/android/util/h;->c:I

    if-ne v0, v1, :cond_1

    .line 68
    const/4 v0, -0x3

    iput v0, p0, Lcom/mgeek/android/util/h;->c:I

    .line 70
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mgeek/android/util/h;->a:Ljava/lang/String;

    return-object v0
.end method
