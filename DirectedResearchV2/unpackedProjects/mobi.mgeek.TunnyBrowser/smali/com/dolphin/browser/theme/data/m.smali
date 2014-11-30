.class public Lcom/dolphin/browser/theme/data/m;
.super Lcom/dolphin/browser/theme/data/a;
.source "Font.java"


# static fields
.field private static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/data/m;->p:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/a;-><init>()V

    .line 26
    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/m;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/m;->a(Ljava/lang/String;)I

    move-result v2

    .line 115
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v1, "fontpath"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/m;->a(Ljava/lang/String;)I

    move-result v5

    .line 119
    new-instance v1, Lcom/dolphin/browser/theme/data/m;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/m;-><init>()V

    .line 121
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 122
    invoke-static {v4}, Lcom/dolphin/browser/theme/data/m;->d(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v1, v6}, Lcom/dolphin/browser/theme/data/m;->a(Landroid/graphics/Typeface;)V

    .line 129
    :cond_2
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/theme/data/m;->c(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/m;->a(I)V

    .line 131
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/theme/data/m;->b(Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/m;->a(Z)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/theme/data/m;->a(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v1, v5}, Lcom/dolphin/browser/theme/data/m;->b(I)V

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/theme/data/m;->c:Ljava/lang/String;

    .line 138
    const-string v2, "icon_v10"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dolphin/browser/theme/data/m;->d:Ljava/lang/String;

    .line 142
    :cond_3
    iput-object p1, v1, Lcom/dolphin/browser/theme/data/m;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    .line 144
    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-object v0

    .line 158
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/dolphin/browser/theme/data/m;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    sget-object v1, Lcom/dolphin/browser/theme/data/m;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    sget-object v0, Lcom/dolphin/browser/theme/data/m;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "Font"

    const-string v2, "create typeface from file failed!"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/m;->n()I

    move-result v0

    .line 172
    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 174
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 175
    return-object p1
.end method

.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/dolphin/browser/theme/data/m;->a:I

    .line 76
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/m;->o:Ljava/lang/ref/SoftReference;

    .line 64
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/m;->e:Ljava/lang/ref/SoftReference;

    .line 72
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/dolphin/browser/theme/data/m;->n:I

    .line 101
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/m;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/m;->m:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->k()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->l()I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/dolphin/browser/theme/data/m;->n:I

    return v0
.end method
