.class public Lcom/android/a/aa;
.super Ljava/lang/Exception;
.source "ProGuard"


# instance fields
.field public final a:Lcom/android/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/aa;->a:Lcom/android/a/m;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/a/m;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/a/aa;->a:Lcom/android/a/m;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/aa;->a:Lcom/android/a/m;

    .line 47
    return-void
.end method
