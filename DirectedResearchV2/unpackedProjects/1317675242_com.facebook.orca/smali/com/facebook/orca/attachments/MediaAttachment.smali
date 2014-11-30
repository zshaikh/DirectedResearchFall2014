.class public abstract Lcom/facebook/orca/attachments/MediaAttachment;
.super Ljava/lang/Object;
.source "MediaAttachment.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/attachments/MediaResource;

.field private final d:Lcom/facebook/orca/images/ImageScalingUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "orca:MediaAttachment"

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->a:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    .line 37
    new-instance v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-direct {v0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    .line 38
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;
    .locals 6

    .prologue
    .line 224
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 228
    new-instance v3, Lcom/facebook/orca/protocol/base/ByteArrayBody;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "image/jpeg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/orca/protocol/base/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private g()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    const/16 v1, 0x258

    invoke-virtual {v0, p0, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    const-string v1, "orca:MediaAttachment"

    const-string v2, "Unable to read the original bitmap"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Unexpected attachment type"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 139
    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/orca/attachments/MediaAttachment;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    move-object v0, v2

    .line 118
    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    if-nez v0, :cond_1

    .line 127
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Unable to generate a thumbnail for the video"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 128
    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, v2

    .line 135
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract a()Ljava/io/InputStream;
.end method

.method public abstract b()Lcom/google/common/io/InputSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public e()Lcom/facebook/orca/protocol/base/ContentBody;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Unexpected attachment type"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 174
    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/orca/attachments/MediaAttachment;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    move-object v0, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    const/16 v2, 0x258

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/facebook/orca/protocol/methods/DataStreamBody;

    const-string v2, "video/3gpp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/protocol/methods/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 169
    :pswitch_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/facebook/orca/protocol/methods/DataStreamBody;

    const-string v2, "audio/mpeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/protocol/methods/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachment$1;->a:[I

    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachment;->c:Lcom/facebook/orca/attachments/MediaResource;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Unexpected attachment type"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unexpected attachment type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_0
    const-string v0, "me/photos"

    .line 190
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "me/videos"

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v0, "orca:MediaAttachment"

    const-string v1, "Audio shares are not implemented"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Audio shares are not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
