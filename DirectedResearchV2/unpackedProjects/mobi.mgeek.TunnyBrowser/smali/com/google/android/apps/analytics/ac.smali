.class public Lcom/google/android/apps/analytics/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/ae;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/ae;->a(Lcom/google/android/apps/analytics/ae;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/ac;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/ae;->b(Lcom/google/android/apps/analytics/ae;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/ac;->c:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/ae;->c(Lcom/google/android/apps/analytics/ae;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/ac;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/ae;->d(Lcom/google/android/apps/analytics/ae;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/ac;->d:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/ae;->e(Lcom/google/android/apps/analytics/ae;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/ac;->e:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/ae;Lcom/google/android/apps/analytics/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/ac;-><init>(Lcom/google/android/apps/analytics/ae;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->c:D

    return-wide v0
.end method

.method d()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->d:D

    return-wide v0
.end method

.method e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ac;->e:D

    return-wide v0
.end method
