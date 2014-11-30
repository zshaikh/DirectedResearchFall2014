.class public Lcom/dolphin/browser/extensions/bd;
.super Lcom/dolphin/browser/extensions/a;
.source "RemoteAddon.java"


# static fields
.field private static final j:I


# instance fields
.field private A:[Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Landroid/content/ServiceConnection;

.field private k:Lcom/dolphin/browser/addons/l;

.field private l:Lcom/dolphin/browser/addons/ay;

.field private m:Lcom/dolphin/browser/addons/av;

.field private n:Lcom/dolphin/browser/addons/r;

.field private o:Lcom/dolphin/browser/addons/aj;

.field private p:Lcom/dolphin/browser/addons/x;

.field private q:Lcom/dolphin/browser/addons/o;

.field private r:Lcom/dolphin/browser/extensions/n;

.field private s:Landroid/content/pm/ServiceInfo;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

.field private y:Landroid/graphics/Bitmap;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/extensions/bd;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/ServiceInfo;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v1}, Lcom/dolphin/browser/extensions/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)V

    .line 628
    new-instance v0, Lcom/dolphin/browser/extensions/be;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/extensions/be;-><init>(Lcom/dolphin/browser/extensions/bd;)V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->C:Landroid/content/ServiceConnection;

    .line 107
    iput-object p3, p0, Lcom/dolphin/browser/extensions/bd;->s:Landroid/content/pm/ServiceInfo;

    .line 108
    iput v1, p0, Lcom/dolphin/browser/extensions/bd;->t:I

    .line 109
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/dolphin/browser/extensions/bd;->v:I

    .line 110
    iput v1, p0, Lcom/dolphin/browser/extensions/bd;->w:I

    .line 111
    iput p4, p0, Lcom/dolphin/browser/extensions/bd;->u:I

    .line 112
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->A:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/l;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->k:Lcom/dolphin/browser/addons/l;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->x:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->B:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/dolphin/browser/addons/aj;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->o:Lcom/dolphin/browser/addons/aj;

    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/ITitleBarExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.TITLE_BAR_ACTION"

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/extensions/al;->b(Lcom/dolphin/browser/extensions/bd;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/bd;->z:Z

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->y:Landroid/graphics/Bitmap;

    .line 230
    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->x:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/bd;->z:Z

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/addons/av;)V
    .locals 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->m:Lcom/dolphin/browser/addons/av;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IWebViewExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IWebViewExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/addons/ay;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->l:Lcom/dolphin/browser/addons/ay;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/addons/l;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->k:Lcom/dolphin/browser/addons/l;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    const-string v1, "IAddonBarExtention"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    const-string v1, "IAddonBarExtention"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/addons/o;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    .line 238
    if-nez p1, :cond_1

    .line 239
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/dolphin/browser/extensions/bd;->w:I

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/l;)V

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/ay;)V

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/av;)V

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/r;)V

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/aj;)V

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/x;)V

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/o;->h()V

    .line 262
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 268
    return-void

    .line 250
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->a()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/extensions/bd;->w:I

    .line 251
    invoke-static {}, Lcom/dolphin/browser/util/at;->a()Lcom/dolphin/browser/addons/bf;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/bf;)V

    .line 252
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->w()Lcom/dolphin/browser/addons/bc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/bc;)V

    .line 253
    invoke-static {}, Lcom/dolphin/browser/addons/f;->a()Lcom/dolphin/browser/addons/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/c;)V

    .line 254
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->b()Lcom/dolphin/browser/addons/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/l;)V

    .line 255
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->c()Lcom/dolphin/browser/addons/ay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/ay;)V

    .line 256
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->d()Lcom/dolphin/browser/addons/av;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/av;)V

    .line 257
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->e()Lcom/dolphin/browser/addons/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/r;)V

    .line 258
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->f()Lcom/dolphin/browser/addons/aj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/aj;)V

    .line 259
    invoke-interface {p1}, Lcom/dolphin/browser/addons/o;->g()Lcom/dolphin/browser/addons/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/x;)V

    .line 260
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getRemoteAddonSDKVersion()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/dolphin/browser/addons/o;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 265
    iput-object v2, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/addons/r;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->n:Lcom/dolphin/browser/addons/r;

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->n:Lcom/dolphin/browser/addons/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->p:Lcom/dolphin/browser/addons/x;

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/addons/x;)V
    .locals 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bd;->p:Lcom/dolphin/browser/addons/x;

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->n:Lcom/dolphin/browser/addons/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->p:Lcom/dolphin/browser/addons/x;

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    sget-object v1, Lcom/dolphin/browser/extensions/IBrowserExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/addons/o;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/o;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/bd;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/bd;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/ay;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->l:Lcom/dolphin/browser/addons/ay;

    return-object v0
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bd;->x()V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bd;->y()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/av;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->m:Lcom/dolphin/browser/addons/av;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/x;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->p:Lcom/dolphin/browser/addons/x;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/r;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->n:Lcom/dolphin/browser/addons/r;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/aj;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->o:Lcom/dolphin/browser/addons/aj;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/extensions/bd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/extensions/bd;)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bd;->z()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/dolphin/browser/extensions/bd;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->y:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic j(Lcom/dolphin/browser/extensions/bd;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/dolphin/browser/extensions/bd;->t:I

    return v0
.end method

.method static synthetic k(Lcom/dolphin/browser/extensions/bd;)I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/dolphin/browser/extensions/bd;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/extensions/bd;->t:I

    return v0
.end method

.method static synthetic l(Lcom/dolphin/browser/extensions/bd;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/extensions/bd;->x()V

    return-void
.end method

.method static synthetic w()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/dolphin/browser/extensions/bd;->j:I

    return v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolphin.browser.action.addonservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->s:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/bd;->s:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/extensions/bd;->C:Landroid/content/ServiceConnection;

    const/16 v3, 0x41

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 611
    :cond_1
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->q:Lcom/dolphin/browser/addons/o;

    .line 615
    if-eqz v0, :cond_0

    .line 617
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/bc;)V

    .line 618
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/bf;)V

    .line 619
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/o;->a(Lcom/dolphin/browser/addons/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->C:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 624
    invoke-direct {p0, v2}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/addons/o;)V

    .line 626
    :cond_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private z()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 661
    iget-boolean v1, p0, Lcom/dolphin/browser/extensions/bd;->z:Z

    if-eqz v1, :cond_0

    .line 662
    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/bd;->z:Z

    .line 663
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->o:Lcom/dolphin/browser/addons/aj;

    .line 665
    :try_start_0
    invoke-interface {v0}, Lcom/dolphin/browser/addons/aj;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->y:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    const/4 v0, 0x1

    .line 671
    :cond_0
    return v0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/dolphin/browser/extensions/ExtensionInfo;)Lcom/dolphin/browser/extensions/c;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/n;Z)V

    .line 118
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->A:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/e;->b([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 168
    sget-object v0, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    iput-object v0, p0, Lcom/dolphin/browser/extensions/bd;->b:Lcom/dolphin/browser/extensions/c;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 171
    sget-object v1, Lcom/dolphin/browser/extensions/IBaseExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/dolphin/browser/extensions/n;

    new-instance v2, Lcom/dolphin/browser/extensions/bf;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dolphin/browser/extensions/bf;-><init>(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/extensions/be;)V

    invoke-direct {v1, v2, p0, v0}, Lcom/dolphin/browser/extensions/n;-><init>(Ljava/lang/Object;Lcom/dolphin/browser/extensions/a;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    iget-object v1, p0, Lcom/dolphin/browser/extensions/bd;->b:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/n;->a(Lcom/dolphin/browser/extensions/c;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->e:Ljava/util/HashMap;

    const-class v1, Lcom/dolphin/browser/extensions/bf;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/extensions/bd;->r:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/dolphin/browser/extensions/bd;->v:I

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/dolphin/browser/extensions/bd;->w:I

    return v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->x:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->o:Lcom/dolphin/browser/addons/aj;

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/extensions/bd;->z:Z

    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bd;->x:Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    invoke-interface {v0}, Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;->requestUpdateTitleBar()V

    .line 658
    :cond_0
    return-void
.end method

.method public v()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/dolphin/browser/extensions/bd;->u:I

    return v0
.end method
