.class Ldolphin/webkit/ViewStateSerializer;
.super Ljava/lang/Object;
.source "ViewStateSerializer.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ldolphin/webkit/jp;)Z
    .locals 3

    .prologue
    .line 41
    iget v0, p1, Ldolphin/webkit/jp;->a:I

    .line 42
    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    iget-object v2, p1, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget-object v2, p1, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Ldolphin/webkit/ViewStateSerializer;->nativeSerializeViewState(ILjava/io/OutputStream;[B)Z

    move-result v0

    goto :goto_0
.end method

.method private static native nativeDeserializeViewState(ILjava/io/InputStream;[B)I
.end method

.method private static native nativeSerializeViewState(ILjava/io/OutputStream;[B)Z
.end method
