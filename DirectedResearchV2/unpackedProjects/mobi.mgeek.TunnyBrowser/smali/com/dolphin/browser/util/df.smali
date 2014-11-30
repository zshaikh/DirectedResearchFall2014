.class public Lcom/dolphin/browser/util/df;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dolphin/browser/util/df;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dolphin/browser/util/df;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/util/dh",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/dolphin/browser/util/df;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/dolphin/browser/util/dh;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 253
    if-nez p0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 261
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 262
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V
    .locals 2

    .prologue
    .line 222
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "UIUtil"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 2

    .prologue
    .line 230
    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "UIUtil"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public static a(Landroid/app/Dialog;)Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/DialogInterface;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 181
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :catch_2
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/widget/Toast;)Z
    .locals 1

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 272
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 276
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dolphin/browser/util/dh",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v1, Lcom/dolphin/browser/util/di;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/di;-><init>(Lcom/dolphin/browser/util/dg;)V

    .line 126
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/util/dg;

    invoke-direct {v2, v1, p0}, Lcom/dolphin/browser/util/dg;-><init>(Lcom/dolphin/browser/util/di;Lcom/dolphin/browser/util/dh;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    monitor-enter v1

    .line 141
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/dolphin/browser/util/di;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 143
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0

    .line 147
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/dolphin/browser/util/di;->a:Ljava/lang/Object;

    monitor-exit v1

    .line 150
    :goto_1
    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 150
    :cond_1
    invoke-interface {p0}, Lcom/dolphin/browser/util/dh;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static b()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/dolphin/browser/util/dj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/dj;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    invoke-virtual {v0}, Lcom/dolphin/browser/util/dj;->a()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/util/df;->b()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
