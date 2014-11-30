.class public Ldolphin/webkit/fh;
.super Ljava/lang/Object;
.source "PNRReporter.java"


# static fields
.field private static c:Ldolphin/webkit/fh;


# instance fields
.field a:Ljava/io/File;

.field private final b:Landroid/content/Context;

.field private d:Ldolphin/webkit/fb;

.field private e:Ldolphin/webkit/fd;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    .line 39
    new-instance v0, Ldolphin/webkit/fb;

    iget-object v1, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldolphin/webkit/fb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    .line 40
    new-instance v0, Ldolphin/webkit/fd;

    iget-object v1, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldolphin/webkit/fd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/fh;->e:Ldolphin/webkit/fd;

    .line 41
    return-void
.end method

.method public static declared-synchronized a()Ldolphin/webkit/fh;
    .locals 2

    .prologue
    .line 56
    const-class v0, Ldolphin/webkit/fh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldolphin/webkit/fh;->c:Ldolphin/webkit/fh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldolphin/webkit/fh;
    .locals 2

    .prologue
    .line 48
    const-class v1, Ldolphin/webkit/fh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/fh;->c:Ldolphin/webkit/fh;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ldolphin/webkit/fh;

    invoke-direct {v0, p0}, Ldolphin/webkit/fh;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/fh;->c:Ldolphin/webkit/fh;

    .line 51
    :cond_0
    sget-object v0, Ldolphin/webkit/fh;->c:Ldolphin/webkit/fh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/fh;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ldolphin/webkit/fh;->h()V

    return-void
.end method

.method private static a(Landroid/app/Dialog;)Z
    .locals 2

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/fh;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ldolphin/webkit/fh;->g()V

    return-void
.end method

.method static synthetic c(Ldolphin/webkit/fh;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesContext()Landroid/content/Context;

    move-result-object v5

    .line 109
    iget-object v0, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    .line 111
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    const-string v4, "Unkown"

    .line 114
    const-string v3, "0"

    .line 116
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 117
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 118
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 119
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    :goto_1
    const-string v5, "pnr_error"

    if-eqz v0, :cond_1

    const-string v0, "jetpack_pnr"

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "||"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3, v1, v2}, Ldolphin/util/Tracker;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 131
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "dolphin_engine_pnr"

    goto :goto_2

    .line 120
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static d()V
    .locals 7

    .prologue
    .line 145
    const-string v0, "PNRReporter"

    const-string v1, ">>> dump java call stack on all threads <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 149
    const-string v1, "PNRReporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 151
    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 152
    const-string v4, "PNRReporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 8

    .prologue
    .line 158
    invoke-static {}, Ldolphin/webkit/WebViewCore;->getWebCoreHandler()Ldolphin/util/j;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/util/j;->getLooper()Ldolphin/util/l;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/util/l;->d()Ljava/lang/Thread;

    move-result-object v2

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    .line 161
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 163
    if-ne v0, v2, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 167
    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 181
    invoke-static {}, Ldolphin/webkit/fh;->d()V

    .line 184
    invoke-static {}, Ldolphin/webkit/fh;->e()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Ldolphin/webkit/fh;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/fh;->a:Ljava/io/File;

    .line 189
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Ldolphin/webkit/fh;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/fh;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const-string v0, "PNRReporter"

    const-string v1, "Can\'t find report file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    sget v1, Ldolphin/webkit/R$string;->pnr_toast_start_send:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v0, p0, Ldolphin/webkit/fh;->a:Ljava/io/File;

    new-instance v1, Ldolphin/webkit/fl;

    invoke-direct {v1, p0}, Ldolphin/webkit/fl;-><init>(Ldolphin/webkit/fh;)V

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/fh;->a(Ljava/io/File;Ldolphin/webkit/fg;)V

    goto :goto_0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 265
    invoke-virtual {p0}, Ldolphin/webkit/fh;->b()V

    .line 266
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    invoke-virtual {v0, p1}, Ldolphin/webkit/fb;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldolphin/webkit/WebView$WaitPolicyListener;)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldolphin/webkit/fh;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldolphin/webkit/R$string;->pnr_dialog_title:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->pnr_dialog_message:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->pnr_dialog_wait:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/fk;

    invoke-direct {v2, p0, p1}, Ldolphin/webkit/fk;-><init>(Ldolphin/webkit/fh;Ldolphin/webkit/WebView$WaitPolicyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->pnr_dialog_report:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/fj;

    invoke-direct {v2, p0, p1}, Ldolphin/webkit/fj;-><init>(Ldolphin/webkit/fh;Ldolphin/webkit/WebView$WaitPolicyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldolphin/webkit/fi;

    invoke-direct {v1, p0, p1}, Ldolphin/webkit/fi;-><init>(Ldolphin/webkit/fh;Ldolphin/webkit/WebView$WaitPolicyListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 92
    invoke-static {v0}, Ldolphin/webkit/fh;->a(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Ldolphin/webkit/fh;->h()V

    .line 94
    invoke-interface {p1}, Ldolphin/webkit/WebView$WaitPolicyListener;->onContinueWait()V

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/fh;->c()V

    .line 102
    invoke-direct {p0}, Ldolphin/webkit/fh;->c()V

    .line 104
    invoke-direct {p0}, Ldolphin/webkit/fh;->f()V

    goto :goto_0
.end method

.method public a(Ljava/io/File;Ldolphin/webkit/fg;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ldolphin/webkit/fh;->e:Ldolphin/webkit/fd;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/fd;->a(Ljava/io/File;Ldolphin/webkit/fg;)V

    .line 292
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    const-string v4, "PNRReporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash and log dir not equal. crash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", log: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v3, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    invoke-virtual {v3, v1}, Ldolphin/webkit/fb;->a(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    invoke-virtual {v1, v0}, Ldolphin/webkit/fb;->b(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    invoke-virtual {v0, v2}, Ldolphin/webkit/fb;->c(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Ldolphin/webkit/fh;->d:Ldolphin/webkit/fb;

    invoke-virtual {v0}, Ldolphin/webkit/fb;->b()V

    .line 296
    return-void
.end method
