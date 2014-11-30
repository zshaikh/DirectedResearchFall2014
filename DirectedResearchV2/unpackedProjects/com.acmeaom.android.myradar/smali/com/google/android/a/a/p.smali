.class public Lcom/google/android/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:J


# direct methods
.method private constructor <init>(Lcom/google/android/a/a/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/a/a/r;->a(Lcom/google/android/a/a/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/p;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/a/a/r;->b(Lcom/google/android/a/a/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/a/a/r;->c(Lcom/google/android/a/a/r;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/p;->e:D

    invoke-static {p1}, Lcom/google/android/a/a/r;->d(Lcom/google/android/a/a/r;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/p;->f:J

    invoke-static {p1}, Lcom/google/android/a/a/r;->e(Lcom/google/android/a/a/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/p;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/a/a/r;->f(Lcom/google/android/a/a/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/p;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/a/a/r;Lcom/google/android/a/a/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/a/a/p;-><init>(Lcom/google/android/a/a/r;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/a/p;->e:D

    return-wide v0
.end method

.method f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/a/p;->f:J

    return-wide v0
.end method
