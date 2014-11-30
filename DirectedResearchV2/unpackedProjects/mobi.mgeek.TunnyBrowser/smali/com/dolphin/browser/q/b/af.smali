.class public Lcom/dolphin/browser/q/b/af;
.super Ljava/lang/Exception;
.source "EvernoteError.java"


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/Throwable;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/Throwable;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/q/b/af;->b:I

    .line 12
    iput-object p1, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    .line 13
    iput p2, p0, Lcom/dolphin/browser/q/b/af;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    iget v0, p0, Lcom/dolphin/browser/q/b/af;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const-string v0, " >>>>>EvernoteException()<<<<< "

    .line 36
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v0, " >>>>>EvernoteException(%s)<<<<< %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    const-string v0, " >>>>>EvernoteException()<<<<< "

    goto :goto_0

    :cond_2
    const-string v0, " >>>>>EvernoteException(%s, error code: %s)<<<<< %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/dolphin/browser/q/b/af;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/dolphin/browser/q/b/af;->a:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
