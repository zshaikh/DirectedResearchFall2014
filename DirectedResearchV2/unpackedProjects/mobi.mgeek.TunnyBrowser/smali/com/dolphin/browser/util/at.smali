.class public Lcom/dolphin/browser/util/at;
.super Ljava/lang/Object;
.source "DolphinUIUtil.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/OrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/dolphin/browser/addons/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/dolphin/browser/util/av;

    invoke-direct {v0}, Lcom/dolphin/browser/util/av;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/at;->b:Lcom/dolphin/browser/addons/bf;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 308
    .line 310
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->b(Lcom/dolphin/browser/Network/n;)V

    .line 317
    iget-object v1, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 318
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 322
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 324
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 320
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 319
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    const-string v1, "drawable"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/addons/bf;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/dolphin/browser/util/at;->b:Lcom/dolphin/browser/addons/bf;

    return-object v0
.end method

.method public static a(I)V
    .locals 4

    .prologue
    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    sget-object v2, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 141
    if-lez v1, :cond_1

    .line 142
    new-array v0, v1, [Lcom/dolphin/browser/ui/OrientationChangedListener;

    .line 143
    sget-object v1, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v1, v0

    .line 145
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v1, :cond_0

    .line 147
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 148
    invoke-interface {v3, p0}, Lcom/dolphin/browser/ui/OrientationChangedListener;->onOrientationChanged(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 151
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 279
    if-nez p0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 283
    check-cast v0, Landroid/view/ViewGroup;

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 285
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_2
    instance-of v0, p0, Lcom/dolphin/browser/ui/aa;

    if-eqz v0, :cond_0

    .line 290
    check-cast p0, Lcom/dolphin/browser/ui/aa;

    invoke-interface {p0}, Lcom/dolphin/browser/ui/aa;->updateTheme()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 98
    instance-of v0, p0, Lcom/dolphin/browser/ui/OrientationChangedListener;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 99
    check-cast v0, Lcom/dolphin/browser/ui/OrientationChangedListener;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/OrientationChangedListener;->onOrientationChanged(I)V

    .line 101
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 102
    check-cast p0, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 104
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 106
    invoke-static {v2, p1}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/View;[I)V
    .locals 5

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    .line 299
    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    aput v0, p2, v2

    .line 300
    const/4 v0, 0x1

    aget v2, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 301
    return-void
.end method

.method public static a(Lcom/dolphin/browser/ui/OrientationChangedListener;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v1, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/dolphin/browser/util/at;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 234
    if-nez p1, :cond_0

    move v0, v6

    .line 251
    :goto_0
    return v0

    .line 239
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x10000000

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "Cannot send pending intent: "

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 245
    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    const-string v1, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 249
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/dolphin/browser/util/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/util/at;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/util/au;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/util/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 261
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    const-string v2, "Cannot send message"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/util/at;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 76
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/4 v3, -0x3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v3, p3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 83
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v2, "DolphinUIUtil"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    const-string v2, "DolphinUIUtil"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string v2, "DolphinUIUtil"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 93
    goto :goto_0
.end method
