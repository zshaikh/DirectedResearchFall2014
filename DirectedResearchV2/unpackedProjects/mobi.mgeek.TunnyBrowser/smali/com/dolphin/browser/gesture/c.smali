.class final Lcom/dolphin/browser/gesture/c;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dolphin/browser/gesture/Gesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 7

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 340
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    :try_start_0
    invoke-static {v3}, Lcom/dolphin/browser/gesture/Gesture;->a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/Gesture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 348
    invoke-static {v3}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 351
    :goto_0
    if-eqz v0, :cond_0

    .line 352
    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/gesture/Gesture;->a(Lcom/dolphin/browser/gesture/Gesture;J)J

    .line 355
    :cond_0
    return-object v0

    .line 345
    :catch_0
    move-exception v4

    .line 346
    :try_start_1
    const-string v5, "Gestures"

    const-string v6, "Error reading Gesture from parcel:"

    invoke-static {v5, v6, v4}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    invoke-static {v3}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(I)[Lcom/dolphin/browser/gesture/Gesture;
    .locals 1

    .prologue
    .line 359
    new-array v0, p1, [Lcom/dolphin/browser/gesture/Gesture;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/c;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/c;->a(I)[Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method
