.class public Lcom/android/a/t;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/android/a/c;

.field public final c:Lcom/android/a/aa;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/a/aa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/t;->d:Z

    .line 81
    iput-object v1, p0, Lcom/android/a/t;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/android/a/t;->b:Lcom/android/a/c;

    .line 83
    iput-object p1, p0, Lcom/android/a/t;->c:Lcom/android/a/aa;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/a/c;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/a/t;->d:Z

    .line 75
    iput-object p1, p0, Lcom/android/a/t;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/android/a/t;->b:Lcom/android/a/c;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/t;->c:Lcom/android/a/aa;

    .line 78
    return-void
.end method

.method public static a(Lcom/android/a/aa;)Lcom/android/a/t;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/a/t;

    invoke-direct {v0, p0}, Lcom/android/a/t;-><init>(Lcom/android/a/aa;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/a/c;)Lcom/android/a/t;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/a/t;

    invoke-direct {v0, p0, p1}, Lcom/android/a/t;-><init>(Ljava/lang/Object;Lcom/android/a/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/a/t;->c:Lcom/android/a/aa;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
