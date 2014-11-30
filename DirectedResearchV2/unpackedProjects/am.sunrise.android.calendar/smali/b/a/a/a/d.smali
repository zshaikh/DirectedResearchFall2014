.class public Lb/a/a/a/d;
.super Ljava/lang/Object;
.source "ResourceZoneInfoProvider.java"

# interfaces
.implements Lc/a/a/e/k;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "ZoneInfoMap"

    invoke-direct {p0, v0}, Lb/a/a/a/d;->b(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/d;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/d;->b:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    :try_start_0
    invoke-static {v1, v0}, Lb/a/a/a/d;->a(Ljava/io/DataInputStream;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_0
    const-string v1, "UTC"

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lc/a/a/i;->a:Lc/a/a/i;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :goto_1
    throw v0

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lb/a/a/a/d;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private static a(Ljava/io/DataInputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 188
    new-array v3, v2, [Ljava/lang/String;

    move v1, v0

    .line 189
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 195
    :goto_1
    if-ge v0, v1, :cond_1

    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aget-object v4, v3, v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt zone info map"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 109
    sget-object v0, Lb/a/a/a/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need to call ResourceZoneInfoProvider.init() before using joda-time-android"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-static {p1}, Lb/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-class v1, Lb/a/a/a/b;

    invoke-static {v1, v0}, Lb/a/a/a/c;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    .line 116
    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (resName: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    sget-object v0, Lb/a/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lc/a/a/i;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 132
    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lb/a/a/a/d;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 135
    :try_start_1
    invoke-static {v2, p1}, Lc/a/a/e/c;->a(Ljava/io/InputStream;Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    .line 136
    iget-object v3, p0, Lb/a/a/a/d;->b:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    if-eqz v2, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 140
    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lb/a/a/a/d;->a(Ljava/lang/Exception;)V

    .line 141
    iget-object v0, p0, Lb/a/a/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    if-eqz v2, :cond_1

    .line 147
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    move-object v0, v1

    .line 151
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 146
    :goto_3
    if-eqz v2, :cond_2

    .line 147
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 151
    :cond_2
    :goto_4
    throw v0

    .line 150
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 145
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 139
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lc/a/a/i;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p1, :cond_1

    move-object v0, v1

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lb/a/a/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    invoke-direct {p0, p1}, Lb/a/a/a/d;->c(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_3
    instance-of v1, v0, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_4

    .line 67
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/i;

    .line 69
    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lb/a/a/a/d;->c(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lb/a/a/a/d;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lb/a/a/a/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    return-void
.end method
