.class final Lcom/flurry/android/cm;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;)V
    .locals 0

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs ar()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2081
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v1}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2088
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 2092
    const v2, 0xb5fa

    if-ne v0, v2, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryAds;->b(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2098
    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2112
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->b(Lcom/flurry/android/FlurryAds;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/flurry/android/cm;->ee:Lcom/flurry/android/FlurryAds;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    .line 2115
    if-nez v0, :cond_1

    :cond_1
    :goto_1
    move-object v0, v4

    .line 2142
    :goto_2
    return-object v0

    .line 2101
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 2103
    :goto_3
    :try_start_5
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2107
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 2139
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    .line 2142
    goto :goto_2

    .line 2107
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2125
    :catch_2
    move-exception v0

    .line 2127
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 2107
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2101
    :catch_3
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2074
    invoke-direct {p0}, Lcom/flurry/android/cm;->ar()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
