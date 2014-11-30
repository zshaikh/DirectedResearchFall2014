.class Lcom/android/a/n;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 754
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v3}, Lcom/android/a/n;->a(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/android/a/b;->d:I

    .line 755
    iget v0, p2, Lcom/android/a/b;->d:I

    if-gez v0, :cond_0

    .line 756
    invoke-static {}, Lcom/android/a/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Count. Forcing COUNT to 1 from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput v3, p2, Lcom/android/a/b;->d:I

    .line 759
    :cond_0
    const/4 v0, 0x4

    return v0
.end method
