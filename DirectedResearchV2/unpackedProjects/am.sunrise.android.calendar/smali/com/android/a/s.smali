.class abstract Lcom/android/a/s;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IIZ)I
    .locals 3

    .prologue
    .line 681
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 683
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 685
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 686
    if-lt v0, p1, :cond_1

    if-gt v0, p2, :cond_1

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 687
    :cond_1
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid integer value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_2
    return v0
.end method

.method public static b(Ljava/lang/String;IIZ)[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 708
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 710
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 711
    invoke-static {p0, p1, p2, p3}, Lcom/android/a/s;->a(Ljava/lang/String;IIZ)I

    move-result v2

    aput v2, v0, v1

    .line 720
    :cond_0
    return-object v0

    .line 713
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 714
    array-length v3, v2

    .line 715
    new-array v0, v3, [I

    .line 716
    :goto_0
    if-ge v1, v3, :cond_0

    .line 717
    aget-object v4, v2, v1

    invoke-static {v4, p1, p2, p3}, Lcom/android/a/s;->a(Ljava/lang/String;IIZ)I

    move-result v4

    aput v4, v0, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/android/a/b;)I
.end method
