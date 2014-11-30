.class public Landroid/support/g;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field a:[B

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/g;->a:[B

    return-void
.end method

.method private a([BI)J
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 31
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 32
    aget-byte v0, p1, p2

    if-lt v0, v2, :cond_1

    aget-byte v0, p1, p2

    if-gt v0, v3, :cond_1

    .line 34
    add-int/lit8 v0, p2, 0x1

    .line 36
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    if-lt v1, v2, :cond_0

    aget-byte v1, p1, v0

    if-gt v1, v3, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p2

    invoke-direct {v1, p1, v2, p2, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 44
    :goto_2
    return-wide v0

    .line 42
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 44
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method private a([BILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 19
    add-int v1, p2, v2

    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 22
    :goto_1
    if-ge v1, v2, :cond_2

    .line 23
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 53
    const-wide/16 v3, 0x0

    :try_start_0
    iput-wide v3, p0, Landroid/support/g;->b:J

    .line 54
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/g;->c:J

    .line 55
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/support/g;->d:J

    .line 56
    new-instance v1, Ljava/io/FileInputStream;

    const-string v3, "/proc/meminfo"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Landroid/support/g;->a:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 58
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 59
    iget-object v1, p0, Landroid/support/g;->a:[B

    array-length v4, v1

    move v1, v0

    .line 61
    :goto_0
    if-ge v0, v3, :cond_4

    const/4 v5, 0x3

    if-ge v1, v5, :cond_4

    .line 62
    iget-object v5, p0, Landroid/support/g;->a:[B

    const-string v6, "MemTotal"

    invoke-direct {p0, v5, v0, v6}, Landroid/support/g;->a([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    add-int/lit8 v0, v0, 0x8

    .line 64
    iget-object v5, p0, Landroid/support/g;->a:[B

    invoke-direct {p0, v5, v0}, Landroid/support/g;->a([BI)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/support/g;->b:J

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 75
    :cond_0
    :goto_1
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Landroid/support/g;->a:[B

    aget-byte v5, v5, v0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1
    iget-object v5, p0, Landroid/support/g;->a:[B

    const-string v6, "MemFree"

    invoke-direct {p0, v5, v0, v6}, Landroid/support/g;->a([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    add-int/lit8 v0, v0, 0x7

    .line 68
    iget-object v5, p0, Landroid/support/g;->a:[B

    invoke-direct {p0, v5, v0}, Landroid/support/g;->a([BI)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/support/g;->c:J

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_2
    iget-object v5, p0, Landroid/support/g;->a:[B

    const-string v6, "Cached"

    invoke-direct {p0, v5, v0, v6}, Landroid/support/g;->a([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    add-int/lit8 v0, v0, 0x6

    .line 72
    iget-object v5, p0, Landroid/support/g;->a:[B

    invoke-direct {p0, v5, v0}, Landroid/support/g;->a([BI)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/support/g;->d:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 84
    :goto_2
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 82
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 80
    :catch_1
    move-exception v0

    .line 82
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/support/g;->b:J

    return-wide v0
.end method
