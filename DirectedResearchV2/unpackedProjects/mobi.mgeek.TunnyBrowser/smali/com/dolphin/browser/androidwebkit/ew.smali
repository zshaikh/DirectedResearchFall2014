.class Lcom/dolphin/browser/androidwebkit/ew;
.super Ljava/lang/Object;
.source "WebViewV6.java"

# interfaces
.implements Lcom/dolphin/browser/core/s;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/WebViewV6;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/androidwebkit/WebViewV6;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 121
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->d(Z)Z

    .line 124
    const-string v0, "MyWebView"

    const-string v1, "Initializing ScaleDetectorListener..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    .line 130
    const-string v1, "mMinZoomScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 131
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->J()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    const-string v1, "mLastTouchTime"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->b(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 133
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->K()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    const-string v1, "mLastTouchX"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->c(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 135
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->L()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    const-string v1, "mLastTouchY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->d(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 137
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->M()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    const-string v1, "mZoomCenterX"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->e(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 139
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->N()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    const-string v1, "mZoomCenterY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->f(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 141
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->O()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    const-string v1, "mPreviewZoomOnly"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->g(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 143
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->P()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 144
    const-string v1, "mInZoomOverview"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->h(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 145
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->Q()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    const-string v1, "setNewZoomScale"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 149
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->R()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "MyWebView"

    const-string v2, "Exception occurs on initialize ScaleDetectorListener"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->N()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(FZZ)V
    .locals 5

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->R()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->Q()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->P()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()F
    .locals 2

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->J()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    const/high16 v0, 0x3e800000

    goto :goto_0
.end method

.method private b(F)V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->O()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->P()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/q;)Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->a(Lcom/dolphin/browser/androidwebkit/WebViewV6;)V

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->q()V

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/ew;->a(Z)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/dolphin/browser/core/q;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/ew;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/ew;->b(Z)V

    .line 244
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->getScale()F

    move-result v2

    .line 245
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/ew;->b()F

    move-result v3

    .line 248
    sub-float v3, v2, v3

    const v4, 0x3c23d70a

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    float-to-double v3, v2

    const-wide v5, 0x3fe999999999999aL

    sget-wide v7, Lcom/dolphin/browser/androidwebkit/WebViewV6;->d:D

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    :cond_0
    move v0, v1

    .line 253
    :cond_1
    invoke-direct {p0, v2, v0, v1}, Lcom/dolphin/browser/androidwebkit/ew;->a(FZZ)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->invalidate()V

    .line 264
    :cond_2
    return-void
.end method

.method public c(Lcom/dolphin/browser/core/q;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->getScale()F

    move-result v0

    .line 268
    invoke-virtual {p1}, Lcom/dolphin/browser/core/q;->g()F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L

    div-double/2addr v3, v5

    double-to-float v3, v3

    .line 269
    sub-float v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->S()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 270
    invoke-direct {p0, v1}, Lcom/dolphin/browser/androidwebkit/ew;->b(Z)V

    .line 272
    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    .line 273
    const/high16 v4, 0x3fa00000

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 277
    :goto_0
    invoke-virtual {p1}, Lcom/dolphin/browser/core/q;->c()F

    move-result v3

    .line 278
    invoke-direct {p0, v3}, Lcom/dolphin/browser/androidwebkit/ew;->a(F)V

    .line 279
    invoke-virtual {p1}, Lcom/dolphin/browser/core/q;->d()F

    move-result v3

    .line 280
    invoke-direct {p0, v3}, Lcom/dolphin/browser/androidwebkit/ew;->b(F)V

    .line 281
    invoke-direct {p0, v0, v2, v2}, Lcom/dolphin/browser/androidwebkit/ew;->a(FZZ)V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/ew;->a:Lcom/dolphin/browser/androidwebkit/WebViewV6;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/WebViewV6;->invalidate()V

    move v0, v1

    .line 285
    :goto_1
    return v0

    .line 275
    :cond_0
    const v4, 0x3f4ccccd

    mul-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 285
    goto :goto_1
.end method
