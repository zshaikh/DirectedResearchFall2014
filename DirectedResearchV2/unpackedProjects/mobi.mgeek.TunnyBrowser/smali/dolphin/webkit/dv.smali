.class final Ldolphin/webkit/dv;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# static fields
.field private static a:Ldolphin/webkit/HTML5VideoViewProxy;

.field private static b:Ldolphin/webkit/dr;

.field private static c:Z

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Ldolphin/webkit/dv;->c:Z

    .line 123
    sput v0, Ldolphin/webkit/dv;->d:I

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v1, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Ldolphin/webkit/dr;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 166
    sget v0, Ldolphin/webkit/dv;->d:I

    invoke-static {v0}, Ldolphin/webkit/dv;->a(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 134
    sput p0, Ldolphin/webkit/dv;->d:I

    .line 135
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_1

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->q_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->o()I

    move-result v1

    .line 140
    invoke-static {v1}, Ldolphin/webkit/dq;->a(I)Ldolphin/webkit/JSurfaceTexture;

    move-result-object v2

    .line 142
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->i()I

    move-result v3

    .line 144
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 145
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->p()I

    move-result v0

    .line 146
    sget-object v4, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v4}, Ldolphin/webkit/dr;->q()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 148
    :cond_0
    invoke-virtual {v2}, Ldolphin/webkit/JSurfaceTexture;->a()I

    move-result v2

    invoke-static {v2, p0, v1, v3, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->a(IIIII)Z

    move-result v1

    .line 151
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 153
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v1, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Ldolphin/webkit/dr;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 154
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->r_()V

    .line 158
    :cond_1
    return-void
.end method

.method public static a(ILdolphin/webkit/HTML5VideoViewProxy;)V
    .locals 1

    .prologue
    .line 445
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0}, Ldolphin/webkit/dr;->seekTo(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V
    .locals 6

    .prologue
    .line 178
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getEnableVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->c(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static/range {p0 .. p5}, Ldolphin/webkit/dv;->b(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;IIZI)V
    .locals 6

    .prologue
    .line 291
    if-nez p4, :cond_0

    .line 292
    new-instance v0, Ldolphin/webkit/dk;

    invoke-direct {v0, p0, p1, p2, p3}, Ldolphin/webkit/dk;-><init>(Landroid/content/Context;IIZ)V

    sput-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {p4, p0}, Lcom/dolphin/player/au;->a(ILandroid/content/Context;)Lcom/dolphin/player/j;

    move-result-object v5

    .line 297
    new-instance v0, Ldolphin/webkit/dc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/dc;-><init>(Landroid/content/Context;IIZLcom/dolphin/player/j;)V

    sput-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    goto :goto_0
.end method

.method public static a(Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ldolphin/webkit/WebChromeClient;->onHideCustomView()V

    .line 310
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebChromeClient;II)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 335
    .line 337
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/WebView;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    .line 340
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p5, :cond_1

    .line 342
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    move v0, p4

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->a(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-eqz v0, :cond_2

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-nez v0, :cond_4

    .line 347
    :cond_2
    if-ne p5, v4, :cond_3

    .line 348
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    move v0, p4

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->b(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0

    .line 351
    :cond_3
    if-nez p5, :cond_4

    .line 352
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    move v0, p4

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->a(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0

    .line 358
    :cond_4
    const/4 v0, 0x0

    .line 359
    sget-object v1, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v1, :cond_6

    .line 360
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->o()I

    move-result v1

    .line 361
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->b()Z

    move-result v0

    .line 367
    sget-object v3, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v3}, Ldolphin/webkit/dr;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    if-eq v1, p4, :cond_7

    sget-object v3, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eq v3, p2, :cond_7

    .line 371
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getEnableVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    move v0, p4

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldolphin/webkit/dv;->c(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_0

    .line 376
    :cond_5
    sput-object p2, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 377
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, v4}, Ldolphin/webkit/dr;->c(Z)V

    .line 378
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0, p2}, Ldolphin/webkit/dr;->b(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 379
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p2}, Ldolphin/webkit/dr;->e(Ldolphin/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 388
    :cond_7
    if-nez v0, :cond_8

    if-ne v1, p4, :cond_8

    sget-object v3, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v3}, Ldolphin/webkit/dr;->q_()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 396
    :cond_8
    sget-object v3, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v3, :cond_a

    if-eq v1, p4, :cond_a

    .line 397
    if-nez v0, :cond_9

    .line 398
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v3, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v3}, Ldolphin/webkit/dr;->b(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 400
    :cond_9
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->j()V

    .line 402
    :cond_a
    sput-object p2, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-static {}, Lcom/dolphin/player/aj;->a()Lcom/dolphin/player/aj;

    move-result-object v3

    .line 409
    if-ne v1, p4, :cond_b

    invoke-virtual {v3}, Lcom/dolphin/player/aj;->i()I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 410
    :cond_b
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/dolphin/player/au;->a(ILandroid/content/Context;)Lcom/dolphin/player/j;

    move-result-object v0

    .line 412
    :cond_c
    invoke-virtual {v3, v0, p1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/j;I)V

    .line 414
    new-instance v0, Ldolphin/webkit/dq;

    invoke-direct {v0, p4, p1, v3}, Ldolphin/webkit/dq;-><init>(IILcom/dolphin/player/aj;)V

    sput-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    .line 416
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v1, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p0, v1}, Ldolphin/webkit/dr;->b(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 417
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p2}, Ldolphin/webkit/dr;->a(Ldolphin/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 418
    :cond_d
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-ne v0, p2, :cond_e

    .line 420
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->start()V

    goto/16 :goto_0

    .line 424
    :cond_e
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->b()V

    goto/16 :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 313
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    if-eqz p0, :cond_2

    .line 317
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->g()V

    goto :goto_0

    .line 320
    :cond_2
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->c()V

    goto :goto_0
.end method

.method public static a(Ldolphin/webkit/HTML5VideoViewProxy;)Z
    .locals 1

    .prologue
    .line 432
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    sput v0, Ldolphin/webkit/dv;->d:I

    .line 173
    return-void
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 325
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0}, Ldolphin/webkit/dr;->b(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public static b(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    .line 192
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_7

    .line 195
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "HTML5VideoViewProxy"

    const-string v1, "Try to reenter the full screen mode"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->p()I

    move-result v5

    .line 202
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->o()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 203
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->getCurrentPosition()I

    move-result v3

    .line 204
    if-eq v5, v1, :cond_1

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v4, v0

    .line 209
    :goto_2
    if-nez v4, :cond_3

    .line 210
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->j()V

    move v6, v2

    .line 217
    :goto_3
    invoke-virtual {p3}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/dolphin/player/au;->a(ILandroid/content/Context;)Lcom/dolphin/player/j;

    move-result-object v5

    .line 218
    new-instance v0, Ldolphin/webkit/dc;

    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/dc;-><init>(Landroid/content/Context;IIZLcom/dolphin/player/j;)V

    sput-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    .line 221
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, v6}, Ldolphin/webkit/dr;->c(Z)V

    .line 222
    sput-object p2, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 223
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v1, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/dr;->b(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 224
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0, p2, p3, p1}, Ldolphin/webkit/dr;->a(ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 204
    goto :goto_1

    .line 212
    :cond_3
    if-eq v5, v1, :cond_4

    if-ne v5, v6, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    move v6, v2

    goto :goto_3

    :cond_6
    move v4, v2

    move v3, p4

    goto :goto_2

    :cond_7
    move v6, v2

    move v4, v2

    move v3, p4

    goto :goto_3
.end method

.method public static b(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 1

    .prologue
    .line 451
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->pause()V

    .line 454
    :cond_0
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 113
    sput-boolean p0, Ldolphin/webkit/dv;->c:Z

    return p0
.end method

.method public static c()I
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    sget-object v1, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v1, :cond_0

    .line 439
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->getCurrentPosition()I

    move-result v0

    .line 441
    :cond_0
    return v0
.end method

.method public static c(ILjava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;II)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 231
    .line 234
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_a

    .line 237
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p1}, Ldolphin/webkit/dr;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "Media"

    const-string v1, "Try to enter the full screen mode again"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "Media"

    const-string v1, "Change video source under full screen mode"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sput-object p2, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 245
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->j()V

    .line 246
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p2, p0, p1, p4}, Ldolphin/webkit/dr;->a(Ldolphin/webkit/HTML5VideoViewProxy;ILjava/lang/String;I)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->p()I

    move-result v3

    .line 255
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->o()I

    move-result v0

    if-ne p0, v0, :cond_9

    .line 256
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->getCurrentPosition()I

    move-result p4

    .line 259
    if-eq v3, v2, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    if-ne v3, v4, :cond_4

    :cond_2
    move v0, v2

    .line 264
    :goto_1
    if-nez v0, :cond_5

    .line 265
    sget-object v2, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v2}, Ldolphin/webkit/dr;->j()V

    .line 281
    :cond_3
    :goto_2
    invoke-virtual {p2}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0, p4, v0, p5}, Ldolphin/webkit/dv;->a(Landroid/content/Context;IIZI)V

    .line 283
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, v1}, Ldolphin/webkit/dr;->c(Z)V

    .line 284
    sput-object p2, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 285
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    sget-object v1, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/dr;->b(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 286
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0, p2, p3, p1}, Ldolphin/webkit/dr;->a(ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 259
    goto :goto_1

    .line 267
    :cond_5
    if-eq v3, v2, :cond_6

    if-ne v3, v4, :cond_3

    :cond_6
    move v1, v2

    goto :goto_2

    .line 274
    :cond_7
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->o()I

    move-result v0

    if-ne p0, v0, :cond_8

    .line 275
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->p_()I

    move-result p4

    :cond_8
    move v0, v1

    move v1, v2

    .line 277
    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Z)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0}, Ldolphin/webkit/dv;->d(Z)V

    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 457
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->start()V

    .line 460
    :cond_0
    sget v0, Ldolphin/webkit/dv;->d:I

    if-eqz v0, :cond_1

    .line 461
    sget v0, Ldolphin/webkit/dv;->d:I

    invoke-static {v0}, Ldolphin/webkit/dv;->a(I)V

    .line 463
    :cond_1
    return-void
.end method

.method private static d(Z)V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0, p0}, Ldolphin/webkit/dr;->b(Z)V

    .line 127
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 466
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    invoke-virtual {v0}, Ldolphin/webkit/dr;->d()V

    .line 469
    :cond_0
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 470
    sget-boolean v0, Ldolphin/webkit/dv;->c:Z

    if-eqz v0, :cond_2

    .line 471
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->b()V

    .line 475
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/webkit/dv;->c:Z

    .line 476
    return-void

    .line 473
    :cond_2
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->c()V

    goto :goto_0
.end method

.method static synthetic f()Ldolphin/webkit/HTML5VideoViewProxy;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Ldolphin/webkit/dv;->a:Ldolphin/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic g()Ldolphin/webkit/dr;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Ldolphin/webkit/dv;->b:Ldolphin/webkit/dr;

    return-object v0
.end method
