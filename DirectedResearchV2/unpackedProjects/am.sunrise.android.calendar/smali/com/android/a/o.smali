.class Lcom/android/a/o;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 3

    .prologue
    .line 727
    invoke-static {}, Lcom/android/a/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 728
    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FREQ value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/android/a/b;->b:I

    .line 732
    const/4 v0, 0x1

    return v0
.end method