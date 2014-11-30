.class public Lcom/dolphin/browser/launcher/cl;
.super Lcom/dolphin/browser/launcher/bi;
.source "ShortcutInfo.java"


# static fields
.field private static v:Landroid/graphics/Bitmap;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/Object;

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/cm;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/graphics/Bitmap;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/bi;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    .line 59
    iput v1, p0, Lcom/dolphin/browser/launcher/cl;->e:I

    .line 60
    iput v1, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 61
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/bi;-><init>(J)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    .line 79
    iput v1, p0, Lcom/dolphin/browser/launcher/cl;->e:I

    .line 80
    iput v1, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 81
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/launcher/cl;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bi;-><init>(Lcom/dolphin/browser/launcher/bi;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/dolphin/browser/launcher/cl;->c:I

    iput v0, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 70
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    .line 72
    iget-boolean v0, p1, Lcom/dolphin/browser/launcher/cl;->u:Z

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    .line 73
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->q:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/dolphin/browser/launcher/cl;->r:Ljava/lang/Object;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->r:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;
    .locals 2

    .prologue
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    new-instance v0, Lcom/dolphin/browser/launcher/cl;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/cl;-><init>()V

    .line 232
    iput-object p0, v0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    .line 233
    iput-object p1, v0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    .line 234
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/dolphin/browser/launcher/cl;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq p2, v1, :cond_0

    .line 235
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 236
    const/4 v1, 0x1

    iput v1, v0, Lcom/dolphin/browser/launcher/cl;->c:I

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 258
    if-eqz p1, :cond_0

    sget-object v0, Lcom/dolphin/browser/launcher/cl;->v:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 259
    invoke-static {p1}, Lcom/dolphin/browser/launcher/cl;->c(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 260
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v1, "icon"

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method static b(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 113
    sput-object p0, Lcom/dolphin/browser/launcher/cl;->v:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 245
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 247
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 248
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 250
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string v0, "Favorite"

    const-string v1, "Could not write icon"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dolphin/browser/launcher/cl;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/dolphin/browser/launcher/cl;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput p1, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 268
    iput-object p2, p0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    .line 269
    return-void
.end method

.method a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/bi;->a(Landroid/content/ContentValues;)V

    .line 173
    const-string v0, "title"

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "url"

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 180
    :cond_0
    const-string v0, "iconType"

    iget v1, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    .line 87
    invoke-static {}, Lcom/dolphin/browser/launcher/cl;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cm;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/cm;->a(Landroid/graphics/Bitmap;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/cm;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cl;->r:Ljava/lang/Object;

    .line 205
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cm;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/cm;->d(Ljava/lang/Object;)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cm;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/cm;->a(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bi;->b()V

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    return-void
.end method

.method b(Lcom/dolphin/browser/launcher/cm;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    .line 167
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/cl;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->t:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    if-eq v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cl;->q:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/cl;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/launcher/cl;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/cl;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/cl;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/cl;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/dolphin/browser/launcher/cl;->c:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    return-object v0
.end method
